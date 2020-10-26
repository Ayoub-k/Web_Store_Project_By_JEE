package com.panier;



import com.Beans.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Walid
 */

public class LignePanier
{

        private Livre livre;
        private int quantite;

        public LignePanier(Livre art, int qte) 
        {    
                this.livre = art;
                this.quantite = qte;
        }

        public Livre getLivre() {
                return livre;
        }

        public void setLivre(Livre livre) {
                this.livre = livre;
        }

        public int getQuantite() {
                return quantite;
        }

        public void setQuantite(int quantite) {
                this.quantite = quantite;
        }

     /*   @Override
        public boolean equals(Object arg0) 
        {
                if(arg0 instanceof LignePanier){
                        if(this.article.equals(((LignePanier) arg0).article) && this.quantite ==((LignePanier) arg0).quantite)
                                return true;
                        else
                                return false;
                }else
                        return false;
        }

        @Override
        public int hashCode() 
        {
                return article.hashCode();
        }

        @Override
        public String toString() {
                return "LigneCommande : "+article.toString()+" | "+this.quantite;
        } */



}

