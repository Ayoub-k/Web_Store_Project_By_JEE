	package com.panier;
	
	import java.util.ArrayList;
	
	import com.Beans.*;
	
	
	public class Panier
	{
	
		ArrayList<LignePanier>  lignesPanier;
	
	    public Panier()
	    {
	    	  lignesPanier = new ArrayList<LignePanier>();
	    }
	
	    @Override
	    public String toString()
	    {
	        String s = "Panier : \n";
	        for (LignePanier l : lignesPanier)
	        {
	            s += l.toString() + "\n";
	        }
	
	        return s;
	
	    } 
	
	    
	    
	    public void addLivre(Livre livre)
	    {
	        for (LignePanier lignePanier : lignesPanier)
	        {
	            if (lignePanier.getLivre().getNom().equals(livre.getNom()))
	            {
	                lignePanier.setQuantite(lignePanier.getQuantite() + 1);
	                return;
	            }
	        }
	
	        lignesPanier.add(new LignePanier(livre, 1));
	    }
	
	    public void sousLivre(Livre livre)
	    {
	        for (LignePanier lignePanier : lignesPanier)
	        {
	            if (lignePanier.getLivre().getNom().equals(livre.getNom()))
	            {
	                if (lignePanier.getQuantite() > 1)
	                {
	                    lignePanier.setQuantite(lignePanier.getQuantite() - 1);
	                } else
	                {
	                    lignesPanier.remove(lignePanier);
	                    return ;
	                }
	            }
	        }
	
	
	    }
	
	    public int getNumberArticle()
	    {
	        return lignesPanier.size();
	    }
	
	    public ArrayList<LignePanier> getLignesPanier()
	    {
	        return lignesPanier;
	    }
	
	    public void removeLivre(Livre livre)
	    {
	        for (LignePanier lignePanier : lignesPanier)
	        {
	            if (lignePanier.getLivre().getNom().equals(livre.getNom()))
	            {
	                lignesPanier.remove(lignePanier);
	                return ;
	            }
	        }
	
	    }
	    
	    public void vider()
	    {
	        try
	        {
	
	            while (lignesPanier.get(0) != null)
	            {
	                lignesPanier.remove(lignesPanier.get(0));
	            }
	
	        } catch (Exception e)
	        {
	        }
	               
	    }
	}
