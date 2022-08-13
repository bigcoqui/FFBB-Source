package meta.data.dependency;

import lime.app.Application;

/**
	Discord Rich Presence, both heavily based on Izzy Engine and the base game's, as well as with a lot of help 
	from the creator of izzy engine because I'm dummy and dont know how to program discord
**/
class Discord
{
	#if !html5
	// set up the rich presence initially
	public static function initializeRPC()
	{
		// THANK YOU GEDE
		Application.current.window.onClose.add(shutdownRPC);
	}

	static function onError(_code:Int, _message:String)
	{
		trace('Error! $_code : $_message');
	}

	static function onDisconnected(_code:Int, _message:String)
	{
		trace('Disconnected! $_code : $_message');
	}

	//

	/* This function contains a new installation at the end called 'icon' which will track the discord image being used for the certain states you're in the game.
		Due to 'largeImageKey' reading a String for a picture, the 'icon' variable that's a String is used for 'largeImageKey' to track for each song and state.
	    Me and Decoy spent a little while figuring this out and he's mainly responsible for the idea. We did get inspiration from Afton, so credits to them. - doubletime32 */
	public static function changePresence(details:String = '', state:Null<String> = '', ?smallImageKey:String, ?hasStartTimestamp:Bool, ?endTimestamp:Float, ?icon: String)
	{
		var startTimestamp:Float = (hasStartTimestamp) ? Date.now().getTime() : 0;

		if (endTimestamp > 0)
			endTimestamp = startTimestamp + endTimestamp;

		// trace('Discord RPC Updated. Arguments: $details, $state, $smallImageKey, $hasStartTimestamp, $endTimestamp');
	}
	#end
}