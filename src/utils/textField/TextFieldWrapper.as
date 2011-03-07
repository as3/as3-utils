package utils.textField
{
	import flash.display.MovieClip;
	import flash.text.TextField;
	
	/**
	 * Because TextFields are not MovieClips, you cannot do timeline
	 * tweens on a TextField in Flash CSx without first making it a child
	 * of a MovieClip.
	 *  
	 * This class acts as a base class for creating these types of movieclips
	 * so you don't need to create a new class for each text field that 
	 * does this. 
	 * 
	 * In the flash library, create a new movieclip symbol containing the
	 * textField. Make sure you set the instance name for the text field to
	 * "textField". Make the base class for the symbol 
	 * "util.textfield.TextFieldWrapper". Allow Flash to automatically
	 * generate the class for you.
	 * When referencing this MovieClip in your code, use the type 
	 * AbstractTextFieldWrapper insatead of MovieClip. You will be able to set
	 * the text of the TextField using the .text property.
	 * 
	 * @author Mims H. Wright
	 */ 
	public class TextFieldWrapper extends MovieClip
	{
		/**
		 * Direct reference to the text field. 
		 */
		public var textField:TextField;
		
		/** Passes the text through to the text field. */
		public function set text(text:String):void {
			textField.text = text;	
		}
		public function get text():String {
			return textField.text;
		}
		
		public function TextFieldWrapper() {
			super();
		}
	}
}