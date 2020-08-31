<?php

namespace App\Controller;

use App\Entity\Article;
use App\Form\ArticleType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class ArticleController extends AbstractController
{
    /**
     * @Route("/article", name="article")
     * @Route("article-pagination/{page}", name="page")
     */

    public function index($page=1)
    {
        $nbrElement = 2;
        $articles = $this->getDoctrine()->getRepository(Article::class);
        $articleNbrTotal = $this->getDoctrine()->getRepository(Article::class)->count([]);

        $nbpage = $articleNbrTotal / $nbrElement;
        $nbPages = ceil($nbpage);

        $resultPaginate = $articles->findPage($nbrElement,$page);


        return $this->render('article/index.html.twig', [
            'nbrArticles' => $articleNbrTotal,
            'result' => $resultPaginate,
            'nbrPages' => $nbPages
        ]);

    }

    /**
     * @Route("article/add", name="ajout")
     */
    public function add(Request $request, SluggerInterface $slugger)
    {

        $form = $this->createForm(ArticleType::class, new Article());
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            /** @var UploadedFile $image */
            $image = $form->get('photo')->getData();
            $newArticle = $form->getData();


            if ($image) {

                $originalFilename = pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename . '-' . uniqid() . '.' . $image->guessExtension();

                try {
                    $image->move(
                       'upload/article',
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                // updates the 'brochureFilename' property to store the PDF file name
                // instead of its contents
                $newArticle->setPhoto($newFilename);
            }
            $em = $this->getDoctrine()->getManager();
            $em->persist($newArticle);
            $em->flush();
            return $this->redirectToRoute('article');
        } else {
            return $this->render('article/addArticle.html.twig', [
                'form' => $form->createView(),
                'errors' => $form->getErrors()
            ]);
        }

    }

    /**
     * @Route("/article/{oneArticle}", name="detail")
     */
    public function getOne(Article $oneArticle)
    {
        return $this->render('article/detailArticle.html.twig', [
            'oneArticle' => $oneArticle
        ]);
    }

    /**
     * @Route("/article/update/{article}", name="update")
     */
   /* public function updateArticle(Article $article, Request $request, EntityManagerInterface $entityManager)
    {
        $form = $this->createForm(Article::class, $article);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()){
            $entityManager->flush();
            return $this->redirectToRoute('detail', ['oneArticle' => $article->getId()]);
        } else {
            return $this->render('article/updateArticle.html.twig', [
                'form' => $form->createView(),
                'errors'=>$form->getErrors(),
                'article'=>$article
            ]);
        }
    }*/

    /**
     * @Route("/article/delete/{id}", name="article_delete")
     */
    public function delete(Article $deleteArticle)
    {
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->remove($deleteArticle);
        $entityManager->flush();

        return $this->redirectToRoute('article');
    }

}
