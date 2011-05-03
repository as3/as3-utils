package utils.swf
{

	import flash.display.ActionScriptVersion;
	import flash.geom.*;
	import flash.utils.ByteArray;
	import flash.utils.Endian;

	/**
	 * Reads the bytes of a SWF (as a ByteArray) to acquire
	 * information from the SWF file header.  Some of
	 * this information is inaccessible to ActionScript
	 * otherwise.
	 * 
	 * @author Trevor McCauley - www.senocular.com
	 */
	public class SWFReader
	{

		// properties starting with those
		// found first in the byte stream

		/**
		 * Indicates whether or not the SWF
		 * is compressed.
		 */
		public var compressed:Boolean;

		/**
		 * The major version of the SWF.
		 */
		public var version:uint;

		/**
		 * The file size of the SWF.
		 */
		public var fileSize:uint;

		// compression starts here if SWF compressed:

		/**
		 * The dimensions of the SWF in the form of
		 * a Rectangle instance.
		 */
		public function get dimensions():Rectangle
		{
			return _dimensions;
		}
		private var _dimensions:Rectangle = new Rectangle();

		// dimensions gets accessor since we don't
		// want people nulling the rect; it should
		// always have a value, even if 0-ed

		/**
		 * Width of the stage as defined by the SWF.
		 * Same as dimensions.width.
		 */
		public function get width():uint
		{
			return uint(_dimensions.width);
		}

		/**
		 * Height of the stage as defined by the SWF.
		 * Same as dimensions.height.
		 */
		public function get height():uint
		{
			return uint(_dimensions.height);
		}

		/**
		 * When true, the bytes supplied in calls made to the tagCallback
		 * function includes the RECORDHEADER of that tag which includes
		 * the tag and the size of the tag. By default (false) this
		 * information is not included.
		 */
		public function get tagCallbackBytesIncludesHeader():Boolean
		{
			return _tagCallbackBytesIncludesHeader;
		}

		public function set tagCallbackBytesIncludesHeader(value:Boolean):void
		{
			_tagCallbackBytesIncludesHeader = value;
		}
		private var _tagCallbackBytesIncludesHeader:Boolean = false;

		/**
		 * The frame rate of the SWF in frames
		 * per second.
		 */
		public var frameRate:uint;

		/**
		 * The total number of frames of the SWF.
		 */
		public var totalFrames:uint;

		/**
		 * ActionScript version.
		 */
		public var asVersion:uint;

		/**
		 * Determines local playback security; when
		 * true, indicates that when this file is
		 * run locally, it can only access the network.
		 * When false, only local files can be accessed.
		 * This does not apply when the SWF is being
		 * run in a local-trusted sandbox.
		 */
		public var usesNetwork:Boolean;

		/**
		 * The background color of the SWF.
		 */
		public var backgroundColor:uint;

		/**
		 * Determines if the SWF is protected from
		 * being imported into an authoring tool.
		 */
		public var protectedFromImport:Boolean;

		/**
		 * Determines if remote debugging is enabled.
		 */
		public var debuggerEnabled:Boolean;

		/**
		 * The XMP metadata defined in the SWF.
		 */
		public var metadata:XML;

		/**
		 * Maximun allowed levels of recursion.
		 */
		public var recursionLimit:uint;

		/**
		 * Time in seconds a script will run in a
		 * single frame before a timeout error
		 * occurs.
		 */
		public var scriptTimeoutLimit:uint;

		/**
		 * The level of hardware acceleration specified
		 * for the SWF. 0 is none, 1 is direct, and 2
		 * is GPU (Flash Player 10+).
		 */
		public var hardwareAcceleration:uint;

		/**
		 * A callback function that will be called when
		 * a tag is read during the parse process. The
		 * callback function should contain the parameters
		 * (tag:uint, bytes:ByteArray).
		 */
		public var tagCallback:Function;

		/**
		 * Indicates that the SWF bytes last provided
		 * were successfully parsed. If the SWF bytes
		 * were not successfully parsed, no SWF data
		 * will be available.
		 */
		public var parsed:Boolean;

		/**
		 * The Flash Player error message that resulted
		 * from the error that caused a parse to fail.
		 */
		public var errorText:String = "";

		// keeping track of data
		private var bytes:ByteArray;
		private var currentByte:int; // used in bit reading
		private var bitPosition:int; // used in bit reading
		private var currentTag:uint;

		// tag flags
		private var bgColorFound:Boolean;

		// constants
		private const GET_DATA_SIZE:int = 5;
		private const TWIPS_TO_PIXELS:Number = 0.05; // 20 twips in a pixel
		private const TAG_HEADER_ID_BITS:int = 6;
		private const TAG_HEADER_MAX_SHORT:int = 0x3F;

		private const SWF_C:uint = 0x43; // header characters
		private const SWF_F:uint = 0x46;
		private const SWF_W:uint = 0x57;
		private const SWF_S:uint = 0x53;

		private const TAG_ID_EOF:uint = 0; // recognized SWF tags
		private const TAG_ID_BG_COLOR:uint = 9;
		private const TAG_ID_PROTECTED:uint = 24;
		private const TAG_ID_DEBUGGER1:uint = 58;
		private const TAG_ID_DEBUGGER2:uint = 64;
		private const TAG_ID_SCRIPT_LIMITS:uint = 65;
		private const TAG_ID_FILE_ATTS:uint = 69;
		private const TAG_ID_META:uint = 77;

		private const TAG_ID_SHAPE_1:uint = 2;
		private const TAG_ID_SHAPE_2:uint = 22;
		private const TAG_ID_SHAPE_3:uint = 32;
		private const TAG_ID_SHAPE_4:uint = 83;

		/**
		 * SWFHeader constructor.
		 * @param	swfBytes Bytes of the SWF in a ByteArray.
		 * You can get the bytes of a SWF by loading it into
		 * a URLLoader or using Loader.bytes once a SWF has
		 * been loaded into that Loader.
		 */
		public function SWFReader(swfBytes:ByteArray = null)
		{
			parse(swfBytes);
		}

		/**
		 * Provides a string presentation of the SWFHeader
		 * object which outlines the different values
		 * obtained from a parsed SWF
		 * @return The String form of the instance
		 */
		public function toString():String
		{
			if (parsed)
			{
				var compression:String = (compressed) ? "compressed" : "uncompressed";
				var frames:String = totalFrames > 1 ? "frames" : "frame";
				return "[SWF" + version + " AS" + asVersion + ".0: " + totalFrames + " " + frames + " @ " + frameRate + " fps "
					+ _dimensions.width + "x" + _dimensions.height + " " + compression + "]";
			}

			// default toString if SWF not parsed
			return Object.prototype.toString.call(this) as String;
		}

		/**
		 * Parses the bytes of a SWF file to extract
		 * properties from its header.
		 * @param	swfBytes Bytes of a SWF to parse.
		 */
		public function parse(swfBytes:ByteArray):void
		{
			parseDefaults();

			// null bytes, exit
			if (swfBytes == null)
			{
				parseError("Error: Cannot parse a null value.");
				return;
			}


			// assume at start parse completed successfully
			// on failure, this will be set to false
			parsed = true;

			// --------------------------------------
			// HEADER
			// --------------------------------------

			try
			{

				// try to parse the bytes.  Failures
				// results in cleared values for the data
				bytes = swfBytes;
				bytes.endian = Endian.LITTLE_ENDIAN;
				bytes.position = 0;

				// get header characters
				var swfFC:uint = bytes.readUnsignedByte(); // F, or C if compressed
				var swfW:uint = bytes.readUnsignedByte(); // W
				var swfS:uint = bytes.readUnsignedByte(); // S

				// validate header characters
				if ((swfFC != SWF_F && swfFC != SWF_C)
					|| swfW != SWF_W || swfS != SWF_S)
				{
					parseError("Error: Invalid SWF header.");
					return;
				}

				compressed = Boolean(swfFC == SWF_C); // == SWF_F if not compressed

				version = bytes.readUnsignedByte();

				fileSize = bytes.readUnsignedInt(); // mostly redundant since we should have full bytes

				// if compressed, need to uncompress
				// the data after the first 8 bytes
				// (first 8 already read above)
				if (compressed)
				{

					// use a temporary byte array to
					// represent the compressed portion
					// of the SWF file
					var temp:ByteArray = new ByteArray();
					bytes.readBytes(temp);
					bytes = temp;
					bytes.endian = Endian.LITTLE_ENDIAN;
					bytes.position = 0;
					temp = null; // temp no longer needed

					bytes.uncompress();

						// Note: at this point, the original
						// uncompressed 8 bytes are no longer
						// part of the current bytes byte array
				}

				_dimensions = readRect();
				bytes.position++; // one up after rect

				frameRate = bytes.readUnsignedByte();

				totalFrames = bytes.readUnsignedShort();

			}
			catch (error:Error)
			{

				// header parse error
				parseError(error.message);
				return;
			}

			// --------------------------------------
			// TAGS
			// --------------------------------------

			// read all the tags in the file
			// up until the END tag
			try
			{
				while (readTag())
				{
					// noop	
				}
			}
			catch (error:Error)
			{

				// error in tag parsing. EOF would throw
				// an error, but the END tag should be
				// reached before that occurs
				parseError(error.message);
				return;
			}

			// parse completed successfully!
			// null bytes since no longer needed
			bytes = null;
		}

		/**
		 * Defines default values for all the class
		 * properties.  This is used to have accurate
		 * values for properties which may not be
		 * present in the SWF file such as asVersion
		 * which is only required to be specified in
		 * SWF8 and above (in FileAttributes tag).
		 */
		private function parseDefaults():void
		{
			compressed = false;
			version = 1; // SWF1
			fileSize = 0;
			_dimensions = new Rectangle();
			frameRate = 12; // default from Flash authoring (flex == 24)
			totalFrames = 1;
			metadata = null;
			asVersion = ActionScriptVersion.ACTIONSCRIPT2; // 2 if not explicit
			usesNetwork = false;
			backgroundColor = 0xFFFFFF; // white background
			protectedFromImport = false;
			debuggerEnabled = true;
			scriptTimeoutLimit = 256;
			recursionLimit = 15;
			hardwareAcceleration = 0;

			errorText = ""; // clear existing error text

			// tag helper flags
			bgColorFound = false;
		}

		/**
		 * Clears variable data and logs an error
		 * message.
		 */
		private function parseError(message:String = "Unkown error."):void
		{
			compressed = false;
			version = 0;
			fileSize = 0;
			_dimensions = new Rectangle();
			frameRate = 0;
			totalFrames = 0;
			metadata = null;
			asVersion = 0;
			usesNetwork = false;
			backgroundColor = 0;
			protectedFromImport = false;
			debuggerEnabled = false;
			scriptTimeoutLimit = 0;
			recursionLimit = 0;
			hardwareAcceleration = 0;

			parsed = false;
			bytes = null;
			errorText = message;
		}

		/**
		 * Utility to convert a unit value into a string
		 * in hex style padding value with "0" characters.
		 * @return The string representation of the hex value.
		 */
		private function paddedHex(value:uint, numChars:int = 6):String
		{
			var str:String = value.toString(16);
			while (str.length < numChars)
				str = "0" + str;
			return "0x" + str;
		}

		/**
		 * Reads a string in the byte stream by
		 * reading all bytes until a null byte (0)
		 * is reached.
		 * @return The string having been read.
		 */
		private function readString():String
		{

			// find ending null character that
			// terminates the string
			var i:uint = bytes.position;
			try
			{
				while (bytes[i] != 0)
					i++;
			}
			catch (error:Error)
			{
				return "";
			}

			// null byte should have been found
			// return the read string
			return bytes.readUTFBytes(i - bytes.position);
		}

		/**
		 * Reads RECT data from the current
		 * location in the current bytes object
		 * @return A rectangle object whose values
		 * match those of the RECT read.
		 */
		private function readRect():Rectangle
		{
			nextBitByte();
			var rect:Rectangle = new Rectangle();
			var dataSize:uint = readBits(GET_DATA_SIZE);
			rect.left = readBits(dataSize, true) * TWIPS_TO_PIXELS;
			rect.right = readBits(dataSize, true) * TWIPS_TO_PIXELS;
			rect.top = readBits(dataSize, true) * TWIPS_TO_PIXELS;
			rect.bottom = readBits(dataSize, true) * TWIPS_TO_PIXELS;
			return rect;
		}

		private function readMatrix():Matrix
		{
			nextBitByte();
			var dataSize:uint;
			var matrix:Matrix = new Matrix();

			if (readBits(1))
			{ // has scale
				dataSize = readBits(GET_DATA_SIZE);
				matrix.a = readBits(dataSize, true);
				matrix.d = readBits(dataSize, true);
			}

			if (readBits(1))
			{ // has rotation
				dataSize = readBits(GET_DATA_SIZE);
				matrix.b = readBits(dataSize, true);
				matrix.c = readBits(dataSize, true);
			}

			// translation
			dataSize = readBits(GET_DATA_SIZE);
			matrix.tx = readBits(dataSize, true) * TWIPS_TO_PIXELS;
			matrix.ty = readBits(dataSize, true) * TWIPS_TO_PIXELS;

			return matrix;
		}

		/**
		 * Reads a series of bits from the current byte
		 * defined by currentByte based on the but at
		 * position bitPosition.  If more bits are required
		 * than are available in the current byte, the next
		 * byte in the bytes array is read and the bits are
		 * taken from there to complete the request.
		 * @param	numBits The number of bits to read.
		 * @return The bits read as a uint.
		 */
		private function readBits(numBits:uint, signed:Boolean = false):Number
		{
			var value:Number = 0; // int or uint
			var remaining:uint = 8 - bitPosition;
			var mask:uint;

			// can get all bits from current byte
			if (numBits <= remaining)
			{
				mask = (1 << numBits) - 1;
				value = (currentByte >> (remaining - numBits)) & mask;
				if (numBits == remaining)
					nextBitByte();
				else
					bitPosition += numBits;

					// have to get bits from 2 (or more)
					// bytes the current and the next (recursive)
			}
			else
			{
				mask = (1 << remaining) - 1;
				var firstValue:uint = currentByte & mask;
				var over:uint = numBits - remaining;
				nextBitByte();
				value = (firstValue << over) | readBits(over);
			}

			// convert to signed int if signed bitflag exists
			if (signed && value >> (numBits - 1) == 1)
			{
				remaining = 32 - numBits; // 32-bit uint
				mask = (1 << remaining) - 1;
				return int(mask << numBits | value);
			}

			// unsigned int
			return uint(value);
		}

		/**
		 * Reads the next byte in the stream assigning
		 * it to currentByte and resets the value of
		 * bitPosition to 0.
		 */
		private function nextBitByte():void
		{
			currentByte = bytes.readByte();
			bitPosition = 0;
		}

		/**
		 * Parses the tag at the current byte location.
		 * @return false if the tag read is the END tag;
		 * true if more tags should be present in the file.
		 */
		private function readTag():Boolean
		{

			var currentTagPosition:uint = bytes.position;

			// read tag header
			var tagHeader:int = bytes.readUnsignedShort();
			currentTag = tagHeader >> TAG_HEADER_ID_BITS;
			var tagLength:uint = tagHeader & TAG_HEADER_MAX_SHORT;

			// if a long tag, the tag length will be
			// set to its maximum. If so, set
			// the tag length to the long length
			if (tagLength == TAG_HEADER_MAX_SHORT)
			{
				tagLength = bytes.readUnsignedInt();
			}

			// when the tag is read, the position
			// of the byte stream must be set to the
			// end of this tag for the start of the next
			// tag.  This assures the correct position
			// no matter what happens in readTagData()
			var nextTagPosition:uint = bytes.position + tagLength;

			// read the data in the tag (if supported)
			var moreTags:Boolean = readTagData(tagLength, currentTagPosition, nextTagPosition);
			if (!moreTags)
				return false; // end tag

			// next tag
			bytes.position = nextTagPosition;
			return true;
		}

		/**
		 * Called from readTag, this parses the value of individual
		 * tag based on the tag id read in the tag header.
		 * @param	tag A tag object containing a tag's id and length.
		 * @param	start The start position of the full tag.
		 * @param	end The end position of the full tag.
		 * @return false if the tag read is the END tag;
		 * true if more tags should be present in the file.
		 */
		private function readTagData(tagLength:uint, start:uint, end:uint):Boolean
		{

			// if defined, call the tag callback with
			// the tag id and a copy of the bytes
			// specific to the tag
			if (tagCallback != null)
			{
				var tagBytes:ByteArray = new ByteArray();
				if (_tagCallbackBytesIncludesHeader)
				{
					tagBytes.writeBytes(bytes, start, end - start);
				}
				else
				{
					if (tagLength)
					{
						tagBytes.writeBytes(bytes, bytes.position, tagLength);
					}
				}
				tagBytes.position = 0;
				tagCallback(currentTag, tagBytes);
			}

			// handle each tag individually based on
			// it's tag id
			switch (currentTag)
			{


				// FileAttributes tag was only required for
				// SWF 8 and later. Calling defaults()
				// assures default values for the properties
				// determined here if the tag is not present
				case TAG_ID_FILE_ATTS:

					nextBitByte(); // read file attributes in bits
					readBits(1); // reserved

					hardwareAcceleration = readBits(2);

					readBits(1); // hasMetaData; auto-determined by tag

					asVersion = (readBits(1) && version >= 9)
						? ActionScriptVersion.ACTIONSCRIPT3
						: ActionScriptVersion.ACTIONSCRIPT2;

					readBits(2); // reserved (2)

					usesNetwork = Boolean(readBits(1) == 1);
					// bunch of others reserved after this
					break;


				// Metadata in a SWF is in the format of
				// XMP XML. Though the FileAttributes will
				// determine if it is present, it's easier to
				// just check for the metadata tag id
				case TAG_ID_META:

					try
					{
						metadata = new XML(readString());
					}
					catch (error:Error)
					{
						// error reading string or parsing as XML
					}
					break;


				// Many background colors could potentially exist
				// for a single SWF, but we're assuming there's
				// only one. If there are more, the first will be used
				case TAG_ID_BG_COLOR:

					// check the bg color found flag
					// if true, we want to ignore all other colors
					// since they would be added after this one
					if (!bgColorFound)
					{
						bgColorFound = true;

						backgroundColor = readRGB();
					}
					break;


				// Only determines if the SWF is protected from
				// import; a password, if provided, will not
				// be retrieved from the SWF
				case TAG_ID_PROTECTED:

					protectedFromImport = Boolean(bytes.readUnsignedByte() != 0);
					// password if needed
					break;


				// the debugger 1 tag is for SWF5 only
				// the debugger 2 tag is for SWF6+
				case TAG_ID_DEBUGGER1:

					if (version == 5)
						debuggerEnabled = true;
					// password if needed
					break;
				case TAG_ID_DEBUGGER2:

					if (version > 5)
						debuggerEnabled = true;
					// password if needed
					break;

				// for both timeout and recursion but I don't
				// think any tool lets you set recursion
				case TAG_ID_SCRIPT_LIMITS:
					recursionLimit = bytes.readUnsignedShort();
					scriptTimeoutLimit = bytes.readUnsignedShort();
					break;

				case TAG_ID_EOF:
					return false; // end of file
					break;

				default:
					// unrecognized tag by this parser; do nothing
					// if you want to support other tags
					// make sure they're caught above in
					// this switch statement.
					break;
			}

			// not last tag, continue reading
			return true;
		}

		private function readRGB():uint
		{
			return (bytes.readUnsignedByte() << 16) // R
				| (bytes.readUnsignedByte() << 8) // G
				| bytes.readUnsignedByte(); //       B
		}

		private function readARGB():uint
		{
			return (bytes.readUnsignedByte() << 24) // A
				| (bytes.readUnsignedByte() << 16) // R
				| (bytes.readUnsignedByte() << 8) // G
				| bytes.readUnsignedByte(); //       B
		}

		private function readRGBA():uint
		{
			var rByte:uint = bytes.readUnsignedByte(); // R
			var gByte:uint = bytes.readUnsignedByte(); // G
			var bByte:uint = bytes.readUnsignedByte(); // B
			var aByte:uint = bytes.readUnsignedByte(); // A
			return (aByte << 24) // A
				| (rByte << 16) // R
				| (gByte << 8) // G
				| bByte; //       B
		}
	}
}