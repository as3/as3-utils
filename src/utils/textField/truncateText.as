package utils.textField
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;

	/**
	 * Truncate a single-line TextField to a specific width.
	 * @param tf                    the textfield to truncate.
	 * @param maxWidth              the desired text width to truncate at.
	 * @param isEllipsed    denotes whether to truncate with the ellipse char "...".
	 * @param isLineEllipse gives the option to "ellipse" the entire width of the field.
	 */
	public function truncateText(tf:TextField, maxWidth:Number, isEllipsed:Boolean = true, isLineEllipse:Boolean = false):void
	{
		var ellipse:String = '...';

		// save the autosize settings for renewal at the end ...
		var autoSizeSetting:String = tf.autoSize;
		tf.autoSize = TextFieldAutoSize.NONE;

		// subtract a touch of length from the max width to insure no visual overflow ...
		//maxWidth = (!isLongEllipse) ? (maxWidth - 5) : (maxWidth -= 10);

		// don't ellipse if we fit under the max width.
		if (tf.textWidth <= maxWidth && !isLineEllipse)
		{
			return;
		}

		// hide the field momentarily so the user doesnt see our tests ...
		//tf.visible = false;

		// save the original text string & it's length
		var str:String = tf.htmlText;
		var strLength:Number = str.length;

		// save the (stereotypical fonts) widest character's width: "W"
		tf.htmlText = "W";
		var wCharWidth:Number = tf.textWidth;

		// save the (stereotypical fonts) medium character's width: "A"
		tf.text = "A";
		var aCharWidth:Number = tf.textWidth;

		// the max num of (the largest) chars which our max desired width can hold.
		var ptr:Number = Math.floor(maxWidth / wCharWidth);

		// collect the portion of the string which represents the max large chars (ptr) and add it to the field.
		var checkStr:String = str.substr(0, ptr);
		tf.text = checkStr;

		// Now that we have a baseline set below our maxWidth we can start adding/testing characters:
		// in this way we optimize the number of loops which must be performed which *greatly* improves
		// performance rather than adding/testing thru the entire string (this is especially important
		// when using the method on many long texted TextFields: smart, huh?
		var cnt:Number;
		while (tf.textWidth < maxWidth)
		{
			// see if we can fit one or more standard characters in the space remaining: if we cant: bail.
			cnt = Math.floor((maxWidth - tf.textWidth) / aCharWidth);
			if (cnt == 0)
			{
				break;
			}
			// increase the max chars: if we accidentally went above the str length: fix er up ...
			ptr += cnt;
			ptr = (ptr > strLength) ? strLength : ptr;

			// once again set a slice of our max fitting chars to the field.
			checkStr = str.substr(0, ptr);
			tf.htmlText = checkStr;

			// if our max fitting chars is the same as the string length: bail too.
			if (strLength == ptr)
			{
				break;
			}
		}

		// if we want to ellipse apply it to the field.
		if (isEllipsed)
		{
			tf.appendText(ellipse);
		}

		// again check if we've exceeded the max desired width ...
		if (tf.textWidth > maxWidth)
		{
			// if we have remove a character and test again.
			while (tf.textWidth > maxWidth)
			{
				checkStr = checkStr.substr(0, -1);
				tf.htmlText = isEllipsed ? (checkStr + ellipse) : checkStr;
			}
		}

		// alright - things fit perfectly now! However; maybe you want it to
		// "ellipse" thru the entire length of the field for visual effect?
		//
		// TODO - Warning: this functions but is not perfect: can be optimized and made more accurate.
		//
		if (isLineEllipse)
		{

			var tmpField:TextField = new TextField();
			tmpField.width = tf.width;
			tmpField.setTextFormat(tf.getTextFormat());

			// save the (stereotypical fonts) smallest character's width: "."
			tmpField.htmlText = ".";
			var periodCharWidth:Number = tmpField.textWidth;

			tmpField.htmlText = "";
			var whiteSpaceWidth:Number = tmpField.width - tf.textWidth;
			var i:Number = Math.floor(whiteSpaceWidth / periodCharWidth);
			while (i-- > 0)
			{
				tmpField.appendText(".");
			}
			if (whiteSpaceWidth < tmpField.textWidth)
			{
				while (whiteSpaceWidth < tmpField.textWidth)
				{
					tmpField.htmlText = tmpField.text.substr(0, -1);
				}
			}
			else if (whiteSpaceWidth > tmpField.textWidth)
			{
				while (tmpField.textWidth < whiteSpaceWidth)
				{
					tmpField.appendText(".");
				}
				tmpField.htmlText = tmpField.text.substr(0, -1);
			}
			tf.appendText(tmpField.text);
		}

		// restore the settings and make the text visible again...
		tf.autoSize = autoSizeSetting;
		//tf.visible = true;

		// defer rendering if the field is on stage to avoid the flickering of the char tests...
		//if(tf.stage != null) tf.stage.invalidate( );
	}
}