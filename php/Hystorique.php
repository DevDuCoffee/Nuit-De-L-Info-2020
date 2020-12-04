<?php


class Hystorique
{
    private int $id;
    private Utilisateur $utilisateur;
    private Spot $spot;
    private Pointage $pointage;

    public function __construct(int $id, Utilisateur $utilisateur, Spot $spot, Pointage $pointage)
    {
        $this->id=$id;
        $this->utilisateur=$utilisateur;
        $this->spot=$spot;
        $this->pointage=$pointage;
    }
}