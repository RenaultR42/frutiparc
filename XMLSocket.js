const net = require('net');

const me = "Renault";

let listFrutiz = new Map([
	["Renault", {
		experience: 424242,
		rank: 42,
		// starts with
		// 00 = basic bouille
		// 0b = yota
		// 0c = hiko
		// 0d = Gromelin
		// 0e = Egerie
		// 0n = Gaspard
		// 0o = Dimitri
		frutibouille: "00000d0r020f0l0000000000",
		mute: "0000-00-00 00:00:00",
		status: "01011",
		presence: 1,
		gender: "M",
		birthday: "1991-01-01.00:00:00",
		frutijob: "Animateur",
		firstsign: 6,
		secondsign: 7,
		registerDate: "2003-11-15.00:00:00",
		frutirate: 89,
		blog: "Renault KiwiX And Co ©",
		country: 1,
		region: 0,
		city: "Namur",
		job: "Blagueur",
		firstname: "C-A",
		lastname: "Run",
		comment: "Frutimarié à tigrenoir, frutipapa de SakurAmalia et EmiLicorne",
		modo: 1,
		anim: 1,
		link: "http://renault.up.md/FrutiStats/",
	}],
	["tigrenoir", {
		experience: 33,
		rank: 1337,
		frutibouille: "0004060N02000O030y0t0j00",
		mute: "0000-00-00 00:00:00",
		status: "00000",
		presence: 1,
		gender: "F",
		birthday: "1992-01-01.00:00:00",
		frutijob: "Animatrice",
		firstsign: 0,
		secondsign: 0,
		registerDate: "2003-12-25.00:00:00",
		frutirate: 17,
		blog: "",
		country: 1,
		region: 0,
		city: "Namur",
		job: "Fleuriste",
		firstname: "J",
		lastname: "Run",
		comment: "Frutimariée à Renault, frutimaman de SakurAmalia et EmiLicorne",
		modo: 0,
		anim: 1,
		link: "",
	}],
	["SakurAmalia", {
		experience: 5,
		rank: 4242,
		frutibouille: "0004040J020k0P00000t0j00",
		mute: "0000-00-00 00:00:00",
		status: "00000",
		presence: 0,
		gender: "F",
		birthday: "2019-01-01.00:00:00",
		frutijob: "Frutiz",
		firstsign: 0,
		secondsign: 0,
		registerDate: "2019-01-01.00:00:00",
		frutirate: 5,
		blog: "",
		country: 1,
		region: 0,
		city: "Namur",
		job: "Dresseuse Pokémon",
		firstname: "A",
		lastname: "Run",
		comment: "Frutifille de tigrenoir et Renault, frutisoeur de EmiLicorne",
		modo: 0,
		anim: 0,
		link: "",
	}],
	["EmiLicorne", {
		experience: 2,
		rank: 424242,
		frutibouille: "0004070K020n0e0a000O0000",
		mute: "2030-01-01 00:00:00",
		status: "00000",
		presence: 0,
		gender: "F",
		birthday: "2022-01-01.00:00:00",
		frutijob: "Frutiz",
		firstsign: 0,
		secondsign: 0,
		registerDate: "2022-01-01.0000:00",
		frutirate: 2,
		blog: "",
		country: 1,
		region: 0,
		city: "Namur",
		job: "Dresseuse de dragons",
		firstname: "É",
		lastname: "Run",
		comment: "Frutifille de tigrenoir et Renault, frutisoeur de SakurAmalia",
		link: "Commentaire",
		modo: 0,
		anim: 0,
	}],
	["kasparov", {
		experience: 5353,
		rank: 53,
		frutibouille: "0005000Q010t0a04010t0w00",
		mute: "0000-00-00 00:00:00",
		status: "00000",
		presence: 1,
		gender: "M",
		birthday: "1993-01-01.00:00:00",
		frutijob: "Modérateur",
		firstsign: 5,
		secondsign: 3,
		registerDate: "2003-11-15.00:00:00",
		frutirate: 50,
		blog: "",
		country: 0,
		region: 2,
		city: "Cachan",
		job: "Détective",
		firstname: "Rémi",
		lastname: "Sans famille",
		comment: "[Frutimarié à Bee le Vendredi 19 Decembre 2008 à 21h42 et 6 secondes.] Вив каспаров [19:38:04] Babylou: Ah oui tu as raison kaspa [Animateur du 29 Aout 2007 au 18 Janvier 2009] [Modérateur depuis le 23 Janvier 2008]",
		link: "http://spikeo.no-ip.org/",
		modo: 1,
		anim: 0,
	}],
	["Gaspard", {
		experience: 9999999,
		rank: 0,
		frutibouille: "0n0000000000000000000000",
		mute: "0000-00-00 00:00:00",
		status: "00000",
		presence: 1,
		gender: "M",
		birthday: "2004-03-24.00:00:00",
		frutijob: "Aide de Frutiparc",
		firstsign: 0,
		secondsign: 0,
		registerDate: "2004-03-24.00:00:00",
		frutirate: 0,
		blog: "",
		country: 0,
		region: 0,
		city: "",
		job: "",
		firstname: "Gaspard",
		lastname: "",
		comment: "",
		modo: 0,
		anim: 0,
		link: "",
	}],
]);

function getFrutizInfo(name) {
	return listFrutiz.get(name);
}

function answerFrutizInfoComplete(name) {
	const info = getFrutizInfo(name);
	if (info === undefined) {
		return "";
	}

	return "x=\"" + info.experience + "\" sx=\"" + info.gender + "\" bd=\"" + info.birthday + "\" fj=\"" + info.frutijob + "\" fs=\"" + info.firstsign + "\" fsb=\"" + info.secondsign + "\" ft=\"" + info.registerDate + "\" fr=\"" + info.frutirate + "\" bn=\"" + info.blog + "\" co=\"" + info.country + "\" rg=\"" + info.region + "\" ct=\"" + info.city + "\" rj=\"" + info.job + "\" fn=\"" + info.firstname + "\" ln=\"" + info.lastname + "\" cm=\"" + info.comment + "\" su=\"" + info.link + "\" m=\"" + info.modo + "\" a=\"" + info.anim + "\"";
}

function answerFrutizTrace(name) {
	const info = getFrutizInfo(name);
	if (info === undefined) {
		return "";
	}

	return "p=\"" + info.presence + "\" s=\"" + info.status + "\" mu=\"" + info.mute + "\" f=\"" + info.frutibouille + "\"";
}

function answerFrutizMe(name) {
	const info = getFrutizInfo(name);
	if (info === undefined) {
		return "";
	}

	return "x=\"" + info.experience + "\" f=\"" + info.frutibouille + "\"";
}

function getValueFromParam(cmd, param) {
	const array = cmd.match(param + "=([\"'])(.*?)\\1");
	// console.log(array);
	if (Array.isArray(array) && array.length >= 3) {
		return array[2];
	}

	return "";
}

function getValueFromNode(cmd) {
	const array = cmd.match(">(.*?)</");
	// console.log(array);
	if (array !== null && array.length >= 2) {
		return array[1];
	}

	return "";
}

const tcpServer = net.createServer(
    (socket) => {
        console.log('a client connected');

        socket.on("data", (clientData) => {
            console.log(`client sent ${clientData}`);
            let answers = [];
            const string = String(clientData);

            // Server date
            // Output as node value
            // Format: YYYY-MM-DD.HH:MM:SS
            if (clientData.indexOf("<c />") !== -1) {
                answers.push("<c>2025-06-07.12:21:10</c>\0");
            }

            // IP of user
            // Output ad node value
            if (clientData.indexOf("<d />") !== -1) {
                answers.push("<d>127.0.0.1</d>\0");
            }

            // Ping
            // Sent back the message to the sender
            if (clientData.indexOf("<e />") !== -1) {
                answers.push("<e />\0");
            }

            // Users's info after login
            // Outputs:
            // l = user login
            // x = experience
            // f = frutibouille
            if (clientData.indexOf("<k ") !== -1) {
                const info = answerFrutizMe(me)
                answers.push("<k l=\"" + me + "\" " + info + " />\0");
            }

            // Users's info complete
            // Input + Output:
            // u = user login
            // r = rid
            // Output:
            // x = experience
            // sx = gender
            // bd = birthday date
            // fj = FrutiJob
            // fs = frutisign index
            // fsb = second frutisign index
            // ft = register date
            // bn = blog name
            // fr = "frutirate"
            // co = country index
            // rg = region index
            // ct = city
            // rj = real job
            // fn = first name
            // ln = last name
            // cm = comment
            // su = link
            if (clientData.indexOf("<aq ") !== -1) {
                const rid = getValueFromParam(string, "r");
                const user = getValueFromParam(string, "u");
                const info = answerFrutizInfoComplete(user);
                answers.push("<aq r=\"" + rid + "\" u=\"" + user + "\" " + info + " />\0");
            }

            // Trace
            // Input / output
            // u = user login
            // Output
            // p = presence : 2 = invisible
            // s = status id (eat, playing to a game, etc.)
            // mu : end of mute
            // f = frutibouille
            if (clientData.indexOf("<z ") !== -1) {
                const user = getValueFromParam(string, "u");
                const info = answerFrutizTrace(user);
                answers.push("<z u=\"" + user + "\" " + info + " />\0");
            }

            if (clientData.indexOf("<z><u ") !== -1) {
                const users = string.split("<u ");
                let answer = "<z>";

                for (let i = 1; i < users.length; i++) {
                    const user = getValueFromParam(users[i], "u");
                    const info = answerFrutizTrace(user);
                    answer += "<u u=\"" + user + "\" " + info + " />";
                }

                answer += "</z>\0";
                answers.push(answer);
            }

            // List public channels
            // Output
            // One channel per node
            // g = channel id: quizz, pomme, abricot, poire, fraise, citron, kiwi, raisin, orange, cerise, banane, rencontre
            // n = nb connected users
            // desc = channel name
            if (clientData.indexOf("<q />") !== -1) {
                answers.push("<q><g g=\"quizz\" n=\"2\"><desc>Salon Anim</desc></g></q>\0");
            }

            // Join channel
            // Intput / Output
            // g = channel
            // p = password
            // Output
            // Channel description
            if (clientData.indexOf("<o ") !== -1) {
                const channel = getValueFromParam(string, "g");
                answers.push("<o g=\"" + channel + "\" p=\"\"><desc>Salon Anim</desc></o>\0");
            }

            // User list in channel
            // Input / outputs
            // g = channel
            // Output
            // One <u> node per user with relevant info to get name, city, age, gender, level, etc.
            if (clientData.indexOf("<p ") !== -1) {
                const channel = getValueFromParam(string, "g");
                const users = ["kasparov", "Renault"];
                let answer = "<p g=\"" + channel + "\">";

                for (let i = 0; i < users.length; i++) {
                    const info = answerFrutizInfoComplete(users[i]);
                    const info2 = answerFrutizTrace(users[i]);

                    answer += "<u u=\"" + users[i] + "\" " + info + " " + info2 + " />";
                }

                answer += "</p>\0";
                answers.push(answer);
            }

            // Msg sent to channel
            // Input / output
            // t = type
            //     * m for message
            //     * a for action (regarde ailleurs, bubble gum, etc.)
            //     * c for animator message (blue pen)
            //     * w for moderator message (red pen)
            //     * i to open a box with height, width, url and title
            //     * b to set wallpaper, format: <alpha>;<url>
            //     * g to give kikooz to another frutiz
            // p = pen index
            // g = channel id where the message comes from
            // Message as node value
            // Sent message must be sent back to its sender!
            if (clientData.indexOf("<t ") !== -1) {
                const channel = getValueFromParam(string, "g");
                const type = getValueFromParam(string, "t");
                const pen = getValueFromParam(string, "p");
                const msg = getValueFromNode(string);

                if (type === "m" || type === "") {
                    answers.push("<t u=\"Renault\" t=\"m\" p=\"" + pen + "\" g=\"" + channel + "\">" + msg + "</t>\0");
                    answers.push("<t u=\"kasparov\" t=\"w\" g=\"" + channel + "\">Alors " + msg + " moi j'ai dit</t>\0");
                    answers.push("<t u=\"kasparov\" t=\"c\" g=\"" + channel + "\">Msg d'un anim</t>\0");
                    answers.push("<t u=\"bumdum\" t=\"i\" g=\"" + channel + "\"><box u=\"http://localhost/wal/pi.jpg\" w=\"150\" h=\"150\">Titre de la fenêtre</box></t>\0");
                    answers.push("<t u=\"Renault\" t=\"b\" g=\"" + channel + "\">255;wal/pi.jpg</t>\0");
                    answers.push("<t u=\"kasparov\" t=\"g\" g=\"" + channel + "\"><kikooz u=\"bumdum\" k=\"50\" /></t>\0");
                } else if (type === "a") {
                    answers.push("<t u=\"Renault\" t=\"a\" g=\"" + channel + "\">" + msg + "</t>\0");
                } else if (type === "c") {
                    answers.push("<t u=\"" + me + "\" t=\"c\" g=\"" + channel + "\">" + msg + "</t>\0");
                }
            }

            // Change channel topic
            // Inputs / outputs:
            // r = rid
            // g = channel id
            // node = new channel name
            if (clientData.indexOf("<an ") !== -1) {
                answers.push(clientData);
            }

            // Open private channel with someone
            // Inputs / outputs:
            // u = other user
            // node = channel name
            if (clientData.indexOf("<r ") !== -1) {
                answers.push(clientData);
            }

            // Invite someone to a channel
            // Input
            // g = channel id
            // u = user
            // The message must be sent to the right frutiz
            if (clientData.indexOf("<ab ") !== -1) {
                const channel = getValueFromParam(string, "g");
                const user = getValueFromParam(string, "u");

                // join
                answers.push("<v u=\"" + user + "\" g=\"" + channel + "\" />\0");
            }

            // Ban an user from channel
            // Input
            // g = channel
            // e = date
            // u = user
            if (clientData.indexOf("<m ") !== -1) {
                const channel = getValueFromParam(string, "g");
                const user = getValueFromParam(string, "u");

                // leave
                answers.push("<u u=\"" + user + "\" g=\"" + channel + "\" />\0");
            }

            // Search users (Bananocle)
            // Inputs / outputs
            // s = start index
            // Inputs
            // l = number fo expected answers
            // u = username
            // bdm = birthday max (format YYYY-MM-DD)
            // bd = birthday min (format YYYY-MM-DD)
            // co = country code
            // rg = region code
            // sx = gender (M for men, F for women)
            // Outputs
            // n = number of found users
            if (clientData.indexOf("<bn ") !== -1) {
                const start = getValueFromParam(string, "s");
                const length = getValueFromParam(string, "l");
                const username = getValueFromParam(string, "u");
                const bdMax = getValueFromParam(string, "bdm");
                const bdMin = getValueFromParam(string, "bd");
                const country = getValueFromParam(string, "co");
                const region = getValueFromParam(string, "rg");
                const gender = getValueFromParam(string, "sx");

                let listUsers = [];
                for (const [name, desc] of listFrutiz) {
                    let toInclude = true;

                    if (username !== "" && name.search(username) === -1) {
                        toInclude = false;
                    } else if (bdMax !== "" && bdMax < desc.birthday) {
                        toInclude = false;
                    } else if (bdMin !== "" && bdMin > desc.birthday) {
                        toInclude = false;
                    } else if (country !== "" && Number(country) !== desc.country) {
                        toInclude = false;
                    } else if (region !== "" && Number(region) !== desc.region) {
                        toInclude = false;
                    } else if (gender !== "" && gender !== desc.gender) {
                        toInclude = false;
                    }

                    if (toInclude) {
                        listUsers.push(name);
                    }
                }

                let answer = "<bn s=\"" + start + "\" n=\"" + listUsers.length + "\">";

                for (let i = 0; i < listUsers.length && i < length; i++) {
                    const infoComplete = answerFrutizInfoComplete(listUsers[i]);
                    const infoBasic = answerFrutizTrace(listUsers[i]);
                    answer += "<user u=\"" + listUsers[i] + "\" " + infoBasic + " " + infoComplete + " />";
                }

                answer += "</bn>\0";
                answers.push(answer);
            }

            // XP rank
            // Output:
            // p = rank value
            if (clientData.indexOf("<bm />") !== -1) {
                answers.push("<bm p=\"42\" />\0");
            }

            // Mute
            // Inputs
            // e = date of end of mute
            // u = user
            if (clientData.indexOf("<az ") !== -1) {
                const end = getValueFromParam(string, "e");
                const user = getValueFromParam(string, "u");

                for ([username, info] of listFrutiz) {
                    if (user === username) {
                        info.mute = end;
                    }
                }

                const trace = answerFrutizTrace(user);
                answers.push("<z u=\"" + user + "\" " + trace + " />\0");
            }

            // New status
            // Input:
            // s = status value
            // Message must be sent back to the sender
            if (clientData.indexOf("<af ") !== -1) {
                const status = getValueFromParam(string, "s");
                answers.push("<af s=\"" + status + "\" />\0");
            }

            // New bouille
            // Input
            // f = frutibouille
            // Message must be sent back to the sender
            if (clientData.indexOf("<ae ") !== -1) {
                const bouille = getValueFromParam(string, "f");
                getFrutizInfo(me).frutibouille = bouille;
                answers.push("<ae f=\"" + bouille + "\" />\0");
            }

            // New XP event
            // Input:
            // f = flag id which can be 10, 11 or 12
            // Increase on server side based on flag, 1 per flag number per day
            if (clientData.indexOf("<bg ") !== -1) {
                const flag = getValueFromParam(string, "f"); 
            }

            // Award game
            // Input / output
            // g = game name (short)
            // r = rid
            // Output
            // One <a> node per player, max 3 players
            // v = final position (1st, 2nd, 3rd)
            // u = user
            // d = number of days in this position
            if (clientData.indexOf("<ha ") !== -1) {
                const rid = getValueFromParam(string, "r");
                const game = getValueFromParam(string, "g");

                let answer = "<ha r=\"" + rid + "\" g=\"" + game + "\">";
                answer += "<a v=\"1\" u=\"Renault\" d=\"3\" />";
                answer += "<a v=\"2\" u=\"tigrenoir\" d=\"1\" />";
                answer += "<a v=\"3\" u=\"kasparov\" d=\"33\" />";
                answer += "</ha>\0";

                answers.push(answer);
            }

            // Award users
            // Input / output
            // u = user
            // r = rid
            // Output
            // One <a> node per game, max 1 per game
            // Only if finished 1st, 2nd or 3rd last day
            // g = game name (short)
            // n = full game name
            // d = number of days in this position
            // v = final position (1st, 2nd or 3rd only)
            if (clientData.indexOf("<hb ") !== -1) {
                const rid = getValueFromParam(string, "r");
                const user = getValueFromParam(string, "u");

                let answer = "<hb r=\"" + rid + "\" u=\"" + user + "\">";
                answer += "<a g=\"bkiwi\" n=\"Burning kiwi\" d=\"3\" v=\"1\" />";
                answer += "<a g=\"snake3\" n=\"Frutisnake 2\" d=\"1\" v=\"2\" />";
                answer += "<a g=\"kaluga\" n=\"Kaluga\" d=\"33\" v=\"3\" />";
                answer += "</hb>\0";

                answers.push(answer);
            }

            // Fcard list of complete games
            // Input / output
            // u = user
            // r = rid
            // Output
            // One <g> node per unlocked game
            // g = game name (short, tied to lang_french.xml)
            if (clientData.indexOf("<ef ") !== -1) {
                const rid = getValueFromParam(string.substr(string.indexOf("<ef ")), "r");
                const user = getValueFromParam(string, "u");

                let answer = "<ef r=\"" + rid + "\" u=\"" + user + "\">";
                answer += "<g g=\"bkiwi\" />";
                answer += "<g g=\"snake3\" />";
                answer += "<g g=\"mb2\" />";
                answer += "<g g=\"swapou2\" />";
                answer += "<g g=\"kaluga\" />";
                answer += "<g g=\"bandas\" />"
                answer += "<g g=\"grapiz\" />";
                answer += "<g g=\"miniwave\" />";
                answer += "<g g=\"minipixiz\" />";
                answer += "</ef>\0";

                answers.push(answer);
            }

            // Fcard details per game
            // Input / output
            // r = rid
            // u = user
            // g = game (short)
            // Output
            // Complex objects, specific per game
            // Based on MT serializer:
            // "N" identifier before numbers
            // "S" identifier before strings
            // "U" identifier for undefined / null
            // "B" identifier for boolean
            // No extra space allowed
            // Array split per ";" character + final ";" after last element
            if (clientData.indexOf("<ea ") !== -1) {
                const rid = getValueFromParam(string, "r");
                const user = getValueFromParam(string, "u");
                const game = getValueFromParam(string, "g");

                let answer = "<ea r=\"" + rid + "\" u=\"" + user + "\" g=\"" + game + "\">";
                if (game == "bkiwi") {
                    // $wss = Won Fruticoupe as boolean
                    // $ws = Won Fruticoupe XL as boolean
                    // $wcs = Won Elite cup as boolean
                    // $wc = Won Elite cup XL as boolean
                    // $ac = list of unlocked cars. Order: "ultra orange", "uwe wing", "fury hun", "sonic brain" and "kiwix" as boolean
                    // $ts = list of best time trials, one object per track. Undefined can be used to skip track.
                    //       Track order: "Green hill", "Banana derby", "Terre grise", "Solstice", "Jupiter IV" and "Mistral kiwi"
                    //       * $fcLap = best lap time in milliseconds as number
                    //       * $lapCar = car used for the best lap time. Index based on $ac order as integer
                    //       * $fcTotal = best complete race time in milliseconds as number
                    //       * $totalCar = car used for the best race time. Index based on $ac order as integer
                    answer += "{$wss:B1;$ws:B1;$wcs:B1;$wc:B0;$ac:[B1;B1;B0;B0;B1;];$ts:[{$fcLap:N58000;$lapCar:N0;$fcTotal:N100000;$totalCar:N1;};U;{$fcLap:N123456789;$lapCar:N2;$fcTotal:N1234567890;$totalCar:N4;};];}";
                } else if (game == "snake3") {
                    // $record = max score as integer
                    // $fruits: list of eaten fruits in the order, the number is the number of eaten fruits. 22 last fruits are negative. Can be undefined or integers
                    answer += "{$record:N123456789;$fruits:[N20;N19;N18;N5;U;N1]}";
                } else if (game == "mb2") {
                    // $dungeons_done: list of dungeons done successfully as boolean. Order: Wind, Fire, Water, Earth and Tournéboulé
                    // $records: list of objects for each timetrials. Order of trials: yellow, green, red, orange, blue, grey and purple
                    // Record per track are ordered from lowest time to highest time.
                    //           * $c: is the timetrial is done by "computer" as reference. Boolean value
                    //           * $t : time in 100th of seconds (or milliseconds * 10)
                    // $classic_score = maximum score on classic mode as number
                    // TODO: compile FLA of mb2_ball.swf
                    answer += "{$dungeons_done:[B1;B0;B1;B0;B1;];$records:[[{$c:B1;$t:N12000;};{$c:B1;$t:N18000;};{$c:B0;$t:N18123;};];[{$c:B0;$t:N61234;};{$c:B0;$t:N15236;};{$c:B0;$t:N20001;};];];$classic_score:N40;}";
                } else if (game == "swapou2") {
                     // $record = maximum score of challenge mode as integer
                     // $classic_record = maximum score of classic mode
                     // $swaps = number of swaps in the game
                     // $chars = array of unlocked characters as boolean. Order: "Dimitri", "Natacha", "Mr Sel", "Mr Poivre", "Chavelier Moutarde", "Tomtom" and "Wasabii"
                     // TODO: compile FLA of swapou_chars.swf
                    answer += "{$record:N35000;$classic_record:N123456789;$swap:N4242;$chars:[B0;B1;B0;B1;B0;B1;B0;];}";
                } else if (game == "kaluga") {
                    // Tzongres are numbers indexed from 0. Order: "kaluga", "piwali", "nalika", "gomola" and "makulo"
                    // $classic: object of "essai" mode
                    //           * $s = max score
                    //           * $t = used Tzongre
                    // $trial: object for other modes
                    //         * $tria = triathlon
                    //                   * $s = max score
                    //                   * $t = used Tzongre
                    //         * $hept = heptathlon
                    //                   * $s = max score
                    //                   * $t = used Tzongre
                    //         * $list = other olympic games as array. Order: "lancer de vers","dexteripomme","lancer d'ecureuil","planter de vers","lancer de fourmi","plantapomme","course de grenouille"
                    //                   * $tz = array of objects of scores indexed by used tzongres
                    //                           * $s: max score for this game with this tzongre as Number
                    // $mode = array of array of booleans to know if modes are accomplished
                    //         * Third array is used to know status of chrono which is used by the frutinfo display
                    // $chrono = object for mode chrono
                    //           * $st = stage as number
                    //           * $level = array of scores as objects. Order of difficulties: easy, standard, difficult and hell
                    //                     * Array of scores as numbers
                    // $survival = object for mode survival
                    //           * $st = stage as number
                    //           * $level = array of scores as objects. Order of difficulties: easy, standard, difficult and hell
                    //                      * $s = max score
                    //                      * $t = used tzongre
                    // $invasion = object for mode invasion
                    //           * $st = stage as number
                    //           * $level = array of scores as objects. Order of difficulties: easy, standard, difficult and hell
                    //                      * $s = max score
                    //                      * $t = used tzongre
                    // $ring = object for mode ring
                    //           * $st = stage as number
                    //           * $level = array of scores as objects. Order of difficulties: easy, standard, difficult and hell
                    //                      * $s = max score
                    //                      * $t = used tzongre
                    // $stat = generic statistics as object
                    //         * $fruit = number of collected fruits as number
                    // TODO: compiler FLA for panier
                    answer += "{$classic:{$s:N123;$t:N3;};$trial:{$tria:{$s:N456;$t:N2;};$hept:{$s:N789;$t:N1;};$list:[{$tz:[{$s:N500;};];};{$tz:[{$s:N1000;};];};{$tz:[{$s:N1500;};];};{$tz:[{$s:N2500;};];};{$tz:[{$s:N3500;};];};{$tz:[{$s:N4500;};];};{$tz:[{$s:N5000;};];};];};$mode:[[B1;B1;];[B1;B1;];[B1;B1;];];$chrono:{$st:N1;$level:[[N3500;N40000;];[N5000;N6000;];];};$survival:{$st:N2;$level:[{$s:N3600;$t:N2;};];};$invasion:{$st:N2;$level:[{$s:N1500;$t:N3;};];};$ring:{$st:N1;$level:[{$s:N250;$t:N1;};{$s:N300;$t:N3;};{$s:N350;$t:N4;};{$s:N450;$t:N4;};];};$stat:{$fruit:N20000;};}";
                } else if (game === "grapiz") {
                    // $ls = championship: current, max and min scores as integers
                    // For the rest:
                    // Arrays: wins, loses and ties as integers
                    // $f = exhibition games
                    // $c = challenges
                    // $l = championship
                    answer += "{$ls:[N2000;N1500;N3000;];$f:[N10;N11;N12;];$c:[N13;N14;N15;];$l:[N16;N17;N18;];}";
                } else if (game === "bandas") {
                    // $ls = championship: current, max and min scores as integers
                    // For the rest:
                    // Arrays: wins, loses and ties as integers
                    // $f = exhibition games
                    // $c = challenges
                    // $l = championship
                    answer += "{$ls:[N1000;N750;N1500;];$f:[N1;N2;N3;];$c:[N4;N5;N6;];$l:[N7;N8;N9;];}";
                } else if (game == "miniwave") {
                    // $lvl = rank level as number
                    // $ship = list of unlocked ships as boolean. Order: ???
                    // $arcade = object about arcade mode
                    //           * $bestScore = best score as number
                    //           * $bestLevel = best level as number
                    // $cons = object about missions
                    //         * $bonus: array of missions progress as number (% value). Up to 5 missions
                    // $letter = score of letter mode as number
                    // $survival = score of survival mode as number
                    // $time = score of time mode as number
                    // $badsKill = array of killed ennemies as number in a specific order
                    answer += "{$lvl:N5;$ship:[B1;B1;B1;B1;B1;];$arcade:{$bestScore:N25000;$bestLevel:N200;};$cons:{$bonus:[N100;N50;N30;N20;N10;];};$letter:N75;$survival:N33;$time:N20;$badsKill:[N200;N350;];}";
                } else if (game == "minipixiz") {
                    // $stat = object for statistics
                    //         * $run: number of games
                    //         * $item = array of unlocked items as booleans
                    //         * $eat = array of eaten food as numbers
                    //         * $forestMax = maximum level reached on forest mode as number
                    //         * $treeMax = maximum level reached on tree mode as number
                    //         * $misNum = number of missions finished as number
                    //         * $game = array of numbers of games per types. Order: "forêts","bassin","donjon","arc-en-ciel","arbre creux"
                    //         * $kill = array of killed daemons as number. Order: "diablotin","demon mineur","demon majeur","ombre","furie"
                    // $diam = maximum unlocked diamond as number
                    // $star = number of got stars as number
                    // $current = index of current faerie which is selected in the game as number
                    // $faerie = array of fearie objects
                    //           * $name = name of the faerie as string
                    //           * $level = level of the faerie as number
                    //           * $skin = array of skins index colors as numbers (up to 4 colors)
                    //           * $carac = array of caracteristics as numbers. Order: strength, speed, life, smart, wisdom and mana
                    //           * $spell = array of number of available spells as number
                    // $dungeon = object of dungeon stats
                    //            * $lvl = maximum level reached
                    //            * $loop = number of times that the dungeons was finished
                    // $time = object
                    //         * $d = number of elapsed days in the game
                    answer += "{$diam:N4;$star:N5;$current:N0;$faerie:[{$name:SAnabelle;$level:N20;$skin:[N1;N2;N3;N4;];$carac:[N0;N1;N2;N3;N4;N5;];$spell:[N0;N1;];};];$dungeon:{$lvl:N5;$loop:N10;};$stat:{$run:N500;$item:[B1;U;B1;U;B1;];$eat:[N200;U;N100;U;N50;];$forestMax:N200;$treeMax:N50;$misNum:N5;$game:[N5;N1;N2;N3;N4;];$kill:[N500;N400;N300;N200;N100;];};$time:{$d:N365;}}";
                }

                answer += "</ea>\0";

                answers.push(answer);
            }

            for (const answer of answers) {
                console.log("answering " + answer);
                socket.write(answer);
            }
        })

        socket.on('end', () => {
            console.log('Client disconnected');
        });
    }
)

tcpServer.listen(8000, '127.0.0.1');


