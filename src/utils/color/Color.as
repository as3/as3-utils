package utils.color
{
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import utils.number.clamp;
	
	/**
	 * A color, based on a 24-bit hex color, that can be manipulated, split into channels, 
	 * and converted into several convenient formats. 
	 * 
	 * This class makes extensive use of bitwise operations. For information on how these work, check out the 
	 * following resources.
	 * <ul>
	 * <li><a href="http://lab.polygonal.de/2007/05/10/bitwise-gems-fast-integer-math/">Bitwise Gems (Polygonal Labs)</a></li>
	 * <li><a href="http://www.gamedev.net/reference/articles/article1563.asp">Bitwise Operations in C</a></li>
	 * <li><a href="http://en.wikipedia.org/wiki/Bitwise_operation">Wikipedia</a></li>
	 * </ul>
	 * 
	 * Most of the formulae for converting to and from HSV and HSL color spaces was found in this article.
	 * <a href="http://en.wikipedia.org/wiki/HSL_and_HSV">Wikipedia - HSL and HSV</a>
	 * 
	 * @author Mims H. Wright
	 */
	public class Color extends EventDispatcher
	{
		[Event(name="colorChanged", type="flash.events.Event")]
		public static const COLOR_CHANGED:String = "colorChanged";
		
		// Masks and offsets are used for bitwise operations on the color channels.
		public static const RED_MASK:uint = 0x00FF0000; 
		public static const RED_OFFSET:uint = 16;
		public static const GREEN_MASK:uint = 0x0000FF00; 
		public static const GREEN_OFFSET:uint = 8;
		public static const BLUE_MASK:uint = 0x000000FF; 
		public static const BLUE_OFFSET:uint = 0;
		
		/** Maximum value allowed for a 24-bit color */
		protected static const MAX_COLOR_VALUE:uint = 0xFFFFFF;
		/** Maximum value allowed for a single channel */ 
		protected static const MAX_CHANNEL_VALUE:uint = 0xFF;
		/** The step size betwen web color channels */
		protected static const WEB_COLOR_STEP_SIZE:uint = 0x33;
		
		
		/** 
		 * This is the hex value for the Color object in the standard form, 0xrrggbb. 
		 * It is the only true record of the color represented by a Color object. 
		 * All other getters and setters ultimately manipulate this value or are 
		 * derived from it.
		 */
		[Bindable("colorChanged")]
		public function get hex ():uint { return _hex; }
		public function set hex (rgb:uint):void { 
			rgb = clamp(rgb, 0, MAX_COLOR_VALUE);
			_hex = rgb; 
			dispatchEvent(new Event(COLOR_CHANGED));
		}
		protected var _hex:uint = 0x000000;
		
		
		/** 
		 * Constructor.
		 * 
		 * @param value An initial value for the color. 
		 * 				Note: alpha channel is ignored by the constructor. 
		 * 				Default is black with full alpha.
		 */
		public function Color(value:uint = 0x000000) {
			this.hex = value;
		}
		
		
		
		// Individual channel getters and setters
		
		[Bindable]
		/** The hex value for the red channel. */
		public function get red():uint {						return (hex & RED_MASK) >>> RED_OFFSET; } 
		public function set red(red:uint):void { 				setChannel(red, RED_OFFSET, RED_MASK); }
		[Bindable]
		/** The percentage value for the red channel. */
		public function get redPercent():Number { 				return red / MAX_CHANNEL_VALUE }
		public function set redPercent(red:Number):void { 		setChannel(int(red * MAX_CHANNEL_VALUE), RED_OFFSET, RED_MASK); }
		
		[Bindable]
		/** The hex value for the green channel. */
		public function get green():uint {		 				return (hex & GREEN_MASK) >>> GREEN_OFFSET; }
		public function set green(green:uint):void {		 	setChannel(green, GREEN_OFFSET, GREEN_MASK); }
		[Bindable]
		/** The percentage value for the green channel. */
		public function get greenPercent():Number { 			return green / MAX_CHANNEL_VALUE }
		public function set greenPercent(green:Number):void { 	setChannel(int(green * MAX_CHANNEL_VALUE), GREEN_OFFSET, GREEN_MASK); }
		
		[Bindable]
		/** The hex value for the blue channel. */
		public function get blue():uint { 						return (hex & BLUE_MASK) >>> BLUE_OFFSET; }
		public function set blue(blue:uint):void { 				setChannel(blue, BLUE_OFFSET, BLUE_MASK); }
		[Bindable]
		/** The percentage value for the blue channel. */
		public function get bluePercent():Number { 				return blue / MAX_CHANNEL_VALUE }
		public function set bluePercent(blue:Number):void { 	setChannel(int(blue * MAX_CHANNEL_VALUE), BLUE_OFFSET, BLUE_MASK); }
		
		
		// Channels in the CMYK space. 
		
		/** The percentage for the black value in CMYK. Approximations only. */
		public function get black():Number { return Math.min(1 - redPercent, 1 - greenPercent, 1 - bluePercent); } 

		/** The percentage for the cyan value in CMYK. Approximations only. */
		public function get cyan():Number { return (1 - redPercent - black) / (1 - black); }

		/** The percentage for the magnenta value in CMYK. Approximations only. */
		public function get magenta():Number { return (1 - greenPercent - black) / (1 - black); }

		/** The percentage for the yellow value in CMYK. Approximations only. */
		public function get yellow():Number { return (1 - bluePercent - black) / (1 - black); }
		
		/**
		 * Converts a value for CMYK to RGB. Each value provided must be in the 
		 * range of 0.0-1.0. 
		 * 
		 * Note: this method is not very accurate and should not be used
		 * for professional color conversion.
		 */
		public function setCMYK (c:Number, m:Number, y:Number, k:Number):void {
			k = clamp(k, 0, 1);
			c = clamp(c, 0, 1) * (1-k) + k;
			m = clamp(m, 0, 1) * (1-k) + k;
			y = clamp(y, 0, 1) * (1-k) + k;

			red = convertChannel(c);
			green = convertChannel(m);
			blue = convertChannel(y);
			
			function convertChannel(channel:Number):Number {
				return int((1 - Math.min(1, channel))*255 + 0.5);
			}
		}
		
		
		/**
		 * Indicates the color space that HS_ operations will use by default.
		 * If true, HSV (hue, saturation, value) will be used.
		 * If false, HSL (hue, saturation, lightness) will be used. 
		public var useHSV:Boolean = true;
		 */
		 
					
		/**
		 * The hue of the color as a value in degrees from 0-360
		 */
 		public function get hue():Number {
			
			// nested function to calculate the hue based on the lightest color.
			function calculateHue (colorA:uint, colorB:uint, offset:uint):Number {
				return (60 * (colorA - colorB) / (lightestChannelValue - darkestChannelValue) + offset) % 360;
			}
	
			if (this.isGrey()) {
				return 0; // grey colors don't really have a hue.
			} else if (lightestChannelValue == red) {
				return calculateHue (green, blue, 0);
			} else if (lightestChannelValue == green) {
				return calculateHue (blue, red, 120);
			} else if (lightestChannelValue == blue) {
				return calculateHue (red, green, 240);
			} else {
				throw new Error("Somehow the brightest channel isn't one of the channels"); 
			}
		}
		
		public function set hue(hue:Number):void { 
			setHSV(hue, saturation, value); 
		} 
		
		
		/** The hue as a percentage instead of as a degree */
		public function get huePercent():Number { return hue/360; }

		public function set huePercent(huePercent:Number):void {
			hue = huePercent * 360;
		}
		
		
		/** The saturation of the color as a percentage. */
		public function get saturation ():Number {
			if (lightestChannelValue <= 0) { return 0; }
			return uint(lightestChannelValue - darkestChannelValue) / lightestChannelValue;
		}
		public function set saturation(saturation:Number):void {
			setHSV(hue, saturation, value); 
		}
		
		/**
		 * The value of the color in HSV color space.
		 * range = 0~255 
		 */
		public function get value ():uint {
			return lightestChannelValue;
		}
		public function set value(value:uint):void {
			setHSV(hue, saturation, value);
		}
		
		/**
		 * The color value as a percentage.
		 */
		public function get valuePercentage():Number {
			return value / MAX_CHANNEL_VALUE;
		}
		
		
		/* public function get lightness():Number {
			return 0.5 * (lightestChannelValue + darkestChannelValue);
		}
		public function set lightness(lightness:Number):void {
			limit(lightness, 0, 1);
			setHSL(hue, saturation, lightness);
		} */
		
		/**
		 * Sets the color by providing three values - one for each channel.
		 */
		public function setRGB(red:uint, green:uint, blue:uint):void {
			this.red = red;
			this.green = green;
			this.blue = blue;
		}
		
		
		/** 
		 * Sets the hue, saturation, and lightness of the color.
		 * 
		 * @param hue The hue in degrees (0~360)
		 * @param saturation The saturation in percent (0~1)
		 * @param the lightness in percent (0~1) 
		 public function setHSL(hue:Number, saturation:Number, lightness:Number):void {
			
			// If saturation is 0, that means the color is grey so just use the lightness value for all channels. 
			if (saturation == 0) { 
				red = green = blue = lightness;
				return;
			}
			
			// limit parameters to appropriate range.
			hue 		= limit(hue, 0, 360);
			saturation 	= limit(saturation, 0, 1);
			lightness 	= limit(lightness, 0, 1);
			
			// begin crazy algorithms!!! zOMG!!1
			var q:Number, p:Number, rHue:Number, gHue:Number, bHue:Number;
			if (lightness < 0.5) { 
				q = lightness * (1 + saturation); 
			} else { 
				q = lightness + saturation - (lightness * saturation); 
			}
			
			p = 2 * lightness - q;
			rHue = huePercent + 1/3;
			gHue = huePercent;
			bHue = huePercent - 1/3;
			
			if (huePercent < 1/3) { bHue += 1.0; }
			if (huePercent > 1/3) { rHue -= 1.0; }
			
			red = calculateResultForChannel(rHue);
			green = calculateResultForChannel(gHue);
			blue = calculateResultForChannel(bHue);
			
			// nested function to figure out results for each channel based on channel hue.
			function calculateResultForChannel(channelHue:Number):Number {
				if (channelHue < 1/6) { 
					return p + ((q - p) * 6 * channelHue);
				} else if (channelHue < 1/2) {
					return q;
				} else if (channelHue < 2/3) {
					return p + ((q - p) * 6 * (2/3 - channelHue));
				} else {
					return p;
				}
			}
		}  
		 */
		
		/** 
		 * Sets the hue, saturation, and value of the color.
		 * 
		 * @param hue The hue in degrees (0~360)
		 * @param saturation The saturation in percent (0~1)
		 * @param the value in percent (0~255) 
		 */
		 public function setHSV(hue:Number, saturation:Number, value:uint):void {
			hue %= 360;
			if (hue < 0) hue += 360;
			saturation = clamp(saturation, 0, 1);
			value = clamp(value, 0, 255);
			
			var hueRange:Number, i:int, f:Number, p:Number, q:Number, t:Number, v:Number;
			
			// Begin Crazy algorithms
			hueRange = hue / 60;
			i = Math.floor(hueRange) % 6;
			f = hueRange - Math.floor(hueRange);
			p = value * (1 - saturation);
			q = value * (1 - f * saturation);
			t = value * (1 - (1 - f) * saturation);
			v = value;
			
			switch (i) {
				case 0: setRGB(v,t,p); break;
				case 1: setRGB(q,v,p); break;
				case 2: setRGB(p,v,t); break;
				case 3: setRGB(p,q,v); break;
				case 4: setRGB(t,p,v); break;
				case 5: setRGB(v,p,q); break;
				default: throw new Error("Invalid hue while converting HSV to RGB");
			}
		}
		
		
		/**
		 * Returns the <em>value</em> of the lightest color channel (excluding alpha).
		 * Used internally for hsv and hsl operations. 
		 */
		protected function get lightestChannelValue():uint {	
			return Math.max(red, Math.max(green, blue)); 
		}
		
		/**
		 * Returns the <em>value</em> of the darkest color channel (excluding alpha).
		 * Used internally for hsv and hsl operations. 
		 */
		protected function get darkestChannelValue():uint {		
			return Math.min(red, Math.min(green, blue)); 
		}
		
		/** 
		 * Returns true if the color is a shade of grey (including white and black).
		 * In RGB, colors with the same value for all three channels are grey. 
		 */
		public function isGrey():Boolean { 
			return (red == green) && (red == blue);  
		}
		
		
		/**
		 * Sets the value of a color channel. 
		 * Used by the individual color channel getters and setters.
		 * 
		 * @param value The new value to set the channel - between 0 and 0xFF
		 * @param offset The number of places to binary shift the channel value. e.g. 8 for green.
		 * @param mask The binary mask for the channel
		 */
		protected function setChannel(value:int, offset:uint, mask:uint):void {
			// limit the value between 0 and 0xFF
			value = clamp(value, 0, MAX_CHANNEL_VALUE);
			// shift the value to the appropriate channel
			value <<= offset;
			// clear the channel
			this.hex &= ~mask;
			// set the channel to the new value
			this.hex |= value;	
		}
		
		/** 
		 * Produces the opposite color of the current value of the color object 
		 * and sets the value of this color to its inverse.
		 * e.g. yellow becomes blue, black becomes white 
		 */
		public function invert():void {
			red = MAX_CHANNEL_VALUE - red;
			green = MAX_CHANNEL_VALUE - green;
			blue = MAX_CHANNEL_VALUE - blue;
		}
		
		/** 
		 * Produces the opposite color of the current value of the color object.
		 * e.g. yellow becomes blue, black becomes white 
		 */
		public function getInverse ():Color { 
			var inverse:Color = new Color();
			inverse.red = MAX_CHANNEL_VALUE - red;
			inverse.green = MAX_CHANNEL_VALUE - green;
			inverse.blue = MAX_CHANNEL_VALUE - blue;
			return inverse;
		}
		
		/**
		 * Returns the rgb value for the web color that is closest to the color.
		 * 
		 * @returns uint The value for the nearest web color.
		 */ 
		public function getNearestWebColor():uint {
			var r:uint, g:uint, b:uint;
			r = Math.round(red / WEB_COLOR_STEP_SIZE) * WEB_COLOR_STEP_SIZE;
			g = Math.round(green / WEB_COLOR_STEP_SIZE) * WEB_COLOR_STEP_SIZE;
			b = Math.round(blue / WEB_COLOR_STEP_SIZE) * WEB_COLOR_STEP_SIZE;
			return (r << RED_OFFSET | g << GREEN_OFFSET | b << BLUE_OFFSET);
		}
		
		/** Sets the saturation of the color to 0 making it grey. */
		public function desaturate():void {
			this.saturation = 0;
		}
		
		// conversion methods
		
		/** Return a string value of the color */
		override public function toString():String { return getNumberAsHexString(_hex, 8); }
		
		/** Return an array of the 3 channels */
		public function toArray():Array { return [red, green, blue]; } //, alpha]; }
		
		
		/**
		 * Converts a uint into a string in the format “0x123456789ABCDEF”.
		 * This function is quite useful for displaying hex colors as text.
		 *
		 * @author Mims H. Wright (modified by Pimm Hogeling)
		 *
		 * @example 
		 * <listing version="3.0">
		 * getNumberAsHexString(255); // 0xFF
		 * getNumberAsHexString(0xABCDEF); // 0xABCDEF
		 * getNumberAsHexString(0x00FFCC); // 0xFFCC
		 * getNumberAsHexString(0x00FFCC, 6); // 0x00FFCC
		 * getNumberAsHexString(0x00FFCC, 6, false); // 00FFCC
		 * </listing>
		 *
		 *
		 * @param number The number to convert to hex. Note, numbers larger than 0xFFFFFFFF may produce unexpected results.
		 * @param minimumLength The smallest number of hexits to include in the output.
		 * 					   Missing places will be filled in with 0’s.
		 * 					   e.g. getNumberAsHexString(0xFF33, 6); // results in "0x00FF33"
		 * @param showHexDenotation If true, will append "0x" to the front of the string.
		 * @return String representation of the number as a string starting with "0x"
		 */
		private function getNumberAsHexString(number:uint, minimumLength:uint = 1, showHexDenotation:Boolean = true):String {
			// The string that will be output at the end of the function.
			var string:String = number.toString(16).toUpperCase();
			
			// While the minimumLength argument is higher than the length of the string, add a leading zero.
			while (minimumLength > string.length) {
				string = "0" + string;
			}
			
			// Return the result with a "0x" in front of the result.
			if (showHexDenotation) { string = "0x" + string; }
			
			return string;
		}
	}
}