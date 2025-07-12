const net = require('net');

const me = "Renault";

let listFrutiz = new Map([
	["Renault", {
		experience: 424242,
		rank: 42,
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

            // List rankings
            // Input / output
            // dt = date YYYY-MM-DD HH:MM:SS
            // r = rid
            // Output:
            // Two <s> nodes, one with "ty" set to "C" for "challenge", one set to "L" for "League / Championship"
            // Inside each node, one <rk> node per game, only Grapiz and Frubandas have Championship.
            // Mini-Wave and Mini-Pixiz don't have Challenge or Championship modes
            // <rk> node:
            // rk = game id
            // ty = score type, can be millisecond for BK score, ptmb2 for Motion-Ball score or anything else for normal score
            // rn = full game name
            // sst = start of scores (likely 0 or 1, if someone played or not)
            // et = end of scores (nb of players)
            // gs = game id (useless?)
            // g = game name (short, tied to lang_french.xml)
            if (clientData.indexOf("<l ") !== -1) {
                const date = getValueFromParam(string, "dt");
                const rid = getValueFromParam(string, "r");

                let answer = "<l dt=\"" + date + "\" r=\"" + rid + "\">";
                answer += "<s ty=\"C\">";
                answer += "<rk rk=\"0\" ty=\"millisecond\" rn=\"Burning kiwi\" sst=\"1\" et=\"10000\" gs=\"0\" g=\"bkiwi\" />";
                answer += "<rk rk=\"1\" ty=\"0\" rn=\"Frutisnake 2\" sst=\"1\" et=\"10000\" gs=\"1\" g=\"snake3\" />";
                answer += "<rk rk=\"2\" ty=\"ptmb2\" rn=\"Motion Ball 2\" sst=\"1\" et=\"10000\" gs=\"2\" g=\"mb2\" />";
                answer += "<rk rk=\"3\" ty=\"0\" rn=\"Swapou 2\" sst=\"1\" et=\"10000\" gs=\"3\" g=\"swapou2\" />";
                answer += "<rk rk=\"4\" ty=\"0\" rn=\"Kaluga\" sst=\"1\" et=\"10000\" gs=\"4\" g=\"kaluga\" />";
                answer += "<rk rk=\"5\" ty=\"0\" rn=\"Frutibandas\" sst=\"1\" et=\"10000\" gs=\"5\" g=\"bandas\" />";
                answer += "<rk rk=\"6\" ty=\"0\" rn=\"Grapiz\" sst=\"1\" et=\"10000\" gs=\"6\" g=\"grapiz\" />";
                answer += "</s>";
                answer += "<s ty=\"L\">";
                answer += "<rk rk=\"7\" ty=\"0\" rn=\"Frutibandas\" sst=\"1\" et=\"10000\" gs=\"7\" g=\"bandas\" />";
                answer += "<rk rk=\"8\" ty=\"0\" rn=\"Grapiz\" sst=\"1\" et=\"10000\" gs=\"8\" g=\"grapiz\" />";
                answer += "</s>";
                answer += "</l>\0";

                answers.push(answer);
            }

            // Ranking results
            // Input / outputs
            // c = number of results (optional), likely set to 1 only to get relevant results for the frutifiche
            // l = nb results
            // rk = game id
            // Input
            // s = start
            // Output
            // ty = type which must be millisecond for BK, ptmb2 for MB, anything for the rest
            // One <score> node per player
            // Info about the user to get its name + frutibouille (f + u)
            // s = score value
            // t = date time. Format: YYYY-MM-DD HH:MM:SS
            // d can be an extra value tied to the score: team and rank for BK, Tzongre for Kaluga and character for Swapou. The structure can be complex
            //     d format, "S" at the begin means "string":
            //          * BK: S<car name>:<clean laps>:<final position>: where car names can be either "kiwix", "ultra orange", "uwe wing", "fury hun" or "sonic brain", for "clean laps", the value "5" means perfect. 
            //          * Swapou: S<perso id>: where perso id is 0 for Dimitri, 1 for Natacha, 2 for Mr Sel, 3 for Mr Poivre, 4 for Chavelier Moutarde, 5 for Tomtom, 6 for Wasabii
            //          * Kaluga: S<tzongre name>: where names can be: "kaluga", "nalika", "piwali", "gomola" and "makulo"
            if (clientData.indexOf("<m ") !== -1) {
                let c = getValueFromParam(string, "c");
                const nbResults = Number(getValueFromParam(string, "l")) > Number(c) ? Number(getValueFromParam(string, "l")) : Number(c);
                const gameid = Number(getValueFromParam(string, "rk"));

                if (c !== "") {
                    c = "c=\"" + c + "\"";
                }

                let answer = "<m ty=\"millisecond\" rk=\"" + gameid + "\" " + c + ">";
                const info = answerFrutizMe(me);
                if (gameid === 0) {
                    answer += "<score u=\"" + me + "\" " + info + " s=\"36500\" t=\"2025-07-02 00:56:00\" d=\"Skiwix:5:1:\" />";
                } else if (gameid === 3) {
                    answer += "<score u=\"" + me + "\" " + info + " s=\"36500\" t=\"2025-07-02 00:56:00\" d=\"S6:\" />";
                } else if (gameid === 4) {
                    answer += "<score u=\"" + me + "\" " + info + " s=\"36500\" t=\"2025-07-02 00:56:00\" d=\"Smakulo:\" />";
                }
                answer += "</m>\0";

                answers.push(answer);
            }

            // User result
            // Inputs / outputs
            // r = rid
            // rs = list of game id, with "," as separator. Usually all challenge games only or all games
            // If there is as node value a <u> node with "u" attribute, use it as player name, otherwise it's the user who sent the request
            // Outputs
            // One <rk> node per game played by the player today
            // rk = rank id
            // p = current rank of the user for this game
            // s = score
            // ty = type which must be millisecond for BK, ptmb2 for MB, anything for the rest
            // d can be an extra value tied to the score: team and rank for BK, Tzongre for Kaluga and character for Swapou. The structure can be complex
            if (clientData.indexOf("<n ") !== -1) {
                const rid = getValueFromParam(string, "r");
                const userParam = getValueFromNode(string);
                const user = userParam !== "" ? getValueFromParam(userParam, "u") : me;

                let answer = "<n r=\"" + rid + "\" u=\"" + user + "\">";
                answer += "<rk rk=\"0\" p=\"1\" s=\"36600\" t=\"millisecond\" />";
                answer += "<rk rk=\"1\" p=\"1\" s=\"1000000\" />";
                answer += "<rk rk=\"2\" p=\"2\" s=\"860053\" t=\"ptmb2\" />";
                answer += "<rk rk=\"3\" p=\"3\" s=\"30000\" />"; // d=\"dimitri\"
                answer += "<rk rk=\"4\" p=\"4\" s=\"15000\" />"; // d=\"kaluga\"
                answer += "<rk rk=\"5\" p=\"5\" s=\"3\" />";
                answer += "<rk rk=\"6\" p=\"6\" s=\"10\"/>";
                // answer += "<rank rk=\"7\" p=\"7\" s=\"1000\" t=\"0\" d=\"0\" />";
                // answer += "<rank rk=\"8\" p=\"8\" s=\"1000\" t=\"0\" d=\"0\" />";
                answer += "</n>\0";

                answers.push(answer);
            }

            // Game score info
            // Input / output
            // gs = game id
            // Output:
            // One <ds> node with one desc node per per field, node value must be the filename for s type
            // n = name
            // t = type, "t" for text and "s" for link based on "http://" + _global.baseDomain + "/sd/$u.swf" format
            // a = align which can be "right", "center" or "left", only for text type
            // w = width
            if (clientData.indexOf("<w ") !== -1) {
                const gs = Number(getValueFromParam(string, "gs"));

                let answer = "<w gs=\"" + gs + "\"><ds>";
                if (gs === 0) {
                    answer += "<desc n=\"Ecurie\" t=\"s\" w=\"60\">bkiwi_team</desc>";
                    answer += "<desc n=\"Rang\" t=\"s\" w=\"60\">bkiwi_rank</desc>";
                } else if (gs === 3) {
                    answer += "<desc n=\"Perso\" t=\"s\" w=\"45\">swapou_score_chars</desc>";
                } else if (gs === 4) {
                    answer += "<desc n=\"Tzongre\" t=\"s\" w=\"60\">kaluga_tz</desc>";
                }
                answer += "</ds></w>\0";

                answers.push(answer);
            }

            // XP ranking
            // Inputs
            // l for number results
            // s for start index
            // Outputs
            // One <p> node per frutiz
            // u = username
            // Usual frutiz info to get the frutibouille
            // s = experience value
            if (clientData.indexOf("<y ") !== -1) {
                const start = getValueFromParam(string, "s");
                const numberRet = getValueFromParam(string, "l");
                const sorted =  new Map([...listFrutiz].sort((a, b) => b[1].experience - a[1].experience));

                let cnt = 0;
                let answer = "<y>";
                for (let i = 0; i < 3; i++) {
		        for (const [name, desc] of sorted) {
		            if (cnt++ < 10) {
				    const info = answerFrutizMe(name);
				    const info2 = getFrutizInfo(name);
				    answer += "<p u=\"" + name + "\" " + info + " s=\"" + info2.experience + "\" />";
			     } else {
			         break;
			     }
		        }
		}
                answer += "</y>\0";

                answers.push(answer);
            }

            // Rate ranking
            // Inputs
            // l for number results
            // s for start index
            // Outputs
            // One <p> node per frutiz
            // u = username
            // Usual frutiz info to get the frutibouille
            // s = frutirate value
            if (clientData.indexOf("<aa ") !== -1) {
                const start = getValueFromParam(string, "s");
                const numberRet = getValueFromParam(string, "l");
                const sorted =  new Map([...listFrutiz].sort((a, b) => b[1].frutirate - a[1].frutirate));

                let cnt = 0;
                let answer = "<aa>";
                for (const [name, desc] of sorted) {
                    if (cnt++ < 10) {
                        const info = answerFrutizMe(name);
                        const info2 = getFrutizInfo(name);
                        answer += "<p u=\"" + name + "\" " + info + " s=\"" + info2.frutirate + "\" />";
                    } else {
                        break;
                    }
                }
                answer += "</aa>\0";

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

tcpServer.listen(8001, '127.0.0.1');


