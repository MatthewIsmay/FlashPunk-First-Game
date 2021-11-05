package
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	public class Knight extends Entity
	{
		[Embed(source="assets/redCircle.png")] private const KNIGHT:Class;
		
		public function Knight()
		{
			graphic = new Image(KNIGHT);
			width = 50;
			height = 50;
		}
		override public function update():void
		{
			if (Input.check(Key.LEFT)) { x -= 5; }
			if (Input.check(Key.RIGHT)) { x += 5; }
			if (Input.check(Key.UP)) { y -= 5; }
			if (Input.check(Key.DOWN)) { y += 5; }
			
			if (collide("block", x, y))
			{
				x = 0;
				y = 0;
			}
		}
	}
}