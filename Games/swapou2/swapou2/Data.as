class swapou2.Data {

	static private var auto_inc = 0 ;

	// **** CONSTANTES

	// ** Modes de jeu
	public static var CHALLENGE = 0 ;
	public static var DUEL = 1 ;
	public static var HISTORY = 2 ;
	public static var CLASSIC = 3;

	// ** Depths
	static public var DP_BG = auto_inc++ ;
	static public var DP_FRUITS = auto_inc++ ;
	static public var DP_INTERF = auto_inc++ ;
	static public var DP_INTERFTOP = auto_inc++ ;
	static public var DP_BUTTONS = auto_inc++ ;
	static public var DP_FX = auto_inc++ ;
	static public var DP_FXTOP = auto_inc++ ;
	static public var DP_LAST = auto_inc++ ;

	// ** Divers
	public static var GRAVITY_DELTA = 8 ;
	public static var PARASITE_SPEED = 16 ;
	public static var DOCWIDTH = 700 ;
	public static var DOCHEIGHT = 480 ;
	public static var LOW = 1 ;
	public static var MEDIUM = 2 ;
	public static var HIGH = 3 ;

	public static var HORIZ_LOCK_TIME = 20; // temps en secondes

	// ** Scores
	public static var MIN_SUPER_COMBO = 500 ; // � atteindre pour avoir les �toiles tournantes

	// ** Phases d'animation
	public static var A_EXPLODE = auto_inc++ ;
	public static var A_GRAVITY = auto_inc++ ;
	public static var A_SWAP = auto_inc++ ;
	public static var A_FALL = auto_inc++ ;
	public static var A_GAMEOVER = auto_inc++ ;
	public static var A_SPECIAL = auto_inc++ ;

	// ** Particules
	public static var MAX_FX = 20 ;
	public static var FX_GRAVITY = 1 ;
	public static var FX_ALPHA_SPEED = 1 ;
	public static var FX_SPEED = 8 ;
	public static var FX_FRUIT_EXPLOSION = 3 ;
	public static var FX_METAL_EXPLOSION = 5 ;
	public static var FX_STAR_EXPLOSION = 4 ;
	public static var FX_LIFETIME = 10 ;
	public static var FORWARD = auto_inc++ ;
	public static var BACKWARD = auto_inc++ ;
	//  public static var FORWARD_STICKY = auto_inc++ ;
	public static var PINGPONG = auto_inc++ ;
	public static var END_EXPLOSION_TIMER = 13 ;
	public static var SPECIAL_Y = 124 ;

	// ** Interface
	public static var CHALLENGE_X = 38 ; // d�calage X du centre du challenge
	public static var GAMEX = 182 ;
	public static var GAMEY = -10 ;
	public static var ROLLOVER_FACTOR = 1.0 ;
	public static var COMBOSTAR_X = 636 ;
	public static var COMBOSTAR_Y = 371 ;
	public static var COMBOSTAR_SCALE = 40 ;
	public static var COMBO_X = 380 ;
	public static var COMBO_Y = 55 ;
	public static var POWER_X = 145 ;
	public static var POWER_Y = 254 ;
	public static var DUEL_POWER_X = 54 ;
	public static var DUEL_POWER_Y = POWER_Y ;
	public static var POWER_HEIGHT = 27 ;
	public static var POWER_SCALE = 70 ;
	public static var POWER_JUMP_SCALE = 25 ; // 17
	public static var POWER_JUMP_CYCLES = 6 ;
	public static var POWER_SPEED = 2.7 ;
	public static var POWER_MAXSPEED = 13 ;
	public static var MAX_POWER = 6 ;
	public static var LEAVES_X = 124 ;
	public static var LEAVES_Y = 107 ;
	public static var DUEL_LEAVES_X = 33 ;
	public static var DUEL_LEAVES_Y = LEAVES_Y ;
	public static var SCORE_SPEED = 9.57 ;
	public static var SUDDEN_Y = 30 ;

	public static var DUEL_PLX = 84;
	public static var DUEL_PLY = -10;
	public static var DUEL_IAX = 371;
	public static var DUEL_IAY = DUEL_PLY;

	public static var FACE_X = 10 ;
	public static var FACE_Y = DOCHEIGHT-123 ;
	public static var FACE_WIDTH = 110 ;
	public static var FACE_HEIGHT = 110 ;
	public static var FACE_SPEED = 15 ;
	public static var FACEBORDER_X = 10 ;
	public static var FACEBORDER_Y = 11 ;
	public static var DUEL_FACE_X = 3 ;
	public static var DUEL_FACE_IA_X = 615 ;
	public static var DUEL_FACE_Y = 3 ;
	public static var DUEL_FACE_SCALE = 0.75 ;
	public static var SPECIAL_TIMER = 60; // dur�e d'affichage de la face en attaque/def
	public static var SPECIAL_ATTACK_TIMER = 0; // attaque imm�diate

	public static var ATTDEF_ICON_X = 106 ;
	public static var DUEL_ATTDEF_ICON_X = 15 ;

	// ** Menu
	public static var MENU_FRUIT_X = DOCWIDTH/2 ;
	public static var MENU_FRUIT_Y = DOCHEIGHT/2 ;
	public static var MENU_FRUIT_MOVE = 8 ;
	public static var MENU_FRUIT_SCALE = 95 ;
	public static var MENU_MOVE = 1 ;
	public static var BUTTON_SPEED = 0.28 ;
	public static var BUTTON_DELAY = 3 ;
	public static var BUTTON_XMOVE = 180 ;
	public static var BUTTON_X = 355 ;
	public static var BUTTON_Y = 150 ;
	public static var BUTTON_HEIGHT = 49 ;
	public static var BUTTON_SHOW = auto_inc++ ;
	public static var BUTTON_HIDE = auto_inc++ ;
	public static var BUTTON_BUMP = auto_inc++ ;
	public static var CHAR_SCALE = 100 ;
	public static var FACES_BY_LINE = 3 ;
	public static var ROTATOR_FACE_WIDTH = 62 ;
	public static var ROTATOR_FACE_HEIGHT = 62 ;
	public static var ROTATOR_FACE_X = 293 ;
	public static var ROTATOR_FACE_Y = 180 ;
	public static var TITLE_Y = BUTTON_Y - 30 ;

	// ** Fruits
	public static var FRUIT_WIDTH = 35 ;
	public static var FRUIT_HEIGHT = 35 ;
	public static var METAL_FRAME = 20 ; // frame pour les fruits lourds
	public static var STAR_FRAME = 40 ; // frame pour les �toiles
	public static var FROZEN_FRAME = 60 ; // frame pour les fruits gel�s

	public static var FLAG_ARMURE = 1;
	public static var FLAG_NOSWAP = 2;
	public static var FLAG_STAR = 4;
	public static var FLAG_SET_COLOR = 8;

	public static var EMOTE_NORMAL = 1;
	public static var EMOTE_PANIC = 2;
	public static var EMOTE_COLERE = 3;
	public static var EMOTE_PEUR = 4;
	public static var EMOTE_HAPPY = 5;
	public static var EMOTE_DEAD = 6;

	// ** Levels (mode challenge)
	public static var CHALLENGE_LEVEL_WIDTH = 12 ;
	public static var CHALLENGE_LEVEL_HEIGHT = 14 ;
	public static var CHALLENGE_MAX_COLORS = 3 ;
	public static var CHALLENGE_MIN_COMBO = 3 ;
	public static var CHALLENGE_STAR_COUNTER = 100;

	public static var CHALLENGE_HAPPY_SCORE = 300;
	public static var CHALLENGE_HAPPY_TIME = 100;

	public static var DUEL_MAX_COLORS = 3 ;
	public static var DUEL_LEVEL_WIDTH = 7;
	public static var DUEL_LEVEL_HEIGHT = 14;
	public static var DUEL_STAR_COUNTER = 30;
	public static var DUEL_TURN_FRUITS = 7;

	// temps en secondes
	public static var DUEL_MAX_TIME = [7 , 6 , 5, 4 , 3 ];
	public static var DUEL_IA_STAR_COUNTER = [ 30 , 20 , 10 , 9 , 6 ];

	public static var CLASSIC_LEVELS = [ 0, 10, 15, 15, 20, 20, 25, 25, 35, 45, 50, 100, 200, 300, 500, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000 ];


	// ** Informations de combos
	public static var COMBOS = [3,4,5,6,7,9,11,13,15,18,21];
	public static var COMBOS_CLASSIC = [3,5,7,9,11,13,15,17,19];

	public static function calcScore( combo_pieces, combo_phases ) {
		return 5 * (combo_pieces ) * int(Math.pow(combo_phases,0.8));
	}

	public static function calcScoreClassic( combo_pieces, combo_phases,level ) {
	  var fact = 0 ;
	  while (combo_pieces>0)
	    fact += combo_pieces-- ;
		return (level*fact)*combo_phases ;
	}

	public static var COMBO_FACTORS = [1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9,2];

	public static function sendFruits( to_player, nfruits, ncombo ) {
		var dif = to_player ? (difficulty - 2) : ( 2 - difficulty);
		var n = nfruits - 3 + ncombo;
		var c = COMBO_FACTORS[Math.min(ncombo,COMBO_FACTORS.length-1)];
		return Math.min(int(n * c + dif),8);
	}

	// **** GLOBALS
	public static var lod = HIGH ; // level of details
	public static var players = [-1,-1] ;
	public static var difficulty = 0 ;
	public static var gameMode = 0 ;
	public static var histoPhase = 0;
	public static var chars = [false] ; // array de bool des persos activ�s (� initialiser !)

	// **** PLAYERS

	// Co�ts en �toiles des attaques (par player)
	public static var ATTACK_STARS =  [3,1,3,3,2,3,3];
	public static var DEFENSE_STARS = [1,2,2,2,4,5,2];

	// [min_time,max_time,brain_power]
	public static var IA_TIMES = [
		[4,		6.5,	5],		// dimitri
		[5,		7.5,	10],	// natacha
		[5,		8.5,	5],		// sel
		[5,		6,		15],	// poivre
		[2,		5,		20],	// moutarde
		[0.5,	4,		25],	// tomtom
		[1,		2.5,	20],	// wasabii 1
		[0,		2,		25]		// wasabii 2
	];

	public static var ATTACK_PLAYERS = [
		1,
		2,
		0,
		3,
		5,
		4,
		6
	];

	public static var DEFENSE_PLAYERS = [
		3,
		2,
		0,
		6,
		4,
		5,
		1
	];

	public static var ATTACK_NAMES = [
		" VERTIGE ",		// 3* Sel
		"GROS NOYAU",		// 3* Dimitri
		"PETIT PEPIN",		// 1* Natacha
		" COLONNADE ",		// 3* Poivre
		" TREMBLETERRE ",	// 3* TomTom
		"DOUBLE LA MISE",	// 2* Moutarde
		"COULEE DE METAL"	// 3* Wasabii
	] ;
	public static var DEFENSE_NAMES = [
		" MOISE ",			// 2* Sel
		" GLISSEMENT ",		// 2* Wasabii
		" COUPURE ",		// 2* Natacha
		" EFFONDREMENT ",	// 1* Dimitri
		"COLORANT E21",		// 4* Moutarde
		" RAMOLISSEMENT ",	// 5* TomTom
		"COMBOS CLASSIQUES"	// 2* Poivre
	] ;

	public static var CHAR_NAMES = [
		"Dimitri ",
		"Natacha ",
		"Monsieur Sel",
		"Monsieur Poivre",
		"Chevalier Moutarde",
		"Piment TomTom du Chili",
		"Wasabiii "
	] ;

	public static var TXT_SCORE_BATTU = "vous avez battu votre record !";
	public static function TXT_VOTRE_SCORE(s) { return "votre score : "+s; }
	public static function TXT_VOTRE_RECORD(s) { return "votre record personnel : "+s; }
	public static function TXT_VOTRE_PLACE(p) { return "votre classement aujourd'hui : "+p; }
	public static function TXT_PLACE_GAGNEES(p) { return "vous avez gagn� "+((p == 1)?"une place":(p+" places"))+" dans le classement !" };


	public static var TAUNT_QUESTION = [
		[ // Dimitri
			"Abandonne ! tu n'as aucune chance contre moi !",
			"Tu es sur mon terrain ! d�clare forfait, ou tu en paieras les cons�quences !",
			"Je vais t'�craser.",
			"Viens te battre !",
			"Tu crois pouvoir me battre ?!",
			"Finissons-en, j'ai pas que �a � faire."
		],
		[ // natacha
			"Qui est cet affreux personnage ?",
			"Je vais devoir affronter cette... chose ?",
			"Je sens comme une odeur...",
			"Ils sont pourris les fruits ou quoi ?",
			"Allez, bonne chance, t'en auras besoin...",
			"Pr�pare-toi � avoir des p�pins."
		],
		[ // sel
			"Je vais ga-gagner !",
			"Tu-tu va pe-perdre !",
			"Ata-ta-tention � te-toi !",
			"Pa-par la pui-puissance sa-saline !",
			"On-on y va ?"
		],
		[ // poivre
			"Allez hop !",
			"Vite vite am�ne tes fruits par ici !",
			"D�p�che toi, je suis press� !",
			"Non mais tu as vu l'heure ? En retard pour un combat !?!",
			"Tu vas les presser tes fruits !?",
			"Avec moi c'est vite fait bien fait, tu vas pas sentir passer ta d�faite.",
			"Allez, am�ne ta fraise... haha !"
		],
		[ // moutarde
			"Je te laisse dix secondes pour changer d'avis. Apr�s il sera trop tard !",
			"Tu veux te mesurer � moi ? Laisse tomber tu n'es pas de taille face � ma maille.",
			"Un pas de plus, et tu prends ta baffe !",
			"Tu vas finir en compote.",
			"Tu tiens vraiment � te faire �craser ?",
			"Tu le vois ce presse-agrumes ?",
			"T'inqui�te pas, �a va juste piquer un peu.",
			"Me prends pas � la l�g�re."
		],
		[ // piment
			"Tel le scorpion gris, je frapperai une fois et serai sans piti�.",
			"Il est encore temps pour toi de suivre la voie de la r�demption.",
			"Si tu m'affrontes en bafouant ma Loi, tu p�riras par ma Loi.",
			"Ecarte toi de mon chemin.",
			"Pour toi Espelette rime avec d�faite.",
			"Si tu insistes... Ta fin est proche.",
			"Tu n'auras bient�t que les yeux pour pleurer, pauvre �tre sans saveur !"
		],
		[ // wasabi
			"Bleeh bllobllpommeblub blublub ! aaaaaaah!",
			"Blaaa���aaah h�h�h�! mo��e blublubpoire !",
			"Gniiihiiiii pouic blub ! ah ! ah ! aaah !",
			"Graaraaah pourri !!",
			"Pfoudaaaaa !"
		]
	] ;

	public static var TAUNT_ANSWER = [
		[ // Dimitri
			"C'est un combat gagn� d'avance...",
			"Parle toujours, je n'ai pas peur de toi...",
			"Peuh ! une larve de ta carrure ne m'impressionne pas.",
			"Pour qui tu te prends ?",
			"Finissons-en.",
			"Tu rigoleras moins � la fin du combat.",
			"Tu vas regretter d'avoir dit �a !",
			"Assez discut�, bats-toi !"
		],
		[ // natacha
			"Oh... charmant. finissons en vite veux-tu ?",
			"Waaah! Tr�ve de blabla, aligne les fruits !",
			"Comment oses-tu me traiter ainsi ? Bats-toi !",
			"Quelle impertinence !",
			"Ouais, allez, c'est ce qu'on dit.",
			"Ferme ta bouche, c'est insupportable !",
			"Incroyable, tu crois vraiment pouvoir gagner ?",
			"Alors, on se la fait cette partie ?"
		],
		[ // sel
			"Arr�te-te de te-te mo-moquer de me-moi !",
			"No-non ma-mais ce-c'est bi-bient�t fi-fini !",
			"Je ne-n'ai meu-meme pas pe-peur...",
			"Ah-� l'as-saut, ou-ouais !!",
			"A�e a�e a�e...",
			"D�-d�sol� m-mais je m-me lai-laisserai p-pas f-aire !",
			"En g-gaaarde !",
			"Tu v-vas voir, je suis p-pas un l�-l�che m-moi !",
			"Qu-qui me p-parle ?!"
		],
		[ // poivre
			"Je vais venger mon fr�re !",
			"A-atchiiiitchoum !",
			"A-atchoum ! J'ai les yeux qui piquent, n'en profite pas !",
			"Bon, on y va maintenant ?",
			"Non mais je r�ve ! Tais-toi et bats-toi.",
			"T'as d�j� mang� une tarte au poivre ?",
			"Ouais, fais gaffe, le poivrier est aussi une arme contendante.",
			"Je t'attends de pied ferme."

		],
		[ // moutarde
			"Rien ne peut transpercer ma maille !",
			"Laisse tomber, on ne t'a donc pas pr�venu que je suis raifort !",
			"Tu ne me laisses pas d'autre choix que de te battre !",
			"Tu m'cherches !?",
			"Cinq minutes, pas plus, et je t'aplatis.",
			"On dirait que tu ne sais pas ce qui t'attend.",
			"T'aime les pommes ? Parcequ'apr�s �a tu pourras manger que de la compote.",
			"Quand t'auras plus de dents, pense aussi � te faire des compotes de poires."
		],
		[ // piment
			"Le pouvoir des anciens parlera pour moi.",
			"Seul le piment touch� par la gr�ce du grand piquant vaincra.",
			"Ainsi parlait le grand piquant.",
			"Ton inconscience te perdra...",
			"Ne sens-tu vraiment pas ta d�faite proche ?"
		],
		[ // wasabi
			"Graaarrblublub h�h�..",
			"Muuhahahaha!",
			"Memmeuhpa kaphuhu h�h� !",
			"Guuugnou tartare gueule !"
		]
	] ;

	public static var TAUNT_WINS = [
		[ // Dimitri
			"Je te l'avais pourtant dit ! Je suis Dimitri l'invincible !",
			"La victoire �tait d�j� mienne.",
			"Tu rampais ? Maintenant retourne dans ton trou !",
			"Lamentable, c'est tout ce que tu sais faire ?",
			"La prochaine fois r�fl�chis-y � deux fois avant de me d�fier.",
			"T'as vraiment pas le niveau.",
			"Alors comme �a tu esp�rais me battre ?!"
		],
		[ // natacha
			"Ha !",
			"Hihihihi !",
			"Reviens me voir dans quelques ann�es !",
			"Trop facile !",
			"Alors, c'est pas trop la honte de se faire battre par une fille ?",
			"T'as compris maintenant ?",
			"Allez, sans rancune !"
		],
		[ // sel
			"J-j'ai ga-a-gn�, you-p-pi !",
			"T-tu as p-perdu je crr-crois!",
			"Ga-gagn� ?",
			"Alors �a c'est ch-chou-chouette !",
			"C-c'est d-d�j� f-fini ? T'�tais n-nul en f-fait ?",
			"Ou-ouf, c-c'�tait j-juste !",
			"Et n'en r-r-reviens p-pas, mi-mi-minabbble !"
		],
		[ // poivre
			"Hahaha c'�tait un jeu de poivrierre !",
			"Tu as jou� ou t'as p�t� l� ?",
			"Maintenant, que j'ai vaincu, tu peux �ternuer !",
			"Sens-tu ce go�t dans ta bouche ? C'est le go�t de la d�faite !",
			"Fallait me le dire que tu connaissais pas les r�gles du jeux.",
			"Bon je suis content, j'ai pas perdu trop de temps.",
			"Suivant !",
			"Allez, reste pas l�, tu me fais de la peine."
		],
		[ // moutarde
			"Je te l'avais dit, quand �a me monte au nez, faut pas me chercher !",
			"Comme le disait mon oncle le fameux colonel: il ne te reste que les yeux pour pleurer!" ,
			"La sauce �tait un peu trop �pic�e pour toi manifestement.",
			"Ca va aller ? Tu veux un verre d'eau ? Cours toujours !",
			"Et voil�, tu t'es fait laminer... Mais je t'avais pr�venu !",
			"Cette victoire �crasante m'a d�tendu !",
			"Allez, va t'acheter des compotes !"
		],
		[ // piment
			"Je suis bien rouge m'as-tu dit... devant ta d�faite te voil� bien vert !",
			"Il ne fallait pas attendre que je te br�le le palais, te voil� maintenant d�fait !",
			"Tu peux boire toutes les larmes de ta d�faite, je continuerai � t'�chauffer !",
			"Le dard sacr� du scorpion gris n'�pargne pas les impudents.",
			"Trouve une autre occupation, les amateurs n'ont pas leur place ici.",
			"Il faudra faire preuve d'une plus grande ma�trise avant de me d�fier � nouveau.",
			"Je doute que tu parviennes un jour � me battre."

		],
		[ // wasabi
			"Mmmmmhhhhoui hihihi onfonfbou-bhoum !",
			"Krttttttt tsoc pouing, uh-uh uh-uh niourbeuh-euuuj !",
			"Pafpafpoc babam ticprrlllsploc !",
			"Gragragra miarphouloulou !"
		]
	] ;

	public static var TAUNT_LOOSE = [
		[ // Dimitri
			"Jamais je ne comprendrai comment tu as pu me vaincre.",
			"Moi, me faire battre ? Jamais plus je ne pourrai me regarder dans un miroir.",
			"Impossible! J'�tais pourtant le meilleur ??!!",
			"J'enrage !",
			"Je ne me ferai pas avoir deux fois.",
			"Ma technique est pourtant infaillible !",
			"R���aaaa !!! Tu me le paieras !",
			"Non, �a n'aurait pas d� arriver !"
		],
		[ // natacha
			"La chance du d�butant !",
			"Je veux une revanche !",
			"Ouin m�chant !",
			"Oui, bon, �a va !",
			"J'ai d� me louper quelquepart...",
			"C'�tait une feinte, maintenant je connais ta technique... Humf!",
			"Pfff, j'ai encore des progr�s � faire..."
		],
		[ // sel
			"P-pourq-quoi m-moi ?",
			"Oh n-non c'est p-pas v-vrai !",
			"Je s-suis en su-sucre !",
			"V-vengeanche !",
			"Co-comment ce c'est po-possible ?!",
			"Tu tu me le pai-paieras... p-peut-�tre... ou-oui !",
			"C'est p-pas ju-juste !"
		],
		[ // poivre
			"Comment ?! J'ai perd.. atchhahhh.. perdu !",
			"Atcha !",
			"Toi si fade... Tu m'as battu...",
			"Mouais -snirfl- la prochaine fois je me ferai pas avoir aussi facilement.",
			"C'est fini l� ? C'est pas possible !!",
			"Pff... J'�tais pas assez concentr� c'est tout..."
		],
		[ // moutarde
			"Qui t'animes, si ce n'est le dieu Ketchup !!",
			"Avorton, comment m'as tu vaincu ?!",
			"Je t'ai sous-estim�.",
			"Je suis tr�s en col�re maintenant !",
			"Quelle dext�rit� !",
			"Ca va, j'ai compris, mais la prochaine fois je ne serai pas aussi doux."
		],
		[ // piment
			"Impossible, tu m'as refroidi ??!!",
			"O� est pass� mon piquant oh grand scorpion gris ?",
			"Un jour je te montrerai mon vrai piquant...",
			"C'�tait un jour sans...",
			"Il est temps de m�diter et de r�unir mes forces.",
			"Ma technique a perdu de son piquant.",
			"Savoure ta victoire, petit scarab�e, la joie sera de courte dur�e."
		],
		[ // wasabi
			"snourf ahhhhhhhhhhhtzoubhhhh !",
			"orchhkkrouicccscr�aaneuhh blorfh !",
			"tarkroskeeeeurghhhhh huf-huf niaeurgghhh !",
			"fgaizgrouki reuheuheu.. snirfl !"
		]
	] ;

	public static function TXTONLY(txt) {
		return {
			left : undefined,
			txt : txt,
			face : 0, state : 0, bg : 0,
			movie : undefined
		}
	}

	public static function PLAYLOOP(name) {
		return Std.cast({ sound : name });
	}

	public static function CINEMATIK(n) {
		return {
			left : false,
			txt : undefined,
			face : 0, state : 0, bg : 0,
			movie : n
		}
	}

	public static function PERSOTALK(perso,state,bg,txt) {
		return {
			left : false,
			txt : txt,
			face : perso, state : state, bg : bg,
			movie : undefined
		}
	}

	public static function HEROTALK(state,bg,txt) {
		return PERSOTALK(-1,state,bg,txt);
	}

	public static function FRIENDTALK(state,bg,txt) {
		return PERSOTALK(-2,state,bg,txt);
	}

	public static function OPPTALK(state,bg,txt) {
		return PERSOTALK(-3,state,bg,txt);
	}

	public static var STOPLOOP = TXTONLY("");
	public static var SCENARIO_WALK = TXTONLY("");
	public static var POIVRE_WALK = TXTONLY("");
	public static var WASABII_WALK = TXTONLY("");

	public static var SCENARIO = [
		// phase 0 : meet Mr Sel
		[
			PLAYLOOP("loop_forest"),
			CINEMATIK(0),
			TXTONLY("Il �tait une fois, au royaume de L�gumia..."),
			TXTONLY("Natacha et son fr�re, Dimitri, cultivaient chaque jour leur verger..."),
			TXTONLY("Ils �taient membres d'une communaut� pacifique dont le but �tait de rendre �gaux les fruits et les l�gumes."),
			TXTONLY("Cette t�che �tait particuli�rement difficile sachant qu'� L�gumia, domaine des l�gumes sal�s, les fruits sucr�s n'�taient pas forc�ment les bienvenus."),
			TXTONLY("Mais la tenacit� des jumeaux commencait �\nporter ses fruits..."),
			FRIENDTALK(0,3,"$# ! $# !"),
			HEROTALK(0,0,"Qu'y a-t-il $* ?"),
			FRIENDTALK(4,3,"Ca-y-est ! J'ai enfin r�ussi � vendre nos premiers fruits !!"),
			HEROTALK(4,3,"Vraiment ! G�nial !! On a enfin persuad� les L�gumiens de go�ter � nos bons fruits !"),
			TXTONLY("Ainsi, petit � petit, les fruits se r�pandaient au royaume de L�gumia, mais cela ne plaisait pas � tout le monde..."),
			CINEMATIK(5),
			PLAYLOOP("loop_wind"),
			PERSOTALK(8,0,4,"Piquerage ! Il va falloir faire quelque chose pour emp�cher cela ! Au nom du Grand Piquant, je vais mener la r�bellion !"),
			CINEMATIK(1),
			PLAYLOOP("loop_forest"),
			TXTONLY("C'est ainsi qu'un petit matin de printemps..."),
			HEROTALK(3,1,"$*... nos fruits... ils ont �t� sal�s !"),
			FRIENDTALK(0,0,"Mais que racontes-tu ?"),
			HEROTALK(3,1,"Tous nos fruits sont sal�s, quelqu'un a enti�rement vol� leur sucre !"),
			FRIENDTALK(3,1,"C'est affreux !\nMais qu'allons nous faire ?!?"),
			HEROTALK(2,0,"Ne t'inqui�te pas $*, nous allons trouver et d�masquer le coupable !"),
			TXTONLY("Apr�s quelques recherches, Dimitri et Natacha trouv�rent la tani�re de celui qui semblait �tre\n� l'origine du probl�me..."),
			TXTONLY("Le monstrueux Monsieur Sel !!!"),
			HEROTALK(2,0,"Allons-y, il se cache dans la Mine !"),
			SCENARIO_WALK,
			CINEMATIK(2),
			PLAYLOOP("loop_forest"),
			OPPTALK(0,1,"Que-qui �te-tes ve-vous ?"),
			HEROTALK(2,0,"Nous sommes venus reprendre le sucre de nos fruits ! Bats-toi !"),
			OPPTALK(3,1,"Combat 1 : Monsieur Sel")
		],
		[
			CINEMATIK(2),
			PLAYLOOP("loop_forest"),
			TXTONLY("Bravo ! Vous avez vaincu Monsieur Sel, vous allez pouvoir r�cup�rer le sucre vol� !"),
			HEROTALK(2,1,"Rends-toi, tu es vaincu ! Avoue tes crimes : tu as vol� le sucre des fruits, n'est-ce pas ?\nO� l'as-tu cach� ?"),
			PERSOTALK(2,5,1,"(...)"),
			FRIENDTALK(2,0,"Je pense qu'il a son compte, nous devrons attendre qu'il r�cup�re un peu avant de l'interroger..."),
			PERSOTALK(3,2,4,"(poivre magique...)"),
			FRIENDTALK(3,1,"AAaaa... Aaaatchoum!!"),
			FRIENDTALK(3,2,"$# je me sens mal... je... je..."),
			HEROTALK(2,1,"$* !"),
			FRIENDTALK(2,4,"Ahaahahahahah !"),
			HEROTALK(3,0,"$*, que t'arrive t-il ???"),
			FRIENDTALK(2,4,"Bats toi !"),
			HEROTALK(3,0,"Non, arr�te..."),
			FRIENDTALK(2,2,"Combat 2 : la Trahison de $* ?")
		],
		[
			CINEMATIK(2),
			PLAYLOOP("loop_forest"),
			HEROTALK(3,1,"Non... $*.... je ne voulais pas"),
			FRIENDTALK(5,0,"Pardon, $#, excuse-moi... je... ne... comprends pas..."),
			HEROTALK(3,1,"$* !"),
			OPPTALK(2,3,"Ahahaahahahah ! Mon fr�re est veng� !"),
			POIVRE_WALK,
			HEROTALK(2,0,"Attends, ne t'enfuis pas !"),
			HEROTALK(2,0,"Je ferais mieux de le rattraper, il a l'air de savoir quelquechose..."),
			SCENARIO_WALK,
			CINEMATIK(3),
			PLAYLOOP("loop_fall"),
			HEROTALK(2,0,"Ainsi tu te cachais ici, qui es-tu ?"),
			OPPTALK(2,0,"Je suis le fr�re vengeur de Monsieur Sel : mon nom est..."),
			HEROTALK(4,3,"Monsieur... Poivre ?"),
			OPPTALK(2,0,"Comment as-tu devin� ? Tu es moins stupide que tu n'en as l'air... je dois me m�fier"),
			OPPTALK(2,0,"Une fois que je t'aurai �limin�, mon fr�re sera enfin veng� : bats-toi !"),
			OPPTALK(2,1,"Combat 3 : Monsieur Poivre")
		],
		[
			CINEMATIK(3),
			PLAYLOOP("loop_fall"),
			PERSOTALK(3,5,1,"aarrg, tu m'as vaincu..."),
			HEROTALK(2,0,"Qu'as tu donc fait � $* ???"),
			PERSOTALK(3,5,1,"Excuse-moi $#, j'avais mal compris tes intentions, j'�tais enrag� par ce que tu\navais fait subir � mon fr�re..."),
			HEROTALK(2,0,"Et bien, te voil� calm� !"),
			PERSOTALK(3,5,1,"Ecoute-moi bien... Monsieur Sel n'est pas responsable du vol du sucre des fruits, il est incapable de faire une telle chose..."),
			HEROTALK(3,0,"Que veux tu dire ???"),
			PERSOTALK(3,5,1,"Mon fr�re est... diff�rent. Il ne ferait pas de mal � une tzongre, crois-moi !"),
			HEROTALK(3,0,"Mais alors qui est derri�re tout cela ?"),
			PERSOTALK(3,5,1,"Suis ce sentier, il te m�nera au temple de TomTom, c'est lui le responsable de\ntoute cette histoire..."),
			HEROTALK(2,0,"TomTom... si c'est vrai, alors je vais le vaincre !"),
			SCENARIO_WALK,
			CINEMATIK(4),
			PLAYLOOP("loop_bridge"),
			OPPTALK(2,4,"Halte !"),
			HEROTALK(2,0,"Qui es-tu ? Ote-toi de mon chemin, sinon..."),
			OPPTALK(2,1,"Sinon... quoi ? Je suis le serviteur du grand TomTom, et il est hors de question que tu d�ranges sa seigneurie pendant son invocation."),
			HEROTALK(2,0,"Si tu veux m'emp�cher de passer, alors il va falloir te battre !"),
			OPPTALK(2,0,"Tu me parais bien t�m�raire, sache que personne n'a jamais perc� ma c�te de maille !"),
			OPPTALK(2,1,"Combat 4 : Chevalier Moutarde")
		],
		[
			CINEMATIK(4),
			PLAYLOOP("loop_bridge"),
			HEROTALK(0,0,"Me voil� d�barrass� de cet importun, poursuivons la route, je dois trouver et d�masquer ce fameux TomTom..."),
			PERSOTALK(4,5,1,"(...)"),
			SCENARIO_WALK,
			CINEMATIK(5),
			PLAYLOOP("loop_wind"),
			OPPTALK(2,2,"Zam ! Zoum ! Glouglou Zim ! O Grand Piquant r�ponds � mon appel !"),
			HEROTALK(2,0,"Est-ce toi TomTom ?\nQu'est-ce-que tu fabriques ?"),
			OPPTALK(2,0,"Uhm... tu oses venir d�ranger l'invocation du Grand Piquant, agenouille-toi devant\nle pouvoir des anciens !"),
			OPPTALK(2,2,"Zoum ! Zam ! Zim zoum zam ! O Grand Piquant donne moi ta force,\nprends ce sucre en offrande !"),
			HEROTALK(2,0,"C'est donc toi le voleur du sucre des fruits ! Rends-nous ce que tu as pris !!"),
			OPPTALK(2,0,"Je vais t'apprendre la sagesse..."),
			OPPTALK(2,1,"Combat 5 : TomTom du Chili")
		],
		[
			CINEMATIK(5),
			PLAYLOOP("loop_wind"),
			PERSOTALK(5,5,0,"Je peux mourir en paix, je suis certain d'aller rejoindre les Anciens\nau Potager C�leste !"),
			PERSOTALK(5,5,0,"Jamais tu ne retrouveras le sucre de tes fruits !"),
			PERSOTALK(5,5,2,"Je... O Grand Piquant, je peux te sentir, je suis si pr�s de toi !"),
			TXTONLY("Grrraaawwwwwwww !"),
			HEROTALK(3,0,"Aie, les ennuis s'annoncent..."),
			SCENARIO_WALK,
			PERSOTALK(5,5,0,"Le Grand Piquant est revenu � la vie gr�ce � mon sacrifice..."),
			OPPTALK(2,4,"Combat 6 : Le Grand Piquant")
		],
		[
			CINEMATIK(5),
			PLAYLOOP("loop_wind"),
			OPPTALK(5,4,"Krttttttt tsoc pouing,\nuh-uh uh-uh niourbeuh-euuuj !"),
			OPPTALK(4,4,"Suuuuuucreee suuuuucucucucureeeuuuhh ssuuucreeuuh !"),
			WASABII_WALK,
			HEROTALK(4,3,"Quelquechose me dit que je devrais le suivre..."),
			SCENARIO_WALK,
			CINEMATIK(6),
			PLAYLOOP("loop_swamp"),
			HEROTALK(2,0,"O� est-il encore pass� ? Il m'a sembl� le voir entrer dans ces marais..."),
			HEROTALK(2,0,"Oul� ! J'entends comme un chant... ou plut�t un cri..."),
			CINEMATIK(7),
			OPPTALK(2,4,"Krttttttt tsoc pouing, uh-uh uh-uh niourbeuh-euuuj !"),
			HEROTALK(3,1,"Le voil� !"),
			OPPTALK(2,4,"Combat 7 : Wasabiii")
		],
		[
			CINEMATIK(6),
			PLAYLOOP("loop_swamp"),
			FRIENDTALK(0,0,"$# !!"),
			HEROTALK(4,0,"$* !! j'ai enfin vaincu le Grand Piquant !"),
			FRIENDTALK(1,0,"Le quoi ? Cherchons plut�t le sucre, il doit �tre quelquepart par ici"),
			SCENARIO_WALK, // aller sur le sucre
			CINEMATIK(8),
			PLAYLOOP("loop_night"),
			HEROTALK(4,0,"Le voil� ! Enfin nous avons trouv� le sucre de tous nos fruits !"),
			FRIENDTALK(3,2,"Fais attention ! $# ! N'y touche pas !"),
			CINEMATIK(9),
			HEROTALK(3,2,"Ooops !!"),
			FRIENDTALK(2,4,"Non ! Tu as fait tomber tout notre bon sucre dans la mer ! Qu'allons-nous devenir ?"),
			HEROTALK(3,2,"(...)"),
			TXTONLY("Quelques jours plus tard..."),
			CINEMATIK(10),
			PLAYLOOP("loop_forest"),
			HEROTALK(4,3,"Voil� ! C'est pr�t !"),
			FRIENDTALK(4,3,"OOhhhh ! La belle tarte au poisson, je peux go�ter ?"),
			FRIENDTALK(4,0,"Miam ! Sucr�e � souhait, un vrai r�gal !"),
			FRIENDTALK(4,2,"Dis, il reste du sorbet au poulpe ?"),
			TXTONLY("Ainsi la vie poursuivit son cours � L�gumia, le royaume des fruits sal�s et des poissons sucr�s, pour le plus grand r�gal de tous !"),
			TXTONLY("Fin")
		]
	];

}

