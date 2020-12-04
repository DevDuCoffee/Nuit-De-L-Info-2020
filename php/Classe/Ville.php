<?php


class Ville
{
    private int $id;
    private string $nom;
    private string $codePostal;
    private int $temperature;
    private MeteoVille $meteo;

    function __construct(int $id,string $nom,string $codePostal,string $temperature,MeteoVille $meteo){
        $this->id = $id;
        $this->nom = $nom;
        $this->codePostal = $codePostal;
        $this->temperature = $temperature;
        $this->meteo = $meteo;
    }
}