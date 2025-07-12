# Start

## Main site
```shell
npm start
http-server -p 5173 -a 127.0.0.1 --cors
node XMLSocket.js
websockify 8234 localhost:8000
```

# Start games
```shell
websockify 8889 localhost:8888
node XMLSocketGame.js
```

# Scores

```shell
node XMLSocketScore.js
websockify 8002 localhost:8001
```

TODO:

* Lancer un jeu depuis l'interface
* Discussion par MP / emails avec réponses automatiques
* Lister pictos
* Corriger wheel
* Ajouter / supprimer contact
* Gérer boutique
* Compiler SWF pour les icônes des fiches des jeux

# Pref

## List

```
win_flMoveAnim boolean
cl_open boolean
wallpaper string ("|" split)
default_channel int
invite_chat_behavior string (A, P or R)
invite_channel_behavior string (A, P ouorR)
dsp_newmail_alert boolean

ch_dsp_join boolean
ch_dsp_leave boolean
ch_dsp_kick boolean
ch_dsp_h (hour) boolean

save_to_outbox

bool = Y or N
int = base62

wallpapers url|bgColor;txtColor;Alpha
```

## Definition

```
id (2) base62
type (1): b, i or s
length (2) base62
name (l)
length (2) base62
defaut value (l)

00 b 07 cl_open 01 N
01 b 0h dsp_newmail_alert 01 N
02 i 0f default_channel 02 0d // 13 = list, 12 = quizz
03 b 0e win_flMoveAnim 01 N
04 s 09 wallpaper 0s wal/va.jpg|FFFFFF;000000;255
05 s 0k invite_chat_behavior 01 P
06 s 0n invite_channel_behavior 01 A

07 b 0e save_to_outbox 01 Y
08 i 0g userSlot_display 01 00
09 i 0c cache_length 02 0O

0a b 0b ch_dsp_join 01 Y
0b b 0c ch_dsp_leave 01 Y
0c b 0b ch_dsp_kick 01 Y
0d b 08 ch_dsp_h 01 Y
```

## User settings

```
id (2) base62
length (2) base62
value (l)

00 01 Y
01 01 N
02 02 0d
03 01 Y
04 0s wal/va.jpg|FFFFFF;000000;255
05 01 A
06 01 R
```
