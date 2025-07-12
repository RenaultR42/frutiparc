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
	if (array.length >= 2) {
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
            if (clientData.indexOf("<c />") !== -1) {
                answers.push("<c l=\"" + me + "\">2025-06-07.12:21:10</c>\0");
            }

            // IP of user
            if (clientData.indexOf("<d />") !== -1) {
                answers.push("<d l=\"" + me + "\">127.0.0.1</d>\0");
            }

            // Ping
            if (clientData.indexOf("<e />") !== -1) {
                answers.push("<e />\0");
            }

            // Users's info after login
            // l = user login
            // x = experience
            // f = frutibouille
            if (clientData.indexOf("<k ") !== -1) {
                const info = answerFrutizMe(me)
                answers.push("<k l=\"" + me + "\" " + info + "></k>\0");
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

tcpServer.listen(8888, '127.0.0.1');


