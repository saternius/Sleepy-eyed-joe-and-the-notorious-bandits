class rf extends MovieClip {
	function onLoad(){
		_x=545;
		_y=315;
	}
	function onEnterFrame() {
		_x-=5;
		_y-=7
		if(this._y<40){
			_root.mrface.fish+=1;
		}
	}
}
