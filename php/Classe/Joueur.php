<?php


class Joueur
{
    private int $id;
    private bool $estVivant;
    private bool $estImposteur;


    public function __construct(int $id,bool $estVivant,bool $estImposteur)
    {
        $this->id=$id;
        $this->estVivant=$estVivant;
        $this->estImposteur=$estImposteur;
    }
}