<?php


class MeteoSpot
{
    private int $id;
    private int $houle;
    private int $maree;
    private int $vent;

    public function __construct(int $id,int $houle,int $maree,int $vent)
    {
        $this->id=$id;
        $this->houle=$houle;
        $this->mare=$maree;
        $this->vent=$vent;
    }
}