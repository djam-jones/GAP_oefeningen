package com
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.display.Stage;
	
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Main extends Sprite 
	{
		
		private var ball 	: 	Ball;
		private var player	:	Player;
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
			ball = new Ball();
			addChild(ball);
			
			player = new Player(37, 39, 38, 40);
			addChild(player);
			player.x = stage.stageWidth / 2;
			player.y = stage.stageHeight / 2;
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function update(e : Event) : void
		{
			
			ball.seek(new Vector2D(player.x, player.y));
			
			ball.update();
		}	
	}	
}