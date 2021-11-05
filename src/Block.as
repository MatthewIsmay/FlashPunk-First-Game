package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	public class Block extends Entity
	{
		[Embed(source = 'assets/block.png')] private const BLOCK:Class;
		
		public function Block()
		{
			graphic = new Image(BLOCK);
			width = 200;
			height = 200;
			type = "block";
		}
		
		override public function update():void
		{
			x = 200;
			y = 150;
		}
	}
}