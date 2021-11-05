package
{
	import net.flashpunk.World;
	public class MyWorld extends World
	{
		public function MyWorld()
		{
			add(new Block());
			add(new Knight());
		}
	}
}