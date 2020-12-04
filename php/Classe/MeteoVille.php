<?php


class MeteoVille
{
    private int $id;
    private int $temperature;
    private int $vent;


    public function __construct(int $id,int $temperature,int $vent)
    {
        $this->id=$id;
        $this->temperature=$temperature;
        $this->vent=$vent;
    }
}