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
 * 	// FluidPositionLock.add( MovieClip, stage, 0, 0, Position);
 * 	// FluidPositionLock.add( MovieClip, stage); // Center Lock
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
			FluidPositionLock.add(mcSquare, stage); // Center
			FluidPositionLock.add(mcCircleRed_01, stage, 100, 100, 'top'); // Top with 100px Offset
			FluidPositionLock.add(mcCircleRed_02, stage, 100, 100, 'right'); // Right with 100px Offset
			FluidPositionLock.add(mcCircleRed_03, stage, 100, 100, 'down'); // Down with 100px Offset
			FluidPositionLock.add(mcCircleRed_04, stage, 100, 100, 'left'); // Left with 100px Offset
			FluidPositionLock.add(mcCircleYellow_01, stage, 50, 50, 'top-left'); // Top-Right with 50px Offset
			FluidPositionLock.add(mcCircleYellow_02, stage, 50, 50, 'top-right'); // Top-Left with 50px Offset
			FluidPositionLock.add(mcCircleYellow_03, stage, 50, 50, 'down-left'); // Down-Left with 50px Offset
			FluidPositionLock.add(mcCircleYellow_04, stage, 50, 50, 'down-right'); // Down-Right with 50px Offset
		}
		
	
	}
	
}