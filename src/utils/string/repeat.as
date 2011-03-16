package utils.string {



	public function repeat(n:uint, str:String = " "):String {
		return new Array(n + 1).join(str);
	}
}
