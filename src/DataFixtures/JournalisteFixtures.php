<?php

namespace App\DataFixtures;

use App\Entity\Journaliste;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class JournalisteFixtures extends Fixture
{
    private $encoder;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {

        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {
        $journaliste= new Journaliste();
        $journaliste->setEmail('toto@toto.fr');
        $journaliste->setRoles(['ROLE_USER']);

        $password = $this->encoder->encodePassword($journaliste, 'admin123@');
        $journaliste->setPassword($password);

        $journaliste->setRedefinePassword(true);
        $manager->persist($journaliste);

        $manager->flush();
    }
}
