class miniwave.page.PowerUp extends miniwave.Page{//}

	/*
	
	- TOUCHES CLAVIERS :
		GAUCHE
		DROITE
		TIR
		SUPER ATTAQUE
	- MUSIC ON/OFF
	- SFX ON/OFF
	- PARTICULE ON/OFF
	
	
	*/
	
	var box:miniwave.box.PowerUp
	var type:String;
	var num:Number;
	var nextPage:Object
	var size:Object;
	
	
	function PowerUp(){
		this.init();
	}
	
	function init(){
		//_root.test+="[PAGE POWERUP] init() \n"
		if( this.size == undefined ){
			this.size = { w:160, h:160 };
		};
		super.init();
		this.onPress = function (){
			this.menu.setNextPage(this.nextPage);
		}
	}
	
	function initBox(){
		super.initBox();
		
		// DECRIPTION
		var b = 24
		var initObj = {
			gx:( this.width-this.size.w )/2,
			gy:( this.height-this.size.h )/2,
			gw:this.size.w,
			gh:this.size.h,
			waitTimer:0
		}
		this.box = this.newBox("miniWave2BoxPowerUp",initObj);
		switch(this.type){
			case "titem" :
					this.box.setIllus(1);
					this.box.setText(0,"r�compense!");
					this.box.setText(1,"Vous avez gagn� un nouveau titem !!");
				break;			
			case "mission" :
					this.box.setIllus(10+this.num);
					this.box.setText(0,"bonus!");
					this.box.setText(1,"Une nouvelle mission a �t� d�bloqu� dans la section bonus.");			
				break;				
			case "grade" :
					this.box.setIllus(20+this.num);
					this.box.setText(0,"promotion!");
					this.box.setText(1,"F�licitation, votre nouveau grade est : "+this.menu.mng.gradeName[this.num]+"\n");
				break;
			case "briefing":
					this.box.setIllus(40+this.num);
					this.box.setText(0,"- briefing -");
					switch( this.num ){
						case 1:
							this.box.setText(1,"Votre mission est de freiner le developpement des fruits mutants jaunes qui sevissent actuellement dans le secteur d'ananas-centauri. \n");		
							break;
						case 0:
							this.box.setText(1,"Nous venons d'intercepter un message de l'ennemi. Vous allez devoir faire face � une nouvelle escouadre qualifi�e \"d'explosive\" par ces d�moniaques fruits mutants. Soyez tr�s prudent !\n");	
							break;
						case 2:
							this.box.setText(1,"Selon nos services de renseignement, les fruits mutants ont commenc� a construire un canon a pulpe g�ant d'une puissance colossale. Retrouvez-le et D�truisez-le.\n");
							break;
						case 3:
							this.box.setText(1,"L'�tat-major a re�u ce matin une demande de cessez-le-feu de la part des fruits mutants. Nous avons besoin d'un �missaire pour �tablir un contact avec eux\n");
							break;
						case 4:
							this.box.setText(1,"Une nouvelle offensive des fruits mutants a �t� lanc� dans le secteur Sirion-Banana. D�fendez au mieux la zone contre cette nouvelle vague.\n");
							break;							
					}
									
		}		
	}

//{
}