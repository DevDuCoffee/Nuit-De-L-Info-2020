<?php
include Classe.Utilisateur::class;

$utilisateur = new Utilisateur(NULL, NULL, NULL,$_POST['login'], NULL, $_POST['password']);
