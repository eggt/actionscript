package
{
	/***********************************
	 ** Author Dalton Zhang
	 ** Date   2013-12-17
	 ** Email  daltonzhang@hotmail.com
	 ***********************************/
	import starling.core.Starling;
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;
	
	public class Mc extends Sprite
	{
		private var mc:MovieClip;
		
		[Embed(source= "res/sss.xml",mimeType="application/octet-stream")]
		public static const AnimData:Class;
		
		[Embed(source= "res/sss.png")]
		public static const AnimTexture:Class;
		
		public function Mc()
		{
//			super();
			addEventListener(Event.ADDED_TO_STAGE,onAdded);
		}
		
		private function onAdded(e:Event):void
		{
			var texture:Texture = Texture.fromBitmap(new AnimTexture());
			var xml:XML = new XML(new AnimData());
			var ta:TextureAtlas = new TextureAtlas(texture,xml);
			
			for(var i:int=0;i<2000;i++)
			{
				mc = new MovieClip(ta.getTextures(""),30);
				mc.x = int(Math.random()*1280);
				mc.y = int(Math.random()*752);
				addChild(mc);
				Starling.juggler.add(mc);
			}
		}
	}
}