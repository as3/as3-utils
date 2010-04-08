package utils.string
{
	 /**
                *       Removes whitespace from the front and the end of the specified
                *       string.
                *
                *       @param input The String whose beginning and ending whitespace will
                *       will be removed.
                *
                *       @returns A String with whitespace removed from the begining and end
                *
                *       @langversion ActionScript 3.0
                *       @playerversion Flash 9.0
                *       @tiptext
                */
                public function trim(input:String):String
                {
                        return ltrim(rtrim(input));
                }
}