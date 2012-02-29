/**
 * "FluidPositionLock"
 *
 * Author: Ralph Crisostomo
 * Email: rrecrisostomo@gmail.com
 * Url: http://ralphcrisostomo.net
 * Created: Feb 28, 2012
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

package net.ralphcrisostomo.fluid
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class FluidPositionLock extends MovieClip
	{
		// PROPERTIES
		private static var __list:Array = new Array();
		
		private var _mc:MovieClip;
		private var _stage:Stage;
		private var _offsetHorizontal:int;
		private var _offsetVertical:int;
		private var _position:String;
		
		// CONSTRUCTOR
		public function FluidPositionLock(mc:MovieClip, stage:Stage, offsetHorizontal:int = 0, offsetVertical:int = 0, position:String = null)
		{
			// Init Properties
			_mc	   			 	= mc;
			_offsetVertical	 	= offsetVertical;
			_offsetHorizontal	= offsetHorizontal;
			_position			= position;
			_stage 			 	= stage;
			_stage.scaleMode 	= StageScaleMode.NO_SCALE;
			_stage.align     	= StageAlign.TOP_LEFT;
			
			
			// Call Method
			_stage.addEventListener(Event.RESIZE, onResize);
			onResize();
		}
		
		// METHOD
		public static function add(mc:MovieClip, stage:Stage, offsetHorizontal:uint = 0, offsetVertical:uint = 0, position:String = null) {
			
			var fluidPos:FluidPositionLock = new FluidPositionLock(mc, stage, offsetHorizontal, offsetVertical, position);
				__list.push(fluidPos);
			
		}
		
		private function onResize(e:Event = null):void
		{
			// Lock Position
			switch(_position)
			{
				case null:
				{
					_mc.x = (( _stage.stageWidth / 2 ) - _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = (( _stage.stageHeight / 2 ) - _offsetVertical) - ( _mc.height / 2 ) ;
					break;
				}
				case 'top':
				{
					_mc.x = ( _stage.stageWidth / 2 )  - ( _mc.width / 2 ) ;
					_mc.y = _offsetVertical - ( _mc.height / 2 ) ;
					break;
				}
				case 'down':
				{
					_mc.x = ( _stage.stageWidth / 2 )  - ( _mc.width / 2 ) ;
					_mc.y = ( _stage.stageHeight - _offsetVertical) - ( _mc.height / 2 ) ;
					break;
				}
				case 'left':
				{
					_mc.x = (  _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = ( _stage.stageHeight / 2) - ( _mc.height / 2 ) ;
					break;
				}
				case 'right':
				{
					_mc.x = ( _stage.stageWidth - _offsetHorizontal ) - ( _mc.width / 2 ) ;
					_mc.y = ( _stage.stageHeight / 2) - ( _mc.height / 2 ) ;
					break;
				}
				case 'top-left':
				{
					_mc.x = (  _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = (  _offsetVertical) - ( _mc.height / 2 ) ;	
					break;
				}
				case 'top-right':
				{
					_mc.x = ( _stage.stageWidth - _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = (  _offsetVertical) - ( _mc.height / 2 ) ;		
					break;
				}
				case 'down-left':
				{
					_mc.x = (  _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = (  _stage.stageHeight - _offsetVertical) - ( _mc.height / 2 ) ;	
					break;
				}
				case 'down-right':
				{
					_mc.x = ( _stage.stageWidth - _offsetHorizontal) - ( _mc.width / 2 ) ;
					_mc.y = ( _stage.stageHeight - _offsetVertical) - ( _mc.height / 2 ) ;	
					break;
				}
				default:
				{
					break;
				}
			}
		}
	}
}