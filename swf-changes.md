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
