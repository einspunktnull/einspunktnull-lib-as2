class net.einspunktnull.mc.TLine
{
	
	public static function afterStop(flash:MovieClip,seconds:Number,mark:String)
	{
		
		flash.stop();
		var interval = setInterval(done, seconds*1000, flash);
				
		function done(targetMC) 
		{
			clearInterval(interval);
			flash.gotoAndStop(mark);
		}
	}
	
	public static function afterPlay(flash:MovieClip,seconds:Number,mark:String)
	{
		
		flash.stop();
		var interval = setInterval(done, seconds*1000, flash);
				
		function done(targetMC) 
		{
			clearInterval(interval);
			flash.gotoAndPlay(mark);
		}
	}
	
	public static function wait(flash:MovieClip,seconds:Number)
	{
		flash.stop();
		var interval = setInterval(done, seconds*1000, flash);
		
		function done(targetMC) 
		{
			clearInterval(interval);
			flash.play();
		}
	}
	
	
}