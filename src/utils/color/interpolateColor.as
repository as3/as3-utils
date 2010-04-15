package utils.color
{
	import flash.geom.ColorTransform;

	import utils.math.Percent;
	import utils.number.interpolate;

	/**
	   Interpolates (tints) between two colors.

	   @param begin: The start color.
	   @param end: The finish color.
	   @param amount: The level of interpolation between the two colors.
	   @return The new interpolated color.
	   @usage
	   <code>
	   var myColor:ColorTransform = new ColorTransform();
	   myColor.color              = 0xFF0000;

	   var box:Sprite = new Sprite();
	   box.graphics.beginFill(0x0000FF);
	   box.graphics.drawRect(10, 10, 250, 250);
	   box.graphics.endFill();

	   box.transform.colorTransform = ColorUtil.interpolateColor(new ColorTransform(), myColor, new Percent(0.5));

	   this.addChild(box);
	   </code>
	 */
	public function interpolateColor(begin:ColorTransform, end:ColorTransform, amount:Percent):ColorTransform
	{
		var interpolation:ColorTransform = new ColorTransform();

		interpolation.redMultiplier = interpolate(amount, begin.redMultiplier, end.redMultiplier);
		interpolation.greenMultiplier = interpolate(amount, begin.greenMultiplier, end.greenMultiplier);
		interpolation.blueMultiplier = interpolate(amount, begin.blueMultiplier, end.blueMultiplier);
		interpolation.alphaMultiplier = interpolate(amount, begin.alphaMultiplier, end.alphaMultiplier);
		interpolation.redOffset = interpolate(amount, begin.redOffset, end.redOffset);
		interpolation.greenOffset = interpolate(amount, begin.greenOffset, end.greenOffset);
		interpolation.blueOffset = interpolate(amount, begin.blueOffset, end.blueOffset);
		interpolation.alphaOffset = interpolate(amount, begin.alphaOffset, end.alphaOffset);

		return interpolation;
	}
}