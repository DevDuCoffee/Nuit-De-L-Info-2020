<?php


class Spot
{
    private int $id;
    private string $nom;
    private Ville $ville;
    private MeteoSpot $meteo;
    private Pollution $pollution;

    function __contruct(int $id,string $nom,Ville $ville,Pollution $pollution,MeteoSpot $meteo){
        $this->id = $id;
        $this->nom = $nom;
        $this->ville = $ville;
        $this->pollution = $pollution;
        $this->meteo = $meteo;
    }
}