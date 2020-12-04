<?php


class Pollution
{
    private int $id;
    private int $niveauPollution;
    private string $description;

    function __contruct(int $id,int $niveauPollution,string $description){
        $this->id = $id;
        $this->niveauPollution = $niveauPollution;
        $this->description = $description;
    }
}