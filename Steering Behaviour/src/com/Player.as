package com {
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.display.Sprite;
	/**
	 * @author Djamali
	 */
	public class Player extends Sprite
	{
		private var dir:Vector2D = new Vector2D(10, 10);
		private var speed:int = 10;
		
		//movement keys
		private var left:uint;
		private var right:uint;
		private var up:uint;
		private var down:uint;
		
		public function Player(_left:uint, _right:uint, _up:uint, _down:uint)
		{
			var size : int = 30;
			this.graphics.beginFill(0x0000ff);
			this.graphics.lineStyle(1, 0x0000ff);
			this.graphics.lineTo(-size/2, -size/2);
			this.graphics.lineTo(-size/2, size/2);
			this.graphics.lineTo(0, 0);
			
			left = _left;
			right = _right;
			up = _up;
			down = _down;
			
			addEventListener(Event.ENTER_FRAME, tick);
			stage.addEventListener(KeyboardEvent.KEY_DOWN, onKeyDown);
			stage.addEventListener(KeyboardEvent.KEY_UP, onKeyUp);
		}
		
		public function tick(e:Event):void
		{
			this.x += dir.x;
			this.y += dir.y;
		}

		public function onKeyDown(e:KeyboardEvent):void
		{
			if(e.keyCode == left) //Move Left
			{
				dir.x -= speed;
			}
			else if(e.keyCode == right) //Move Right
			{
				dir.x += speed;
			}
			else if(e.keyCode == up) //Move Up
			{
				dir.y += speed;
			}
			else if(e.keyCode == down) //Move Down
			{
				dir.y -= speed;
			}
		}
		
		public function onKeyUp(e:KeyboardEvent):void
		{
			if(e.keyCode == left)
			{
				dir.x = 0;
			}
			else if(e.keyCode == right)
			{
				dir.x = 0;
			}
			else if(e.keyCode == up)
			{
				dir.y = 0;
			}
			else if(e.keyCode == down)
			{
				dir.y = 0;
			}
		}
	}
}
