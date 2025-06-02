class it.SpecialPower extends It{//}

	var id:int;

	
	
	function new(){
		super();
		flEquip = true;
		link = "itemSpecialPower"
	}
	
	function setType(t){
		super.setType(t);
		id = type-40
	}	
	
	function faerieEffect(){
		
		fi.sPow[id] = true;
		
		return true;
	}	
		
	function getPic(dm,dp){
		var pic = super.getPic(dm,dp);
		pic.gotoAndStop(string(id+1))
		return pic;
	}

	function getName(){
		return nameList[id];
	}
	
	function getDesc(){
		return  descList[id];
	}
		
	static var nameList = [

		"Poudre d'invisibilite "
		"Masque tribal "
		"Ankh sylvaine "
		"Azur D'Avalon "
		"Calice Hatalan"
		"Serre-tete a corne "
		"Totoche "
		"f7 "
		"f8 "
		"f9 "
	]

	static var descList = [
		"Votre f�e devient semi-transparente, elle sera donc plus difficile � toucher."
		"Votre f�e effraie les d�mons."
		"Votre f�e reconstitue l'�nergie d'un coeur bless�, au cours du jeu."
		"Votre f�e reconstitue plus vite ses r�serves de mana. "
		"Votre f�e apprend plus vite de ses exp�riences. "
		"Votre f�e charge plus souvent, et augmente ses d�gats. "
		"Votre f�e ne peut plus parler. "
		"f7 "
		"f8 "
		"f9 "
	]
	
	
//{	
}



