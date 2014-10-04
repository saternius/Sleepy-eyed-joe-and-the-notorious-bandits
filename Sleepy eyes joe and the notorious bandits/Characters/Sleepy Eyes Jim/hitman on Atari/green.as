class green extends MovieClip {
	function onLoad(){
		_x=325;
		_y=200;
	}
	function onEnterFrame() {
		if (this._currentframe == this._totalframes) {
			this.removeMovieClip();
		}
	}
}
