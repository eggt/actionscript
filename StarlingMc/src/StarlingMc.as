package
{
	/***********************************
	 ** Author Dalton Zhang
	 ** Date   2013-12-17
	 ** Email  daltonzhang@hotmail.com
	 ***********************************/
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display3D.Context3DRenderMode;
	
	import starling.core.Starling;
	
	[SWF(width="1280",height="752",frameRate="60",backgroundColor="#FF8400")]
	public class StarlingMc extends Sprite
	{
		private var myStarling:Starling;
		public function StarlingMc()
		{
			var stats:Stats = new Stats();
			stats.x = 20;
			stats.y = 20;
			addChild(stats);
			
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			myStarling = new Starling(Mc,stage,null,null,Context3DRenderMode.AUTO);
			myStarling.antiAliasing = 1;
			myStarling.start();
		}
	}
}