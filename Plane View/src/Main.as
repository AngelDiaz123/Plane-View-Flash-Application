package
{
	import com.datafire.building3.Building3A.Building3A;
	
	import flash.display.Sprite;
	
	[SWF(height="445",width="600")]
	
	public class Main extends Sprite
	{
		public var b3a:Building3A = new Building3A();
		public function Main()
		{
			addChild(b3a);
			b3a.scaleX = b3a.scaleY = .8;
			b3a.x = 10;
			b3a.y = 60;
		}
	}
}