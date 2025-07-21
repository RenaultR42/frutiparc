# Start

The website is using 3 different XMLSocket to communicate dynamic information to users and provide different services.
[Because Ruffle and modern browsers are not able to provide direct sockets communication, websockets are used internally and a proxy must be used to redirect websockets to socket server.](https://github.com/ruffle-rs/ruffle/wiki/Frequently-Asked-Questions-For-Users#how-can-i-connect-to-a-tcpsocket-or-xmlsocket-from-the-web)

## Main site

```shell
npm start
node XMLSocket.js
websockify 8234 localhost:8000
```

The port number must finish with 0 for the XML socket communications.

## Launch games

```shell
websockify 8889 localhost:8888
node XMLSocketGame.js
```

## Display scores

```shell
node XMLSocketScore.js
websockify 8002 localhost:8001
```

The port number must finish with 1.

# TODO list

* Lancer un jeu depuis l'interface
* Lister pictos
* Corriger wheel
* Réintroduire status spéciaux: eat, away, etc. via `/status <nom>` dans le chat

# SWF changes

Some changes in the SWF were required.

## main.swf

* Force resolution of the interface to 1024x768 because Ruffle is not initializing it as expected by the original code which disturbs entirely the interface layout.
* Also, some file parsing were done by spliting lines with `\r\n` (Windows format) instead of `\n` (Unix format).
* All links to download ressources are also converted to use the format `http://host:port/` from the original request instead of using `http://host:80`, `http://swf.frutiparc.com` and `http://undefined` due to wrong initialization too.
* All links can use HTTPS or HTTP, based on protocol used to download `main.swf`
* Support specific icon for AOL email address (bug in the code)
* Change to get dungeons progression of Motion Ball from `sd/mb2/X.png` files instead of `sd/mb2_ball.swf` because last one is empty

## kaluga_tz.swf

Add code to be able to get the tzongre from score page

## fileIcon.swf

Add add "linkBlogs" tag name on frutiblog icon frame

# API

## Sockets

Comments in `XMLSocket.js`, `XMLSocketGame.js` and `XMLSocketScore.js` files are describing the commands sent by the client and some possible answers.

These XML communications are based with a node name which is replaced based on a mapping defined in `cmdList.as` and `cmdList2.as` files.
Most of them are using a random `rid` as attribute of the main node which must be in the attribute list of the answer to allow the client to identify correctly the expected answer.

Attribute `k` is also often used to repport error of commands.
A lot of commands also required to send back the request to the client to be able to apply them in the original client as well!

## HTTP

`sid` parameter is often used to known the session id of the user and making the right answer.
Most of answers are XML files and details about nodes and attributes are explained in the sample files.

### Static contents

swf files, pictures files and files under `xml` directories are static and common to all users without modifications.

### About sessions

#### do/prefdef

##### GET

List of settings with their default values.
It's a static text content, must start with `PrefDef=` then the list of settings as explained below.

#### do/prefForm

##### GET

List of settings descriptions.
It's a static XML content.

#### do/onident

##### GET

Answer after identification of the user.

#### do/prefsavepartial

##### GET

Parameters: `i` as integer for preference id identifier and `v` for the value of this parameter.
Looks like to be a hidden POST request to save one parameter value.

#### do/prefsave

##### GET

Parameters: `s` as string for list of preference settings with `id + length + value` format for each of them without space as described below.
Only changed values are sent. Other settings are unchanged from current values.

Looks like to be a hidden POST request to save parameter values.

#### do/eb

##### GET

Parameters: `b` for bouille id

Used to save the bouille after used of frutibouilleur. Looks like to be a hidden POST request.

#### do/smi

##### POST

Called after edition of frutiz info.
This is a list of parameters as text.

Parameters:

* m = comment
* u = user's website
* r = region id
* o = country id
* c = city
* j = real job
* g = gender (can be `M` or `F`)
* q = 1 when real name can be displayed, 0 otherwise
* l = lastname
* f = firstname
* d = birthday date in YYYY-MM-DD format
* sid

### File hierarchy

#### ff/tree

##### GET

List of folders definitions with types + uid which can be used by other file hierarchy calls.

#### ff/ls

##### GET

Parameters: `uid` as string. Sometimes parameters `s` and `r` are set to 1 but without specific meaning normally.

Display the list of files and folders inside `uid` directory. Example: `mycontact` to list folders of contacts.
Opening a directory is involving this call each time.

#### ff/get

##### GET

Parameters: `uid` as string. Used to fetch the email content identified by this uid in the file hierarchy.

The content is text starting with `0000` then the email content.

#### ff/cp

##### POST

Copying a file to a directory.
Parameters are text key=value

Parameters:

* folder = uid of new parent folder
* f = file uid
* sid

#### ff/mv

##### POST

Copying a file to a directory.
Parameters are text key=value

Parameters:

* folder = uid of new parent folder
* f = file uid
* sid

#### fm/mk

##### POST

Creating a file or folder.
Parameters are text key=value

Parameters:

* folder = uid of parent folder
* d = new file or directory name
* t = type (often `folder` or `contact`)
* sid

### Email communications

#### fm/sendmail

##### POST

Sending an email to someone.
Parameters are text key=value

Parameters:

* o = 1 to save it into outbox
* c = content of the email
* s = title of the email
* t = destination addresses (separated with `,+`)
* sid

### Help (Gaspard)

#### fh/get

##### GET

Parameters: `i` as integer. Used to know which page to display, based on this identifier.
Parameters are text key=value

#### fh/search

##### GET

Parameters: `s` as string which are the keywords sent by the user to discover relevant pages.

### Shop

#### ft/tree

##### GET

Get XML file as tree descriptions of available items in the shop.
Static content which can be shared to all users.

#### ft/pack

##### GET

Parameters: `i` as integer which is the identifier to fetch information about this item in the shop.

#### ft/buy

##### GET

Parameters: `i` as integer which is the identifier of the item bought by the user.

#### ft/log

##### GET

List log of last money exchanges for this user.

# Preferences

## List

* `win_flMoveAnim` as boolean to display specific animation when moving them
* `cl_open` as boolean to open directories of contact list by default
* `wallpaper` as string with format `url|bgColor;txtColor;Alpha` where `bgColor` and `txtColor` are hexadecimal without `0x` prefix and `Alpha` a decimal value from 0 to 255
* `default_channel` as integer for channel index to join by default
* `invite_chat_behavior` as string where valid values are `A`, `P` or `R` for accept, propose or reject invitation to join a private chat by default
* `invite_channel_behavior` as string where valid values are `A`, `P` or `R` for accept, propose or reject invitation to join a private chat by default
* `dsp_newmail_alert` as boolean to display email notification when new email is received
* `ch_dsp_join` as boolean to display specific text when an user is joining a chat
* `ch_dsp_leave` as boolean to display specific text when an user is leaving a chat
* `ch_dsp_kick` as boolean to display specific text when an user is ejected from a chat
* `ch_dsp_h` as boolean to display hours before each message of a chat
* `save_to_outbox` as boolean to save all sent emails to the outbox
* `userSlot_display` as integer to select which color to use between black, gender and green for nickname in user info
* `cache_length` as integer to define the size of the cache to improve the performances of the interface

## Definition

The format is the following to define a preference:

* id (2 characters) as integer in base62
* type (1 character): can be `b` (boolean), `i` (integer) or `s` (string)
* length (2 characters) as integer in base62 which is the length of the name of the preference
* name (l characters) as string which is the name of the preference
* length (2 characters) as integer in base62 which is the length of the value of the preference
* default value (l characters) as type which is the default value of this parameter if not overwritten by the user

Boolean values can be either `Y` or `N`.

Examples:

* 00b07cl_open01N
* 01b0hdsp_newmail_alert01N
* 02i0fdefault_channel020d // 13 = list, 12 = quizz
* 03b0ewin_flMoveAnim01N
* 04s09wallpaper0swal/va.jpg|FFFFFF;000000;255
* 05s0kinvite_chat_behavior01P
* 06s0ninvite_channel_behavior01A
* 07b0esave_to_outbox01Y
* 08i0guserSlot_display0100
* 09i0ccache_length020O
* 0ab0bch_dsp_join01Y
* 0bb0cch_dsp_leave01Y
* 0cb0bch_dsp_kick01Y
* 0db08ch_dsp_h01Y

## User settings

The format is the following to define a user value of a preference:

* id (2 characters) as integer in base62
* length (2 characters) as integer in base62 which is the length of the value of the preference
* value (l characters) as type which is the value of this parameter
