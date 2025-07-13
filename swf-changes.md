first.as (Frame1 DoAction):

if(this != _root)
{
   logText = "";
   baseMcw = 1024;
   baseMch = 768;
   flLoading = true;
   StageResize = new Object();
   StageResize.onResize = function()
   {
      _global.mcw = baseMcw;
      _global.mch = baseMch;
      _root._x = 0;
      _root._y = 0;
      main.onResize();
      if(flLoading)
      {
         updateLoadingSize();
      }
   };
   Stage.addListener(StageResize);
   StageResize.onResize();
}

init.as (Sprite 653)

this.onResize = function()
{
   _global.frameMode = false;
   _global.mcw = 1024;
   _global.mch = 768;
   _root._x = 0;
   _root._y = 0;
   if(main.cornerX == 0)
   {
      main.cornerX = main.lastCornerX;
   }
   main.mainBar.update();
   main.sideList._visible = true;
   main.sideListFond._visible = true;
   main.sideList.onStageResize();
   slotList.onStageResize();
   wallPaper.onStageResize();
   topDesktop.onStageResize();
   main.dbgTextField._x = main.cornerX;
   main.frusion.pos.x = 1019;
   main.frusion._x = main.frusion.pos.x;
};

FFileMng: split de \r\n -> \n
FPileMng: split de \r\n -> \n

if(_global.baseDomain == undefined)
{
   _global.baseDomain = _root.baseDomain;
}

-_global.baseDomain = "localhost:5173";
+_global.baseDomain = _root._url.split("http://").join("").split("/")[0];
_global.flDebug = true; -> false

main
      _root.sid = vars.sid;
+      _root.baseDomain = vars.baseDomain;
+      _global.baseDomain = vars.baseDomain;
      HTTP.defaultParams.sid = _root.sid;

_global.swfURL = "http://" + _root._url.split("http://").join("").split("/")[0];
_global.baseURL = "http://" + _global.baseDomain + "/";

Path:
class Path
{
   static var domain = _root._url.split("http://").join("").split("/")[0];
   static var frutibouille = "http://" + domain + "/fbouille/famille$i.swf";
   static var wheel = "http://" + domain + "/wheel/wheel$i.swf";
   static var shopItem = "http://" + domain + "/shopitem.swf";
   static var scoreDataMisc = "http://" + domain + "/sd/$u.swf";
   static var awards = "http://" + domain + "/awards.swf";
   static var fcLogo = "http://" + domain + "/fcLogo.swf";
   static var fileIcon = "http://" + domain + "/fileIcon.swf";
   static var frutiSign = "http://" + domain + "/frutiSign.swf";
   static var bkiwi_cup = "http://" + domain + "/sd/bkiwi_cup.swf";
   static var bkiwi_team = "http://" + domain + "/sd/bkiwi_team.swf";
   static var swapou_chars = "http://" + domain + "/sd/swapou_chars.swf";
   static var mb2_ball = "http://" + domain + "/sd/mb2_ball.swf";
   static var kaluga_tz = "http://" + domain + "/sd/kaluga_tz.swf";
   static var kaluga_panier = "http://" + domain + "/sd/kaluga_panier.swf";
   static var miniwave_bads = "http://" + domain + "/sd/miniwave_bads.swf";
   static var miniwave_ship = "http://" + domain + "/sd/miniwave_ship.swf";
   static var miniwave_rank = "http://" + domain + "/sd/miniwave_rank.swf";
   static var minipixiz_faeries = "http://" + domain + "/sd/minipixiz_faeries.swf";
   static var minipixiz_spell = "http://" + domain + "/sd/minipixiz_spell.swf";
   static var minipixiz_award = "http://" + domain + "/sd/minipixiz_award.swf";
   static var minipixiz_luz = "http://" + domain + "/sd/minipixiz_luz.swf";
   static var insertDisc = "http://" + domain + "/sd/insertDisc.swf";
   function Path()
   {
   }
}

function loadingInit()
{
   logText = "";
   attachMovie("loadingProcess","lp",512);
   this.createEmptyMovieClip("icon",5);
+-   icon.loadMovie(Path.fileIcon);
   lp.coef = 0;
   lp.b1.gotoAndStop(1);
   lp.bgb1.gotoAndStop(2);
   lp.mid.gotoAndStop(1);
   lp.bgmid.gotoAndStop(2);
   lp.b2.gotoAndStop(1);
   lp.bgb2.gotoAndStop(2);
   updateLoadingSize();
}

iconGFX asset has an hardcoded link to swf.frutiparc.com/fileIcon.swf changed into fileIcon.swf
