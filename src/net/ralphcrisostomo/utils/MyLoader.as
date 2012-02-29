/**
 * "MyLoader"
 * 
 * Author: Ralph Crisostomo
 * Email: rrecrisostomo@gmail.com
 * Url: http://ralphcrisostomo.net
 * Created: Feb 27, 2012
 */


package net.ralphcrisostomo.utils
{
	
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.*;
	import flash.events.HTTPStatusEvent;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.URLRequest;
	
	import net.ralphcrisostomo.events.MyLoaderEvent;
	
	public class MyLoader extends Loader
	{
		// PROPERTIES
		private var _loader:Loader;
		private var _totalBytesLoaded:Number;
		
		// CONSTRUCTOR
		public function MyLoader(url:String){
			
			_loader = new Loader();
			_loader.load(new URLRequest(url));
			
			// Event Listenerra
			_loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, loadError);
			_loader.contentLoaderInfo.addEventListener(Event.OPEN, loadStart);
			_loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, loadProgress);
			_loader.contentLoaderInfo.addEventListener(Event.INIT, loadInitialised);
			_loader.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS, httpStatus);
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, loadComplete);
			
		}
		
		// METHODS
		
		// Load Error
		private function loadError(event:IOErrorEvent):void{
			trace('Load Error: Not Found');
		}
		
		// Load Starts
		private function loadStart(event:Event):void
		{
			trace('Load Start: Path Opened');
		}
		
		// Load Progress
		private function loadProgress(event:ProgressEvent):void
		{
			
			_totalBytesLoaded = Math.ceil(event.bytesLoaded / 1024);
			
			trace('Bytes Loaded :' + String(_totalBytesLoaded) + 'kb');
			
			// DISPATCH
			dispatchEvent(new Event(Event.CHANGE));
			
		}
		
		// Load Initialize
		private function loadInitialised(event:Event):void
		{
			trace('Load Intialized: Initialized');
		}
		
		private function httpStatus(event:HTTPStatusEvent):void
		{
			trace('HTTP Status: ' + event.status );
			
		}
		
		// Load Complete
		private function loadComplete(event:Event):void
		{
			trace('Load Complete: Load Complete');
			
			// DISPATCH	
			dispatchEvent(new Event(Event.COMPLETE));
			
			// dispatchEvent( new MyLoaderEvent( MyLoaderEvent.CATEGORY , "salads"  ) ); <-- This is a Custom Event		
			
		}
		
		
		// Return Value
		public function getData():Loader
		{
			return _loader;
		}
	}
}