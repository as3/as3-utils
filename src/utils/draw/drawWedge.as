package utils.draw
{
	import flash.display.Graphics;

	import utils.geom.Ellipse;

	/**
	   Draws a circular wedge.

	   @param graphics The location where drawing should occur.
	   @param ellipse An Ellipse object that contains the size and position of the shape.
	   @param startAngle The starting angle of wedge in degrees.
	   @param arc The sweep of the wedge in degrees.
	   @usage
	   <listing version="3.0">
	   this.graphics.beginFill(0xFF00FF);
	   DrawUtil.drawWedge(this.graphics, new Ellipse(0, 0, 300, 200), 0, 300);
	   this.graphics.endFill();
	   </listing>
	 */
	public function drawWedge(graphics:Graphics, ellipse:Ellipse, startAngle:Number, arc:Number):void
	{
		if (Math.abs(arc) >= 360)
		{
			graphics.drawEllipse(ellipse.x, ellipse.y, ellipse.width, ellipse.height);
			return;
		}

		startAngle += 90;

		var radius:Number = ellipse.width * .5;
		var yRadius:Number = ellipse.height * .5;
		var x:Number = ellipse.x + radius;
		var y:Number = ellipse.y + yRadius;
		var segs:Number = Math.ceil(Math.abs(arc) / 45);
		var segAngle:Number = -arc / segs;
		var theta:Number = -(segAngle / 180) * Math.PI;
		var angle:Number = -(startAngle / 180) * Math.PI;
		var ax:Number = x + Math.cos(startAngle / 180 * Math.PI) * radius;
		var ay:Number = y + Math.sin(-startAngle / 180 * Math.PI) * yRadius;
		var angleMid:Number;

		graphics.moveTo(x, y);
		graphics.lineTo(ax, ay);

		var i:Number = -1;
		while (++i < segs)
		{
			angle += theta;
			angleMid = angle - (theta * .5);

			graphics.curveTo(x + Math.cos(angleMid) * (radius / Math.cos(theta * .5)), y + Math.sin(angleMid) * (yRadius / Math.cos(theta * .5)), x + Math.cos(angle) * radius,
																		 y + Math.sin(angle) * yRadius);
		}

		graphics.lineTo(x, y);
	}
}