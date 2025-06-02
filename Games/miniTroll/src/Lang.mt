class Lang{//}



	static var nameSyl0 = [	"$Al" "$Ami" "$Fri" "$Aphro" "$Gili" "$Ho" "$Game" "$Ali" "$Sisi" "$Nami" "$Gi" "$Mali" "$Pi" "$Aso" "$Ni" "$Aho" "$Cyn" "$Mo" "$Dani" "$Ju" "$Sou" "$Li" "$Chomi" "$Kolchi" "$Chi" "$Kumi" "$Yari" "$Za" "$Pi" "$Gami" "$Soli" "$Bama" "$Lumi" "$Api" "$Sumi" "$Dama" "$Jima" "$Magi" "$Tosta" "$Sandi" "$Sulme" "$Go" "$Hi" ]
	static var nameSyl1 = [	"$meria" "$ana" "$kine" "$ne" "$line" "$am" "$yim" "$lia" "$milie" "$lie" "$gine" "$a" "$ka" "$ma" "$dine" "$e" "$ria" "$lyne" "$cie" "$nia" "$dea" "$mone" "$gone" ]


	static var checkpointName = [
		"L'oree de la foret"
		"La clairiere sereine"
		"L'epaisse sommiere"
		"Le coeur de la foret"
		"L'antre sylvaine"
		"Le seuil empirique"
		"Le sentier oubli�"
	]

	static var behaviourName = [
		"Psychanaliste "
		"cannibalisme "
		"cleptomanie "
		"apathie "
		"schizophrenie "

	]

	static var caracName = [
		"Force "
		"Rapidit� "
		"Vie "
		"Intelligence "
		"Concentration "
		"Mana "
	]

	static var caracResume = [
		"La force de votre f�e lui permet de mieux r�sister aux chocs des d�mons, ainsi qu'� donner des coups plus puissants."
		"Plus votre f�e est rapide mieux elle esquive les tirs ennemis."
		"Votre total de coeur maximum d�pend de la caract�ristique vie."
		"L'intelligence permet � votre f�e de choisir les meilleurs sorts, ainsi que les meilleures options pour ceux-ci."
		"La concentration permet � votre f�e de voir les pi�ces en avance, elle augmente aussi la puissance ou la dur�e de certains sorts."
		"La mana d�termine votre r�serve de magie maximum pour une partie."
	]

	static var commandResume = [
		"D�placer la pi�ce vers la gauche"
		"D�placer la pi�ce vers la droite"
		"Faire pivoter la pi�ce"
		"Acc�l�rer la chute de la pi�ce"
		"Demander de l'aide � la f�e"
		"Activer/D�sactiver la souris"
	]

	//


	static var FLASK_ACTION = [
		[
			"pleure "
			"pleure � chaudes larmes "
			"g�mit "
			"d�prime "
			"d�p�rit "
			"se cogne la t�te contre les parois "
			"chante un air lugubre "
			"est d�moralis�e "
			"gratte contre le bord "
			"grave un nouveau trait sur les parois "
			"lit ''comment s'�vader d'un bocal'' "

		],
		[
			"s'ennuie "
			"n'a pas le moral "
			"parle toute seule "
			"trouve le temps long "
			"se ronge les ongles "
			"chante un air triste "
			"vous regarde tristement "
			"se tourne les pouces "
			"regarde ailleurs "
			"fixe la paroi du bocal"
			"tourne en rond"
			"bavarde avec la paroi.."
			"parle avec son reflet "

		],
		[
			"vous attend "
			"chante un air de musique "
			"attend votre retour "
			"attend la prochaine aventure "
			"joue aux cartes toute seule "
			"vole tranquillement "
			"nettoie ses ailes "
			"s'�tire "
			"dort "
			"fait une bulle de chewing-gum "
			"installe son hamac "
			"fait un pictionary toute seule "
			"se brosse les dents "
			"se vernit les ongles "
			"m�dite paisiblement "

		],
		[
			"fait des tourbillons "
			"fait un ch�teau de cartes "
			"agite ses ailes "
			"vous fait un clin d'oeil "
			"vole joyeusement "
			"se coiffe "
			"lit un roman "
			"se fait un collier de perles "
			"a senti qu'on la regardait "
			"se parfume � la violette "
			"teste ses chapeaux "
			"t�l�phone � Clochette "
			"sautille dans tous les sens "
			"se fait un bain de pied aux bulles magiques "

		],
		[
			"fait du jokari "
			"chante un air joyeux "
			"joue du micro-banjo "
			"rigole toute seule "
			"danse "
			"�crit un po�me "
			"virevolte "
			"fait des pompes "
			"fait des loopings "
			"dessine sur un parchemin "
			"fait des paillettes "
			"grignote un chocapic "
			"joue � sa mini-frusion"
			"fait des biscuits au chocolat"

		]
	]



	// FAERIE TALK

	// 0 Constructive, sympa, positive, coach, altruiste
	// 1 Ahuri, dans la lune, sympa, indecis, superficielle.
	// 2 Grognon, m�chante, pessimiste, feignante, cynic
	// 3 Ventarde, pas tres sympa
	// 4 Rigolote, sympa, enjou�e, expansif
	// 5 Timide, sympa, pessimiste, polie, humble
	// 6 impatiente, p�nible, plus que sure d'elle
	// 7 Boulet, beaucoup de questions, flood, phrases tr�s longues
	// 8 Peureuse, pas sure d'elle,

	// fid�le,
	// nombriliste, esthete
	// Belliqueuse
	// Curieuse
	// Gourmand

	// $name, $other, $like, $dislike

	static var endCheerList = [
		[ null,"On a fini !", "Bravo !", "En route!", "Voyons voir ce qui nous attend...", "Fini!!", "Un de plus" ],
		[ null,null,"Wow !!", "D�j� !?", "C'est d�j� fini ?", "Qu'est-ce qui se passe ?", "On va o�?", "Hein? C'est fini?" ],
		[ null,null,null,null,"Pas mal !", "Enfin !", "G�nial...", "Je commen�ais � m'impatienter...", "On a fini par s'en sortir... C'est pas gr�ce � toi !", "Tu veux vraiment continuer?", "Ah ben ca fait du bien quand c'est fini tiens", "Et voil�, encore un niveau, on dit merci qui?" ],
		[ null,"H�h�, j'ai tout d�chir� !", "Heureusement que j'�tais l� !", "Je m'en suis bien sortie !", "Tu m'as trouv�e comment ?", "Avec $other tu l'aurais s�rement pas fini" "$name a encore tout fait", "Et encore une victoire pour moi, je sais je suis trop forte" ],
		[ null,"C'est encore loin Grand-Schtroumpf ?", "Je suis trop youpi-framboise !", "G�nial !", "F�licitations, puzzle-man !", "Youhouhou !!!", "Un de plus en moins" ],
		[ null,null,null,null,"On s'en est bien sortis... non ?","J'esp�re que je ne t'ai pas trop encombr�...","Si tu veux continuer sans moi je comprendrais...", "On continue ensemble?" ],
		[ null,"C'est pas trop t�t","T'aurais pas pu aller plus vite ?", "Ah ben quand m�me", "Le prochain je le fais moi-m�me", "Go go go go !!!", "Allez, on se d�p�che", "J'ai failli m'endormir", "Allez hop hop encore un niveau!!" ],
		[ null,"On fait vraiment une super �quipe tous les deux", "Tu crois que �a va �tre dur plus loin ?", "J'esp�re qu'il n'y aura pas de d�mons plus loin", "youpiiii, on a r�ussi", "Tu veux pas me porter? Je commence � fatiguer", "Y a quoi apr�s?" ],
		[ null,"On rentre � la maison maintenant?", " Ouf, on a r�ussi", "An rentre? Ah non?", "T'es s�r qu'il y a pas de d�mons plus loin?", "Si tu veux continuer sans moi je comprendrais...", "Tu veux pas appeler $other � ma place?", ]
	]

	static var comboCheerList = [
		[ "Super !","Bien !","Bien jou� !","Joli coup !","Combo !"],
		[ "G�nial !","Bien vu !","Y'a un truc qui est tomb� l�, non ?","On y voit plus clair !"],
		[ null,"Pas mal !", "Peut mieux faire...", "Passable...", "Plut�t m�diocre.", "Combo primitive..."],
		[ null,"Ouep, pas mal", "Bof, je peux le faire aussi...", "J'aurais pu le faire toute seule", "Pas de quoi se vanter...","Ca, m�me $other peut le faire !" ],
		[ "Bam!", "Trop la classe !", "Tu peux le refaire ?", "Combooo !!", "Excellent !" ],
		[ null,null,null,"Chouette !", "T'es fort !", "... "],
		[ "Tu peux en faire un autre ?", "Au moins �a d�barasse", "Bon, maintenant t'en fais un autre.","Pas mal, on va gagner un peu de temps" ],
		[ "Waw, comment tu fais ?", "Tu me montreras comment tu fais ?", "Joliiiii !!", "Joli coup !" ],
		[ "T'es fort !", "Joliiiiii", "Bien jou� !","Joli coup !", "Tu peux le refaire ?" ]
	]
	static var superComboCheerList = [
		[ "Tr�s joli coup !","Fantastique !","Fabuleux !","T'es super dou� !", "Epoustouflant !"],
		[ "Comment t'as fait �a ?","Waaah quel combo !","Trop fort !!!","Incroyable !","Y'avait pas un tas de billes, l�, avant ?"],
		[ "Enfin un peu d'action", "Ah t'es un peu moins rouill�", "H�.. Tu te d�fends...", "Combo acceptable.", "Hola, y'a du mouvement...", "Pas mal pour une fois...", "Ha ben tu vois quand tu veux !!", "Si tu pouvais faire des combos comme �a tout le temps..."],
		[ "Je peux faire mieux au prochain tour !","Impressionnant ! Mais c'est rien compar� � mes pouvoirs", "Super ! C'est presque aussi efficace que mes sorts" ],
		[ "Badaboum !","Yo ! C'est du grand spectacle �a !","C'est top-Fraise ce que tu nous fais l�", "T'as mang� du lion ce matin non ?", "C'est super efficace ta combo, comment tu fais �a !?"],
		[ "... ", "C'est toi qui casse tout...", "Quelle combo! Je me sens inutile..." ],
		[ "Avec �a on va gagner du temps", "Ca c'est du combo rapide", "Si avec �a on passe pas au prochain niveau !", "Ouais on va pouvoir partir plus vite!!!", "Tu vois quand tu veux ?" ],
		[ "G�niaaaaal !", "J'suis super youpi-framboise", "Mais comment t'as fait un truc pareil ?", "Crac ! Boum !! Whaoouu !!", "Ouhouuu Combo-folie's !!" ],
		[ "Avec �a on a bient�t fini", "Voil��� on va pouvoir y aller maintenant?", "T'es s�r que ca va pas me tomber dessus?", "T'as pas peur quand ca explose comme ca ?", "*Kiaaahhh*", "Y a un truc qui a explos�", "Toutes ces explosions m'effraient" ]
	]

	static var spellCheerList=[
		[ null,null,null,"A toi de jouer maintenant !", "J'esp�re que �a suffira !", "C'est mieux comme �a ?" ],
		[ null,null,null,"Mince, c'est pas ce que je voulais faire !", "Ah ? Tiens je pensais que ca ferait autre chose", "Wah ! C'est moi qui ai fait �a ?" ],
		[ null,null,null,"C'est la derni�re fois que je me bouge", "Essaie d'assurer un peu maintenant", "Bon je repars me coucher..."],
		[ "T'as vu �a ?", "Et voila le travail !!", "Alors ? Merci qui ?", "L� je me suis surpass�e !", "Alors ? C'est autre chose que les petits sortil�ges de $other...", "Ca, c'est ce que j'appelle de la magie !" ],
		[ null,null,"Wah ! Il est chouette ce sort!!", "Et hop l� !", "Bari bari zoum zoum !", "Abracadabra !" ],
		[ null,null,null,null,null,null,null,"... ", "J'esp�re que �a peut aider...", "C'est pas grand chose...", "J'ai pas trouv� mieux..." ],
		[ "Hop,hop,hop !", "C'est encore moi qui fait tout", "Avec �a, on va avancer" ],
		[ "A moi de jouer !!", "Regarde, je fais des paillettes !!", "Il est beau mon sort, non ?", "J'aurais d� mettre plus de rose dans ce sort" ],
		[ "Je suis pas tr�s s�re du r�sultat", "Je pensais pas �tre capable de �a", "C'est moi qui ai fait �a?", "Aahhh qu'est-ce-qui se passe?" ]

	]

	static var helpOk = [
		[ "Ok, je m'occupe de tout", "Je m'en occupe!", "Compte sur moi!", "Je suis l�, pour t'aider!", "Je pr�pare un sort pour toi..."],
		[ "Qui �a ? Moi ?", "Euh o� �a ?", "Tu as besoin de moi ?", "Heu, qu'est-ce que je vais faire...", "Un sort ? Euuh maintenant ?" ],
		[ "Pffff....", "Encore !?", "Pourquoi tu demandes pas � $other de lancer des sorts ?","Tu peux rien faire sans moi ?", "Comme si j'avais le choix...", "Ca devient syst�matique avec toi...", "Et voil�...", "Bien s�r, tu peux pas t'en sortir tout seul...", "Je regrette tant de t'avoir accompagn�" ],
		[ "Regarde un peu �a", "Laisse moi faire", "Tu vas voir mes sorts sont six fois plus puissants que ceux de $other !","Arr�te de pleurer, et regarde l'artiste", "C'est mon tour de briller !", "Regarde un peu de quoi je suis capable!", "Ce sort va t'�poustoufler" ],
		[ "Youpi !! ", "Un peu d'action !", "A moi de jouer !", "Je vais faire un truc marrant !", "Attention les yeux !", "Pompulinu! pouvoir magique !", "Kaaa Maa Naaa Maa... NAAAAH !" ],
		[ null,null,null,"Ah ?", "D'accord...", "Pourvu que je sois � la hauteur...", "Ne me mets pas la pression !", "... ", "Je vais essayer", "tu..tu crois que..que je peux le faire ?" ],
		[ "C'est encore moi qui m'y colle ?", "Je dois tout faire ici", "Ok, un sort et on passe au prochain niveau", "Tout de suite", "Et un sort vite fait!!" ],
		[ "Tu veux un coup de main ?", "Tu as besoin de moi ? C'est vrai ?", "Tu peux me faire confiance, j'ai jamais rat� un sort", "Ouaaiiss, regarde �a !!", "Je vais te montrer quelque chose !!", "Attention les yeux!!", "j'aaarrrrriiivvveee!!!!" ],
		[ "Je vais essayer", "Tu veux pas que $other le fasse?", "Qui �a? moi?", "Pourvu que ca marche", "Je peux pas me cacher dans le bocal plut�t?"]
	]

	static var helpNoMana = [
		[ "Je n'ai plus de magie !","J'ai besoin de me reposer","Je peux pas t'aider avant d'avoir r�cup�r�","R�siste au mieux pendant que je r�cup�re mes forces magiques !"],
		[ "J'ai plus de force magique !", "Je me sens un peu faible tout � coup...","J'ai besoin de me reposer","Je peux pas t'aider avant d'avoir r�cup�r�"],
		[ "Je peux plus rien faire, fallait m'�conomiser...", "R�fl�chis un peu...", "Si tu avais �t� plus malin, on serait pas en panne de mana.", "Tu crois que je peux lancer autant de sorts que tu veux ?", "Hoooo, je n'ai plus de mana, trop dommage... *sifflote*" ],
		[ "Sans mana, m�me moi je peux rien faire !", "Laisse moi le temps de rassembler mes forces magiques...", "Je me repose un peu et ensuite, je casse tout !", "Donne moi juste une minute ou deux, et je nettoie le niveau !" ],
		[ "Pas de mana, pas de chocolat !", "Sans mana, les f�es sont moins sympas !", "Sans mana, C'est pas la joie !", "C'est super la mana, sauf quand il y en a pas !","Je viens de me souvenir d'un sort surpuissant, mais j'ai plus assez de mana !!", "Je peux pas l� j'ai piscine"],
		[ "Je suis d�sol�e...", "Je n'y arrive pas", "Je suis fatigu�e, d�sol�e" ],
		[ "Je peux pas tout faire non plus", "Plus de mana, faut que tu te d�brouilles", "Laisse moi un moment, et ensuite je casse tout", "Plus de mana, �a avance pas" ],
		[ "OOOUUIINNN !!! J'ai plus de manaaaa !!", "Faut que je range ma chambre l�", "Promis, je t'aide dans un moment", "D�s que j'ai du mana, je te montre un truc g�nial !!", "H� attends tu sais pas ce qu'elle m'a dit $other ? Quoi c'est pas le moment?", "Abracadabra je disparais... Mais non je rigole rooh!!" ],
		[ "ben pkoi ca marche pas?", "J'ai besoin de repos", "Peut-�tre que $other a du mana elle?", "Je vais aller ranger mon bocal", "Et si on appelait Harry Potter?" ]
	]

	static var SENT_GET_FOOD = [
		[	// LIKE
			[ "Chouette ! $food !", "$food, youpiii" ],
			[ "$food ? Ca sent bon !", "$food, hum �a a l'air bon" ],
			[ "$food ? On aura pas perdu la journ�e !", "$food, je vais enfin manger correctement" ],
			[ "H�h�, voici ma r�compense : $food !!", "$food, je vais me r�galer" ],
			[ "$food ! C'est super bon !", "$food, ca a l'air bon"],
			[ null, "$food ! Quelle chance !" ],
			[ "Hmm, je vais me r�galer!", "$food, j'esp�rais en trouver"],
			[ "$food, Ouais, je vais me r�galer j'adore �a, c'est g�nial", "Au diable le r�gime, vive la gourmandise!!" ],
			[ "$food ? Ca sent bon !", "Chouette ! $food !" ]
		],
		[	// DISLIKE
			[ "$food...", "Dommage, $food"  ],
			[ "Beurk c'est quoi �a ?", "Oh noooonn!! Pas $food" ],
			[ "$food !? Tu as inter�t � le jeter!", "fais venir un go�teur, je ne touche pas � �a sans �tre s�re","Pouah et tu penses que je vais manger ca?", "Je pr�f�re encore partir si tu n'as que �a � me donner" ],
			[ "$food !? Compte pas sur moi pour manger �a !", "Je sens que je vais faire un regime moi!"],
			[ "Mon dieu ! Ne me dis pas que tu vas garder �a !", "Je pr�f�re mourir que de cohabiter avec $food !"],
			[ "*soupir*", "Dommage"],
			[ "$food! tout �a pour �a?", "$food, faut jeter �a !!" ],
			[ "$food! Beurkkk, comment on peut manger �a ?", "Soit on le jette, soit on le donne � $other", "J'esp�re que t'as faim parce que je mange pas �a moi" ],
			[ "Beurk, encore un truc qui va moisir", "Vu que j'en mange pas on peut peut-�tre le jeter non?" ]
		],
		[	// RARE
			[ "Oh !! $food ! On en voit pas souvent !"],
			[ "Ah, Enfin ! $food ! C'est pas trop t�t !"],
			[ "Oh !! $food ! On en voit pas souvent !"],
			[ "Oh !! $food ! ah, enfin, pas trop t�t, un met digne de moi" ],
			[ "Oh !! $food ! On en voit pas souvent !"],
			[ "Oh !! $food ! On en voit pas souvent !"],
			[ "Oh !! $food ! On est vraiment pas venus pour rien !" ],
			[ "Waw!! $food!! C'est super rare, y a de quoi �tre super youpi-framboise" ],
			[ "$food!! �a c'est rare!!" ]
		],
		[	// OTHER
			[ "$food !", "Oh, $food", "tiens? $food, on partagera avec $other" ],
			[ "Ho, on dirait $food.", "$food!" "Tiens? $food, ca faisait longtemps!", "tiens? $food, on partagera avec $other" ],
			[ "Encore $food...", "$food...", "$food, h� ben voila le repas de ce soir", "tiens? $food, on partagera avec $other" ],
			[ "$food !", "$food, c'est d�j� ca", "$food, Au moins, �a cale l'estomac", "tiens? $food, on partagera avec $other" ],
			[ "$food !", "Au moins, �a cale l'estomac", "tiens? $food, on partagera avec $other" ],
			[ null, "...", "tiens? $food, on partagera avec $other" ],
			[ "On perd notre temps avec �a", "juste $food", "tiens? $food, on partagera avec $other" ],
			[ "$food !", "$food, Tu crois que c'est bon avec du chocolat ?", "$food, C'est pas mauvais pour ma ligne au moins ?", "Ca va �tre sympa pour d�corer le bocal", "tiens je comptais en acheter chez superf�e", "tiens? $food, on partagera avec $other" ],
			[ "$food !", "$food, h� ben voila le repas de ce soir", "tiens? $food, on partagera avec $other" ]
		]
	]

	static var SENT_GET_ITEM = [
			[ "Cool ! $item !", "$item, �a c'est cool!"],
			[ "Ah c'est quoi ce truc ?", "Tiens ! Un nouveau machin !", "Houla ! C'est quoi ca ?" ],
			[ "Encore $item !", "$item ? Bof...", "Toujours les m�mes objets...", "Voil� de la nouvelle quincaillerie..."],
			[ "Gr�ce � moi on a r�cup�r� $item !", "$item !!! Rien que pour moi !", "$item ! Je l'ai bien m�rit�..." "Maintenant c'est � moi" ],
			[ "$item ? Trop de la balle !!","Avec $item � la main, j'ai peur de rien !","La vie c'est comme une bo�te de chocolat..." ],
			[ null,"$item , J'esp�re que �a te pla�t...", "... "],
			[ "Bon, on prend �a et on y va", "$item, �a pourra toujours servir" ],
			[ "Waw,$item, mais qu'est ce qu'on va en faire ?", "Oh, c'est quoi �a ?", "Tu crois que c'est utile ?", "$item, je veux tester �a !!!", "Youki je sais pas ce que c'est mais Youki!!" ],
			[ "Ca a une dr�le de forme tu crois que �a se mange?", "Ah c'est quoi ce truc ?", "Et �a va m'aider ca?", "Je pourrais me cacher avec tu crois?" ]
	]

	static var SENT_DAMAGE = [
		[ "ouch !", "Aie !", "Ouille !" ],
		[ "ouch !", "Aie !", "Ouille !" ],
		[ "ouch !", "groumf !", "argh !", "maais...euh !" ],
		[ null,null,"M�me pas mal !", "J'ai rien senti !" ],
		[ "ouch !", "Aie !", "Ouille !" ],
		[ null, "..." ],
		[ "Aouch !", "Aie !", "Ouille !" ],
		[ "Aie !", "Ouille !", "Mais eeuuhh !", "Ouch !" ],
		[ "Aouch !", "Aie !", "Ouille !""maais...euh !" ]
	]

	static var SENT_HEART_DAMAGE = [
		[ "Aie ! Aie !","Ca fait mal !","� l'aide !"],
		[ "Aie ! Aie !","Ca fait mal !","� l'aide !","au secours", "l� c'est s�r je vais avoir une cicatrice"],
		[ "Aaaargh !","Oouch !","Argh ! Ca fait un mal de chien !!", "l� c'est s�r je vais avoir une cicatrice"],
		[ null,null,"arrhh !", "C'est bon tout va bien !", "Ca y est je suis �nerv�e", "Mais c'est qu'il ferait mal en plus ce petit truc qui vole" ],
		[ "Aie ! Aie !","Ca fait mal !","� l'aide !"],
		[ "ouch !","Aie !"],
		[ "Ca va se payer �a !", "Ca fait mal", "C'est pas qu'ils m'ont fait mal, mais j'ai maaallll", "F�e gaffe � toi!!", "C'est la salsa du d�mon!" ],
		[ "Aiiieeuuhhh, �a fait mal", "Mais je leur ai rien fait moi !", "Au secours !!!!", "Aide moi !!", "Appelle $other pour venir m'aider !!!" ],
		[ "T'as pens� � la trousse de premier soin??", "J'appelle Sos f�e battue !", "J'aurais d� rester cach�e", "Mais il fait que me jeter des trucs dessus", "H� mais aide moi!!"]
	]


	static var SENT_GAME_AMBIENT_NORMAL = [
		[ null,null,"Allez encore un effort !","Il nous faut une super combo !","Concentre toi sur le jeu, tu peux s�rement trouver une faille !","Pers�v�re !","Concentre toi","Essaie de rep�rer les groupes de billes les plus importants !","Ne lib�re pas plusieurs d�mons � la fois !"],
		[ null,null,"Tiens ? je suis d�j� venue ici...","Tu as vu mon collier ? $other me l'a pr�t� !","Mince j'ai fait tomber une boucle d'oreille","Ho ! Je crois que j'ai vu un kikooz derri�re ce buisson","C'est quoi ce champignon ?!","Tu as d�j� entendu parler de l'arc-en-ciel ?","Je suis super mal coiff�e aujourd'hui...","J'ai un peu soif...","Il n'y a pas un autre moyen d'explorer cette contr�e ?", "Faut que j'aille chez la manucure, � force de me battre j'ai les mains toutes abim�es", "Et si je me colorais les ailes pour les assortir � ma tenue?" ],
		[ null,"Ca fait combien de temps qu'on est partis ?","La prochaine fois, demande plut�t � $other de t'accompagner.","Il y aurait pas un autre mode de jeu... o� je suis pas oblig�e de venir?", "Je crois que je pr�f�re encore �tre enferm�e dans un bocal","J'aurais mieux fait de rester dans mon bassin moi...","Si j'avais su, je serais pas venue.","Engagez-vous qu'ils disaient...","J'aurais d� rester couch�e ce matin","J'ai pas de bol.", "*soupir*"],
		[ "Je m'ennuie","Tu as pas un truc � faire pour moi ?","Que penses-tu de moi ? Je suis bien meilleure que $other n'est-ce pas ?","Si je r�cup�re assez de magie...","Je pr�pare un super coup !","Qu'ils viennent les d�mons !! Je les attends !","J'ai un plan d'attaque infaillible pour le prochain d�mon","$other ne m'arrive pas � la cheville !","Regarde ce que j'arrive � faire avec mes ailes !!","Il faudra que je parle de mes exploits aux autres en rentrant","Apr�s toutes ces aventures, je vais devenir une f�e tr�s populaire !!"],
		[ null,null,"Hier, $other et moi on a pas mal parl� de toi...","C'est qui le malade qui entasse toutes ces billes ?","Ils sont pas serr�s, les d�mons, dans les capsules ?","Ca manque de couleurs par ici!!","Je me demande ce qu'il y a par l� !","On devrait monter un cirque !","Tu peux pas voler ?","Mais finalement, c'est quoi l'univers ?","C'est pas vraiment l'endroit o� j'aimerais vivre...","On l'a pas d�j� vu ce niveau ?","Dis, t'aurais pas vu Nalika par hasard ? Je lui ai pr�t� mes paillettes, et elle ne me les a pas rendues...","Tu sais ce que �a fait, du chocolat dans un champs de bl� ? hihi","*chante* A l'aventure Compagnon, je suis partie vers l'horizon...","Il est sympa Gaspard, hein ? Je rigole bien avec lui","Tu crois qu'on pourrait invoquer Ornegon ?","J'aimerais des sandales pour aller avec ma jupe" ],
		[ null,null,null,null,null,"hum...","Tu penses qu'on forme une bonne �quipe...?","J'esp�re que je ne te d�cevrais jamais !","Je pr�f�re ta compagnie � celle des autres f�es... *rougit*", "Je suis mieux avec toi qu'avec $other...*rougis*" ],
		[ "Une super combo et on y va !!", "D�p�che toi, je veux voir plus loin", "Bon, tu entasses des billes ou tu les fais dispara�tre ?", "Plus rapide c'est possible ?", "Appuie vers en baaaassssss !!!"],
		[ "J'aimerais bien rencontrer une mini-pouss, c'est un peu comme une f�e sans ailes", "Je me demande si $other ne s'ennuie pas trop", "*fait une bulle de chewing-gum*", " Mdamirma m'a pr�dit Une b'nne configurati'n Frutale", "On est pas d�j� pass�s par l� ?", "Ca manque de couleurs par ici!", "J'ai un peu soif...", "Tu crois que je devrais r�amm�nager mon bocal ?", "C'est quoi ta couleur pr�f�r�e ?", "Tu me donnes ton adresse MSN ?", "A.S.V. pour tout le monde !!", "J'ai quand m�me l'impression qu'on tourne en rond", "On devrait sortir d'ici, je suis s�re qu'on est perdus", "C'est quand que j'apprends un nouveau sort ?", "T'as pas vu passer une tzongre ?", "Dis, tu crois que je serai mod�ratrice, un jour ?", "Je me suis battue avec Gomola hier... il voulait me voler $like!", "Tu t'es d�j� fait totocher ? Moi oui, plein de fois !", "Dis, tu me pr�tes des kikooz ? J'ai envie de m'acheter un chapeau... Alleeeer, s'il te plaaaiiit..."],
		[ "Argh!! Ah non rien c'est mon ombre", "Dis je peux me cacher derri�re toi?", "Aaaaah quelque chose m'a touch�e!! ... Ah c'est juste du lierre...", "C'est ca que tu appelles s'amuser?", "Et si on rentrait � la maison", "Tu pr�f�rerais pas qu'on joue � swapou?", "Il a l'air sympa le coin la bas pour se cacher...", "C'est quand m�me un peu sombre ici", "C'est quoi ce bruit? T'as entendu?", "On aurait d� amener $other avec nous", "On devrait rentrer tant que le d�mon n'y est pas"]

	]

	static var SENT_GAME_AMBIENT_BATTLE = [
		[ "Je retiens les d�mons, profites-en","Il a l'air coriace, mais je peux le vaincre","Concentre-toi sur le jeu, les d�mons c'est mon boulot !","Je m'occupe du d�mon, essaie de finir vite !"],
		[ "Argh ! Il est affreux celui-l� !","Ces d�mons sont incroyablement r�sistants !","Je me demande d'o� viennent ces d�mons", "Je vais essayer de te d�barasser de ce monstre","Wah, il a failli me toucher !", "Oups, j'ai failli me froisser une aile", "Ils ont l'air bizarre les trucs qui volent l�!" ],
		[ "Ce d�mon m'a mise en col�re !","Je ne peux pas supporter ces d�mons","Tu nous as mis dans de beaux draps...", "Ca va chauffer pour toi le d�mon !", "Arr�te de lib�rer des d�mons s'il te plait!!", "Ca va chauffer", "Mais pourquoi tant de violence, si �a se trouve ils sont gentils" ],
		[ "Ce d�mon ne tiendra pas longtemps !", "C'est l'affaire d'une seconde", " Tu vas voir je vais l'�craser cette souris ail�e", "On t'as jamais dis de ne pas emb�ter les filles??", "Coup de t�te, balayette!!", "Ca va chauffer!!", "Ils sont en baisse de forme les d�mons l� non?", "Je connais un d�mon qui va se prendre un coup de coiffe bigoud�ne", "Va y avoir de la ratatouille de d�mon"],
		[ null,null,null,"H� ! Je le reconnais celui-l� ! C'est le chef de la bande, celui avec la m�che !","Y'a un d�mon qui a la m�me fa�on de voler que $other!"," Beurk! il a une t�te de chou-fleur ce d�mon","Ils sont plut�t lents ces d�mons...", "Ca va chauffer", "Tremblez d�mons ! La superbe $name va vous �craser !!","Ils sont pas tr�s beaux ces d�mons...","Houla celui-l� est vraiment affreux","C'est pas un d�mon rose que j'ai vu � l'instant ?","Regarde ce coup l�, c'est Piwali qui m'a appris ! h� h�"],
		[ null,null,null,null,null,null,"Je vais mettre toutes mes forces dans la bataille","Je vais bloquer ces d�mons !"],
		[ "Je m'en occupe, concentre toi", "Qu'est ce qu'il est moche celui-l� !", "Je le finis, et je reviens t'aider", "Tu penses y arriver tout seul ?", "Je m'en d�barasse avant m�me que tu finisses le niveau", "Il va nous faire perdre notre temps ce d�mon!" ],
		[ "Houlaaaa, plus ils sont gros plus ils sont moches ces d�mons", "Il me faudrait une tapette � d�mon", "Y'a un d�mon qui a la m�me fa�on de voler que $other !", "Je m'en occupe, tu me regardes hein ?", "Super $name Attack, �a sonne bien ?" "Mais ils sont rapides quand m�me !!", "Attention je vais sortir ma super attaque : fourchette pow@@@", "Kowabungaaa" ],
		[ "J'aurais pas d� venir", "Je me m�fierai des balades avec toi la prochaine fois", "Pourquoi �a tombe sur moi?", "Ne jamais suivre quelqu'un dans une for�t �a finit toujours mal je le savais" ]
	]
	static var SENT_GAME_AMBIENT_FINISH = [
		[ null,null,"Pers�v�re! Tu y es presque !","Y'a plus grand chose � faire ! Tiens bon !","Le prochain niveau est bient�t en vue !","Il n'y a plus de danger d�sormais..."],
		[ null,null,"Y'a plus grand chose de ce niveau...","Pourquoi on s'en va pas ?","Quand est-ce qu'on s'arrache d'ici ?","Ca fait un peu vide maintenant..."],
		[ null,null,null,"Pfff... On se tra�ne...", "Bon si tu perds maintenant, tu es irr�cup�rable","Tu en as pour longtemps ?", "ah ben voil� c'est � ton niveau l�"],
		[ "Bon, je pense que tu pourras finir sans moi !", "Je te laisse finir le niveau.", "C'est presque fini !" ],
		[ null,null,"Aie, je me suis froiss�e une aile !", "Ce niveau �tait vraiment super !", "Oh regarde !... Ah non rien..." ],
		[ null,null,null,null,null,null,"Ce niveau �tait sympa...", "Tu t'es bien d�brouill� sur ce niveau"],
		[ "Bon, l� tu peux finir vite", "C'est fini, on va au prochain !!", "Rien qu'un petit effort", "Je pars devant, tu me rejoins", "Tu peux pas jouer plus vite?"  ],
		[ "H�! Tu t'es bien d�brouill� l�!", "Bon, �a a l'air calme l� maintenant", "Bon, je vais m'asseoir et regarder la fin", "J'esp�re que le prochain sera aussi simple", "Tu veux pas que je fasse un sort ?" ],
		[ "Mince j'ai plus rien pour me cacher", "c'est pas possible il va nous arriver une tuile", "c'est trop beau pour �tre vrai", "C'est presque fini !" ]
	]

	static var SENT_GAME_AMBIENT_STRESS = [
		[ "Ne te rel�che pas ! Tu peux encore t'en sortir", "Rien n'est perdu, reste bien concentr� !", "Tu peux encore y arriver"],
		[ null,null,null,null,"Houla, �a sent le roussi", "Ca va aller ?" ],
		[ null,"Et voil�, on est foutus !","Alors l�, je vois pas comment tu vas t'en sortir","Tu joues vraiment mal...","C'est pas comme �a qu'on va avancer...","Ca sent la fin...","Je savais que �a finirait comme �a...", "bon les erreurs c'est fait, les jolis coups tu as ?"],
		[ "Tu veux un coup de main ?", "Avec un peu de mana, je peux nettoyer le plateau !!", "Tu vas t'en sortir tout seul ?", "Tu penses pouvoir t'en sortir sans moi ?"],
		[ null,null,"Hola, je veux pas voir �a !","Houlala c'est la m�ga catastrophe !","Bon, ben... on se retrouve dehors ?", "T'aurais pas des probl�mes avec ton clavier?" ],
		[ null,null,null,"Tiens bon !","Je suis de tout coeur avec toi...","Je ne sais pas quoi faire pour t'aider..."],
		[ "respire, respire", "calme toi, on va pas arr�ter maintenant", "bon, l�, tu peux prendre ton temps", "comment t'as pu entasser tout �a ?", ],
		[ "Ah, l� c'est s�r, c'est dommage le coup de tout � l'heure", "Je suis s�re que si tu te concentres bien, c'est faisable", "Je voudrais vraiment t'aider", "Et en fait quand on est l�, il se passe quoi ?", "C'est pas tr�s bon l�, non ?" "mais comment t'as fait pour arriver si haut?"],
		[ "Bon, ben, je crois que c'est l'heure de rentrer", "je te l'avais bien dit qu'il fallait rester � la maison", "j'ai pris des coups pour rien ...", "tout ca pour ca?" ]

	]

	// MENU

	static var SENT_NEW_DAY = [
		[ "Bonjour !","Bonjour ! Tu as bien dormi ?","Salut ! Tu vas bien aujourd'hui ?","Salut ! Tu as vu ? Il fait beau aujourdhui !" ],
		[ "Bonjour !","Bonjour ! Tu as bien dormi ?","Salut ! Tu vas bien aujourd'hui ?","Bonjour, on va jouer !?", "Hey! On s'est d�j� vus quelque part non?" ],
		[ "J'esp�re que tu vas me ficher la paix aujourd'hui !","Tiens, le sergent est de retour...", "Je suis l� pour personne aujourd'hui.", "Compte pas sur moi pour t'aider aujourdhui !", "Tu connais le mot DORMIR ??", "Ah? T'es de retour? Bon, finies les vacances!", "Ah !!!! C'est de pire en pire tu as pens� � la chirurgie ?" ],
		[ "Bonjour !","Salut !","Bonjour, on va jouer !?","Salut ! Tu reviens me voir ?", "Salut, y'avait un d�mon qui r�dait cette nuit, je lui ai r�gl� son compte", "Hello, tu viens chasser les d�mons avec moi ?" ],
		[ "Coucou !","Coucou ! Alors la vie est belle ?","Salut ! Tu as vu ? Il fait beau aujourdhui !","Bonjour, on va jouer !?","Salut ! Tu reviens me voir ?","Bonjour !","Bonjour ! Tu as bien dormi ?","Salut ! Tu vas bien aujourd'hui ?","Salut machin ! Tu vas bien ?", "Salut ! Ne fais pas trop de bruit, $other dort encore","Salut ! Je viens de terminer de d�jeuner"],
		[ null,"... ","Bonjour...","Bonjour, tu as bien dormi...?","Euh... Salut!","Coucou... Tu vas bien ?" ],
		[ "Ah enfin, te voil� !! On va chasser du d�mon ?", "Bien repos� ? alors on y va ?", "Salut, on va jouer ?", "Salut ! Avec $other, on t'attendait pour jouer" ],
		[ "Ah t'es revenu !! Je t'attendais", "Bonjour ! Tu as vu il fait super beau aujourd'hui !", "Bonjour! Tu as bien dormi ?", "Coucooouuuu !! Ca va bien ? On t'attendait avec $other", "$other m'avait dit que tu viendrais!!" ],
		[ "Salut ! Tu reviens me voir ?", "Bonjour !","Salut !", "Bonjour! Tu as bien dormi ?" ]
	]

	static var SENT_ENTER_MENU_FIRST = [
		[ null, null, "Pendant que tu �tais parti, je t'ai cueilli des fleurs !","$other et moi on t'a pr�par� un bouquet !","Ah te voil� ! Allons dans la for�t !", "Tu �tais o� ?", "J'ai un peu dormi pendant ton absence."],
		[ null, null, "Je me suis ennuy�e sans toi !", "Ahh ! Je t'ai pas vu arriver !", "Ho ? Tu es l� depuis longtemps", "J'ai un peu dormi pendant ton absence.", "Tu �tais parti o� ?", "J'ai eu peur, je t'avais perdu de vue" ],
		[ null, null, "Moi qui pensais que tu �tais parti pour de bon...", "Tiens ? Tu as r�ussi � retrouver ton chemin tout seul ?","Mince, tu m'as retrouv�e...","Tu comptes encore aller te perdre dans la for�t ?", "Si tu veux aller te pommer dans la for�t, �a sera sans moi...", "Oups, j'aurais d� aller me planquer dans le bassin !"],
		[ "Je me suis entra�n�e pendant ton absence !", "Je me suis entra�n�e contre $other, et je l'ai battue � plate couture !", "Ah te voil� ! Allons dans la for�t !", "Tu es de retour ? Partons � l'aventure !", "J'ai failli partir � la for�t sans toi...", "Je sais pas ce que j'ai, je p�te la forme aujourd'hui"],
		[ null, null, "Bon on va r�cup�rer de nouveaux machins magiques dans la for�t ?", "Je ne sais pas si c'est une bonne id�e de rester ici...",  "J'ai battu $other au sumo, pendant ton absence !!", "Tu �tais parti alors j'en ai profit� pour d�corer ton sac", "J'ai pas eu le temps de finir mon bouquet, attends encore un peu...", "Tu es parti m'acheter un cadeau ?" ],
		[ null, null, "*soupir*", "Tu m'emm�nes faire une promenade ?" ],
		[ "C'est bon, on peut aller jouer ?", "Laisse $other tranquille, et viens jouer", "Je crois que j'ai vu un d�mon � la lisi�re de la for�t" ],
		[ "C'est une belle journ�e pour jouer non ?", "Il est joli ce moulin l� bas !!", "J'ai eu peur, je t'avais perdu de vue", "C'est quoi ton adresse? Comme �a je pourrais t'envoyer plein choses !!", "Et si on rasait la for�t? Y aurait plus de d�mon, non?" ],
		[ "Il y a $other qui m'a dit qu'il y avait des d�mons dans la for�t, elle blaguait hein?", "H� tu sais quoi, je suis la plus nulle de tes f�es, vaudrait mieux partir avec une autre.", "Dis t'es s�r que c'est avec moi que tu veux jouer?", "Je resterais bien au bocal aujourd'hui pas toi?" ]
	]

	static var SENT_ENTER_MENU = [
		[ null,null,null,null,"Je crois que $other s'ennuie un peu...","Il faudrait faire un peu le tri dans ton sac"],
		[ null,null,null,null,"Si �a se trouve on pourrait devenir amis avec ces d�mons...","Il me rapelle de mauvais souvenirs ce bassin...","Ils servent � quoi tous ces objets dans ton sac ?","Quand est-ce que je pourrais apprendre de nouveaux sorts ?"],
		[ null,null,"Tu devrais vraiment penser � changer de coupe de cheveux...", "Enfin de retour, je crois que je vais faire une petite sieste","Ca fait cinq minutes qu'on est rentr�s et je m'ennuie d�j�","Je me demande si ces d�mons seraient pr�ts � embaucher une f�e desesp�r�e..."],
		[ "On part � l'aventure ! Je vais te montrer ce que je peux faire !","Tu as �t� long... On peut y aller maintenant ?","Si tu m'emm�nes avec toi tu n'auras rien � craindre des d�mons","Allez ! On se bouge !","Je suis pr�te pour partir � l'aventure !","Allez !! On y va !","C'est parti !","Tu viens ? "],
		[ null,null,"J'aimerais savoir ce qu'il y a au coeur de cette for�t", "J'ai vu Gromelin rentrer dans le moulin hier soir" ],
		[ null,null,"*soupir*" "Tu voudrais aller jouer?" ],
		[ "Allez ! On se bouge !", "On laisse $other ici, et on va en for�t ?", "T'as tout rang�, on peut y aller ?", "Allez !! On y va !" ],
		[ "On part � l'aventure ! Je vais te montrer ce que je peux faire !", "J'ai beaucoup discut� avec $other", "Et en fait y a quoi au fond de la for�t?", "Allez !! On y va !", "C'est parti !", "Tu viens ? ", "Vive Frutiparc !" ],
		[ "Il fait un peu froid l� non? Si on rentrait?", "Tu voudrais pas jouer tout seul pour changer?", "$other voudrait jouer il me semble", "J'aime pas trop la for�t �a me fait peur", " Y a des tucs bizarres dans la for�t on dirait" ]

	]

	static var SENT_MENU_AMBIENT = [
		[ null,null,null,null,"Je me demande ce que $other pense de moi..."," Tu crois que $other m'appr�cie ?", "Qu'est ce qu'il peut bien y avoir dans ce vieux moulin ?", "Ca fait longtemps que j'ai pas mang� $like !","Tu penses aller � la for�t aujourdhui ?","Tu as entendu cet oiseau ?","Le ciel est vraiment d�couvert aujourd'hui !","Tu as vu ce nuage ? il ressemble � $cloud !"],
		[ null,null,null,null,"Quand est ce qu'on mange ?", "Ca fait longtemps que j'ai pas mang� $like !","Tu penses aller � la for�t aujourdhui ?","Le vent m'emp�che de voler droit...","Je me demande si je reverrai un jour cet arc-en-ciel","Hihi ! Y'a un nuage qui ressemble � $cloud !"],
		[ null,null,null,null,"Je perds un peu plus chaque jour l'espoir de pouvoir � nouveau manger $like...","Allez va courir dans la for�t... Avec le bol que j'ai tu vas me ramener $dislike...", "Je ne souhaite une vie pareille � personne", "Arr�te de bouger dans tous les sens, tu me rends malade !", "Pourquoi tu demandes pas � $other de t'aider plut�t ?","Tu penses aller � la for�t aujourdhui ?", "Dis, t'es s�r que c'est avec moi que tu veux jouer?", "H� b� manque plus que Laura qui se casse la figure en fond et on se croirait chez les Ingalls." ],
		[ "Il me faut $like !","Je suis bien plus fort que $other","On fait une super �quipe tous les deux, pas besoin de $other dans nos pattes...","Gr�ce � mon entra�nement, je vais te d�barasser de tous ces d�mons en un clin d'oeil !","Tu penses aller � la for�t aujourdhui ?","Ho !? Ce nuage on dirait $cloud !"],
		[ null,null,null,null,"Ca fait longtemps que j'ai pas mang� $like !","Il me faut $like ! Je suis accroc!","Tu penses aller � la for�t aujourdhui ?","Tu as entendu cet oiseau ?","Le ciel est vraiment d�couvert aujourd'hui !","Haha ! Il est marrant ce nuage on dirait $cloud !","j'ai �t� prendre un bain dans le bassin","*chante* A l'aventure Compagnon, je suis partie vers l'horizon..." ],
		[ null,null,null,null,null,null,null,null,"J'aimerais beaucoup avoir $like...","*soupir*","Ho... Ce nuage... On dirait $cloud...", "J'esp�re qu'on croise pas des ours dans cette for�t"],
		[ "H�! y'a un nuage on dirait $cloud", "On va � la chasse au d�mon ?", "Si on allait chercher $like", "si on trouve $dislike, on l'offre � $other" ],
		[ "Ho!? Ce nuage on dirait $cloud !", "Quand est ce qu'on mange ?", "T'as d�j� appuy� sur F5 en pleine partie ?", "Que ceux qui aiment les d�mons appuyent sur alt-F4", "Je me demande ce que $other pense de moi...", "Tu crois que $other m'appr�cie ?", "Tu as entendu cet oiseau ?", "$other m'a confi� un secret....Tu veux le savoir ?", "Ca fait longtemps que j'ai pas mang� $like, on va en chercher ?", "Je pourrais pas avoir un bocal vert ou rose? parce que le bleu � force...", "J'ai vu $other jeter toutes ses affaires tout � l'heure. Tu lui dis pas que je te l'ai dit, hein !!", "C'est quoi ton frutisigne?", "Je suis all�e voir Mdamirma, elle m'a dit que j'�tais poire ascendant banane", "Dis t'as des nouvelles de Mdamirma?", "Tu connais la blague de l'ascenseur? Ah moi non plus..." ],
		[ "Je sais que tu aimes les for�ts mais on pourrait pas aller en ville hein?", "On pourrait rester ici et regarder les nuages", "J'aimerais beaucoup avoir $like...", "Tu as entendu cet oiseau ?", "Ho!? Ce nuage on dirait $cloud !"]

	]


	// MISSION

	static var MISSION = [
		{
			type:"Combat "
			test:[0,2]  // FORCE RAPIDITE LIFE INTEL CONCENTRA MANA
			desc:[
				"Liberer $victims du terrible $badName",
				"$badName terrorise $victims $fromLocation depuis $longTime, Volez � leur secours et terrassez cet ignoble bandit. Restez sur vos gardes durant cette mission$dif."
				"mis une bonne racl�e � $badName. Gr�ce � vous $victims ont enfin retrouv� la libert� !"
				"pas r�ussi � �liminer $badName... $victims $fromLocation attendent toujours leur sauveur..."
			]
		},
		{
			test:[1,3,3,4]
			type:"Recherche "
			desc:[
				"$faerieName a perdu $lostObject $atLocation.",
				"Pauvre $faerieName !! $lostObject lui manque vraiment ! Se rendre $atLocation est$dif, vous devrez partir � l'aube pour avoir une chance de le retrouver avant les $day de cette mission. "
				"r�ussi la mission ! $faerieName a vraiment l'air youpi-framboise, gr�ce � vous elle a retrouv� $lostObject!"
				"pas r�ussi leur mission... $faerieName pleure � chaudes larmes $lostObject. "
			]
		},
		{
			test:[3,3,4]
			type:"Enqu�te "
			desc:[
				"Disparition mysterieuse de $faerieName.",
				"$faerieName n'est pas rentr�e chez elle depuis plus d'une semaine. La derni�re fois que nous l'avons vue, elle $actionPastFun autour $fromLocation. Il faut la retrouver � tout prix ! Relevez le d�fi de cette mission$dif !"
				"retrouv� $faerieName !! Elle s'�tait perdue pr�s $2fromLocation"
				"pas retrouv� la trace de $faerieName... Cette mission est un �chec"
			]
		}
		{
			test:[1,1,1,2]
			type:"Course "
			desc:[
				"Grand marathon$period $fromLocation",
				"Cette course est r�put�e pour �tre $dif, si vous arrivez au bout en moins de $day, vous remporterez un prix$super !"
				"gagn� le marathon $fromLocation ! Le public applaudit cet exploit !"
				"pas fini le marathon $fromLocation � temps... Adieu la r�compense..."
			]
		}
		{
			test:[3,3,3,1]
			type:"Enqu�te "
			desc:[
				"$faerieName s'est fait voler $lostObject !",
				"Elle se promenait gentiment $atLocation quand soudain, $lostObject lui fut arrach� des mains par $thief... Retrouvez-le et r�cup�rez le bien de $faerieName."
				"r�solu le probl�me de $faerieName en retrouvant $lostObject! F�licitations, cette mission est un succ�s."
				"pas retrouv� $thief � temps. $faerieName ne reverra jamais $lostObject..."
			]
		}
		{
			test:[5,5,4]
			type:"Magie "
			desc:[
				"$kingdom est en danger !",
				"La barri�re magique qui prot�ge $kingdom est sur le point de c�der sous les assauts $fromInvader... Utilisez vos pouvoirs magiques pour renforcer le sceau des pr�tres !"
				"r�ussi � repousser les attaques $fromInvader, $kingdom est sauv� !! Cette mission est r�ussie !"
				"pas pu maintenir la barri�re magique des pr�tres assez longtemps. $kingdom a �t� envahi cette nuit m�me, par les troupes $fromInvader. Cette mission est un �chec..."
			]
		}
		{
			type:"Concours "
			test:[3,4,4]
			desc:[
			    "Grand concours $funGame.",
			    "$kingdom organise son grand concours $funGame, vous allez devoir affronter de nombreux adversaires, et remporter un prix$super !"
			    "gagn� le grand concours $funGame, cette victoire est f�t�e dans tout $kingdom!!!"
			    "pas r�ussi � gagner le concours $funGame, il y avait de tr�s bons joueurs, tant pis pour la r�compense..."
		    ]
        }
		{
			type:"Concours histoires "
			test:[3,3,4]
			desc:[
			    "Grand concours $history"
			    "La grande biblioth�que situ�e dans $kingdom, organise un grand concours $history. Beaucoup de conteurs des contr�es alentours vont se d�placer pour cette occasion."
			    "gagn� le concours $history. Le public �tait tr�s nombreux, et a applaudi la performance"
			    "pas r�ussi � plaire au public du concours $history, le public a failli s'endormir"
			]
	       }

	]

	static var MISSION_DIF = [
		" tr�s facile"
		" facile"
		" simple"
		" p�nible"
		" difficile"
		" tr�s difficile"
		" cauchemardesque"
	]

	static var MISSION_DIF_RANK = [
		"D "
		"C "
		"B "
		"A "
		"A+ "
		"A++ "
		"A+++ "
	]

	static var GROMELIN_OPEN = [
		"Grumph ?"
		"Mmmmh ?"
		"Grrr..."
		"Pfff.."
		"Grumph !"
		"Groumph !"
	]

	static var GROMELIN_HELLO = [
		"Ah c'est toi ?"
		"Tiens, c'est toi ?"
		"Oh... Encore toi ?"
		"Grrr...mmmh..."
		"Ah ! Te v'la..."
	]


	// WORD LIST
	static var TRUC = ["un truc","un machin","un nouveau truc","un nouveau machin","un bidule"]

	static var CLOUD_SHAPE = [
		"une autruche"
		"une bouteille"
		"un oiseau"
		"une aubergine"
		"un ananas"
		"un cheval"
		"un serpent"
		"une paire de ciseaux"
		"une main"
		"un visage"
		"une poule"
		"un tr�s gros morceau de sucre"
		"un panier"
		"une �toile"
		"un labrador"
		"un ch�teau"
		"$other"
		"un pichet"
		"une fourchette"
		"un sablier"
		"un kikooz"
		"une tzongre"
		"la bouille de Gaspard"
		"une totoche"
	]

	static var TOTOCHE_WORD = [
		"mmph!!"
		"mmm..."
		"m.."
		"..."
		"mmpf..."
		"pfmm!"
		"mn..mmm...!"
		"mmf"
		"mmh..mh"
		"...oummph"
		"...mm..."
		"gnmmmf..."
		"mpf!"
	]

	static var WORD_FROM_INVADER = [
		"des ignobles trolls des montagnes"
		"des impitoyables hommes-mangoustes du sud"
		"des affreux hommes-lezards"
		"de Krom le g�ant malicieux"
		"de Sakurim le dragon des oc�ans"
		"des cruels tournesols des enfers"
	]

	static var WORD_LONG_TIME = [
		"plus de 7 ans"
		"des mill�naires"
		"plus d'un si�cle"
		"le d�but de la semaine"
		"plus de milles lunes"
		"des lustres"
	]

	static var WORD_HISTORY = [
		"d'histoires droles"
		"de contes"
		"de poemes"
		"d'enigmes"
		"du plus gros mensonge"
		"de legendes"
		"de fables"
		"d'histoires effrayantes"

	]

	static var WORD_FUN_GAME = [
		"d'echecs"
		"de dames"
		"de fruti belote"
		"de ch�teau de cartes"
		"de Pierre Feuille Ciseau"
		"du plus grand chiffre"
		"de charades"
		"de mime"
		"de rebus"
		"de dessins"
	]

	static var WORD_KINGDOM = [
		"le royaume des Euriglides"
		"le royaume de Fort Fort Lointain"
		"le royaume de Pompulinu"
		"le royaume de Timoth� le chauve"
		"l'empire biramique"
		"l'empire de Chormi le s�ge"
		"l'empire OrnoSimeen"
		"l'empire des fleurs sauvages"
		"Le college de magie de PocheVille"
		"Le fort mis�rable de Pocheville"
		"Le temple de Yurihle"

	]

	static var WORD_THIEF = [
		"un colibri envout�"
		"un chat tr�s rapide"
		"une mygale farceuse"
		"une grenouille � moiti� folle"
		"un l�zard d�sesp�r�"
		"un singe alcoolique"
		"un �cureuil avare"
		"un lutin cleptomane"
		"$2faerieName"
		"$badName"
		"un iguane tr�s v�loce"
		"une belette"
		"un lapin acrobate"
	]

	static var WORD_SUPER = [ // MASCULIN
		" super"
		" fabuleux"
		" incroyable"
		" fantastique"
		" g�nial"
		" vraiment hype"
		" compl�tement fum�"
		" hallucinant"
		" super tendance"
		" vraiment g�nial"
	]

	static var WORD_PERIOD = [	// MASCULIN // PAS DE CAR SPECIAUX
		" trimestriel"
		" annuel"
		" journalier"
		" de la semaine"
		" du siecle"
		" mensuel"
	]

	static var WORD_VICTIMS = [	// PAS DE CAR SPECIAUX
		"les nains"
		"les farfadets"
		"les coccinelles"
		"les libellules"
		"les trolls"
		"les poussins"
		"les lapinous"
		"les hommes champignons"
		"les tzongres"
	]

	static var WORD_FROM_LOCATION = [	// PAS DE CAR SPECIAUX
		"du moulin"
		"de la foret enchantee"
		"du cimetierre abandonne"
		"de la source endormie"
		"des champs de mais"
		"de la plaine voisine"
		"du champ de betterave"
		"de la ferme du vieux sam"
		"de la vall�e de poro gora"
		"des bois sauvages"
		"du marais tondu"
		"du lac Tsonn"
		"de la cascade"
		"de Pochevile"

	]

	static var WORD_AT_LOCATION = [		// PAS DE CAR SPECIAUX
		"aux grottes d'Hammerfest"
		"a la riviere de Simedia"
		"a la vall�e de poro gora "
		"au marais tondu"
		"a la clairiere du bucheron"
		"au mont Pigremel"
		"a la colline des anges"
		"au pic du sud"
		"au bout du monde"
		"derriere la dune de Moorg"
		"dans les bois obscures"
		"au fronti�re du royaume"
		"sur la route de PocheVille"
		"a l'eglise"
		"en pleine foret"
		"au milieu du rond point"
		"a la f�te du village"
		"au restaurant"
		"a l'antre des hippos"
		"a la taverne de PocheVille"
		"a la cascade"
	]

	static var WORD_BAD_NAME = [		// PAS DE CAR SPECIAUX
		"Sorog le rouge"
		"Tourneboule le chetif"
		"Cormerone le sorcier"
		"Goyave le solitaire"
		"Tom tom le piment qui arrache"
		"Morkar le necromancien"
		"Bishamon le pourfendu"
		"Choh rizo le visqueux"
		"Pigrom le dodu"
		"Salum le berger diabolique"
		"Nedy le cavalier du tartare"
		"Goubij le calif menteur"
		"Gabaloom l'homme ours"
		"Birmain de Moquepaille"
		"Tocheto le bossu"
		"Polchoi le sinistre vampelin"
		"Cormocroute le rassi"
		"Shalala le menestrel d�chu"
	]

	static var WORD_ACTION_PAST_FUN = [
		"prenait son d�jeuner"
		"bronzait paisiblement au soleil"
		"dormait comme une b�che"
		"jouait au tennis avec $2faerieName"
		"d�truisait un champignon � coups de masse"
		"peignait un nouveau tableau"
		"faisait du v�lo"
		"s'entra�nait au lancer de poids"
		"mangeait une cerise"
		"mangeait une frite"
		"faisait de la balan�oire"
		"construisait une cabane"
		"d�pla�ait une grosse pierre"
		"portait un cafard sur son dos"
		"cultivait des carottes"
		"faisait du shopping"
		"discutait avec $2faerieName"
		"sculptait une morille"
		"jouait aux cartes avec $2faerieName"
		"faisait de la balan�oire"
		"jouait � la marelle"
	]

	static var WORD_LOST_OBJECT = [		// PAS DE CAR SPECIAUX
		"sa theiere"
		"sa boucle d'oreille"
		"son nounours"
		"son sac"
		"son talisman"
		"sa bague en jade"
		"sa paire de ciseaux"
		"son journal"
		"son portefeuille"
		"une petite boite en forme de coeur"
		"une panier a fruits"
		"son disque vinyl de Dave"
		"sa cassette de Claude Fran�ois"
		"son DVD des plus belles choregraphies de Tourneboule"
		"sa trousse de maquillage"
		"son telephone portable"
		"sa montre"
		"son epingle a cheveux"
		"son tube de vert � levres"
		"une dent"
		"son sandwich"
		"son sac"
		"sa carte de bus"
		"sa bouee jaune"
		"son livre d'images sur les orang-outans"
		"son epluche legume"
		"son ramasse banane"
		"son tir agrafes"
		"son velo d'appartement"
		"son ticket de tranport oie sauvage"
		"un poulet en caoutchouc avec une poulie au milieu"
		"une quantite incroyable de pin's collector de kaluga"
		"sa broche piwali"
		"sa mini frusion"
	]





	static function getSent(list){
		return list[Std.random(list.length)]
	}

	static function getItemFamily(n){
			if( 0 <= n && n < 30 ){
				return "un objet magique"
			}
			if( 40 <= n && n < 50 ){
				return Lang.TRUC[Std.random(Lang.TRUC.length)]
			}
			if( 50 <= n && n < 60 ){
				return "une orbe"
			}
			if( 60 <= n && n < 70 ){
				return Lang.TRUC[Std.random(Lang.TRUC.length)]+" color�"
			}
			if( 70 <= n && n < 80 ){
				return "une potion"
			}
			if( 80 <= n && n < 90 ){
				return "un nouveau sac"
			}

			if( 100 <= n && n < 200 ){
				return "un parchemin"
			}

			if( 200 <= n && n < 300 ){
				return "un livre"
			}

			switch(n){
				case 30:
					return "un bocal"
					break;
				case 31:
					return "une cl�"
					break;
			}

			return "un Kouglof"
	}


//{
}



















