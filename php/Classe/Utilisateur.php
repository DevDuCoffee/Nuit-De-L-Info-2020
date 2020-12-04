<?php


class Utilisateur
{
    private int $id;
    private string $nom;
    private string $prenom;
    private string $pseudo;
    private string $mail;
    private string $password;

    function __construct(int $id,string $nom,string $prenom,string $pseudo,string $mail,string $password){
        $this->id = $id;
        $this->nom = $nom;
        $this->prenom = $prenom;
        $this->pseudo = $pseudo;
        $this->mail = $mail;
        $this->password = $password;
    }

    /**
     * @return string
     */
    public function getNom(): string
    {
        return $this->nom;
    }

    /**
     * @param string $nom
     */
    public function setNom(string $nom): void
    {
        $this->nom = $nom;
    }


}