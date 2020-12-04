<?php


class Spot
{
    private int $id;
    private string $nom;
    private Ville $ville;
    private MeteoSpot $meteo;
    private Pollution $pollution;
}