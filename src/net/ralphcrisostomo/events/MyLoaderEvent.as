package net.ralphcrisostomo.events
{
	import flash.events.Event;
	
	public class MyLoaderEvent extends Event
	{
		//Your Custom Event
		public static const CATEGORY:String = "Category";
		
		//Here I type the data property as an Object, but it could also 
		//be a String , depending on the type of info you need to pass
		public var data:Object;
		
		public function MyLoaderEvent( type:String , data:Object ):void
		{
			super ( type );
			this.data = data;
		}
		
		// Clone
		override public function clone():Event
		{
			return new MyLoaderEvent( type , data );
		}
	}
}