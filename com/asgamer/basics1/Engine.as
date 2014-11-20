
package com.asgamer.basics1
{
	import flash.display.MovieClip;
	import flash.display.Stage;
	import flash.events.Event; //don't forget to make sure this is imported
	
	public class Engine extends MovieClip
	{
		
		private var numStars:int = 80;
		// we need to keep track of our enemies.
		private var enemyList:Array = new Array();
		// moved ourShip to a class variable.
		private var ourShip:Ship;
		
		public function Engine() : void
		{
			//removed the var ourShip:Ship because we declared it above.
			ourShip = new Ship(stage);
			stage.addChild(ourShip);
			
			ourShip.x = stage.stageWidth / 2;
			ourShip.y = stage.stageHeight / 2;
			
			for (var i:int = 0; i < numStars; i++)
			{
				stage.addChildAt(new Star(stage), stage.getChildIndex(ourShip));
			}
			
			
		}
		
	}
	
}