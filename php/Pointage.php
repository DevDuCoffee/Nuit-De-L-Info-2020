<?php


class Pointage
{
    private int $id;
    private int $nbBaigneur;
    private int $nbPratiquant;
    private int $bateauPeche;
    private int $bateauLoisir;
    private int $bateauVoile;
    private Produits $produit;
    private int $niveauDechet;


    public function __construct(int $id,int $nbBaigneur,int $nbPratiquant,int $bateauPeche, int $bateauLoisir,int $bateauVoile, Produits $produit,int $niveauDechet)
    {
        $this->id=$id;
        $this->nbBaigneur=$nbBaigneur;
        $this->nbPratiquant=$nbPratiquant;
        $this->bateauPeche=$bateauPeche;
        $this->bateauLoisir=$bateauLoisir;
        $this->bateauVoile=$bateauVoile;
        $this->produit=$produit;
        $this->niveauDechet=$niveauDechet;
    }
}