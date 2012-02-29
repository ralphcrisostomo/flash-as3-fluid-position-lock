/**
 * "Main"
 *
 * Author: Ralph Crisostomo
 * Email: rrecrisostomo@gmail.com
 * Url: http://ralphcrisostomo.net
 * Created: Feb 29, 2012
 *
 *
 * Example AS3 Code:
 * ---
 * 	import net.ralphcrisostomo.net.FluidPositionLock;
 * 
 * 	// Available Position: top, right, bottom, left, top-right, top-left, down-right, down-left
 * 	// new FluidPositionLock( MovieClip, stage, 0, 0, Position);
 * 	// new FluidPositionLock( MovieClip, stage); // Center Lock
 * ---
 * 
 */
package
{
	// IMPORTS
	import flash.display.Sprite;
	import net.ralphcrisostomo.fluid.FluidPositionLock;
	
	
	public class Main extends Sprite{

		// CONSTRUCTOR
		public function Main()
		{
			// Available Position: top, right, bottom, left, top-right, top-left, down-right, down-left
			new FluidPositionLock(mcSquare, stage); // Center
			new FluidPositionLock(mcCircleRed_01, stage, 100, 100, 'top'); // Top with 100px Offset
			new FluidPositionLock(mcCircleRed_02, stage, 100, 100, 'right'); // Right with 100px Offset
			new FluidPositionLock(mcCircleRed_03, stage, 100, 100, 'down'); // Down with 100px Offset
			new FluidPositionLock(mcCircleRed_04, stage, 100, 100, 'left'); // Left with 100px Offset
			new FluidPositionLock(mcCircleYellow_01, stage, 50, 50, 'top-left'); // Top-Right with 50px Offset
			new FluidPositionLock(mcCircleYellow_02, stage, 50, 50, 'top-right'); // Top-Left with 50px Offset
			new FluidPositionLock(mcCircleYellow_03, stage, 50, 50, 'down-left'); // Down-Left with 50px Offset
			new FluidPositionLock(mcCircleYellow_04, stage, 50, 50, 'down-right'); // Down-Right with 50px Offset
		}
		
	
	}
	
}