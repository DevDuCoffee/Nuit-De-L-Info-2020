<?php
    include Classe.Utilisateur::class;

    $unUtilisateur = new Utilisateur(NULL, $_POST['nom'], $_POST['prenom'],$_POST['login'], $_POST['mail'], $_POST['password']);

    print("Votre inscription a bien été effectuée");
