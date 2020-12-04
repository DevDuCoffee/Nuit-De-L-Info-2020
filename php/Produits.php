<?php


class Produits
{
    private int $id;
    private bool $estCremeSolaire;
    private bool $estCremeParfum;
    private bool $estCremeHydratante;
    private bool $estMaquillage;
    private bool $estEssence;
    private bool $estCigarette;
    private bool $estEngrais;
    private bool $estPeinture;
    private string $autreProduit;

    function __contruct(int $id,bool $estCremeSolaire,bool $estCremeParfum,bool $estCremeHydratante,bool $estMaquillage,
                        bool $estEssence,bool $estCigarette,bool $estEngrais,bool $estPeinture,string $autreProduit){
        $this->id = $id;
        $this->estCremeSolaire = $estCremeSolaire;
        $this->estCremeParfum = $estCremeParfum;
        $this->estCremeHydratante = $estCremeHydratante;
        $this->estMaquillage = $estMaquillage;
        $this->estEssence = $estEssence;
        $this->estCigarette = $estCigarette;
        $this->estEngrais = $estEngrais;
        $this->estPeinture = $estPeinture;
        $this->autreProduit = $autreProduit;
    }
}