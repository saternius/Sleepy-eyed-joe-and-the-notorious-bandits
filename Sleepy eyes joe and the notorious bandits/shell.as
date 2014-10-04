class shell extends MovieClip {
	var gravity;
	var shock;
	var pull;
	var helix;
	function onLoad() {
		if(_root.gc._rotation>0){
			_x=_root.gc._x+25;
		}
		if(_root.gc._rotation<0){
			_rotation=180;
			_x=_root.gc._x-19;
		}
		_y = _root.gc._y+15;
		helix = Math.random()*20-10;
		pull = Math.random()*10-5;
		shock = Math.random()*20;
		gravity = 7;
	}
	function onEnterFrame() {
		_alpha -= 1;
		if (_alpha<1) {
			this.removeMovieClip();
		}
		_rotation += helix;
		_x += pull;
		shock -= 1;
		_y -= shock;
		_y += gravity;
		if (_x>800) {
			this.removeMovieClip();
		}
		if (_x<-300) {
			this.removeMovieClip();
		}
		if (_y>900) {
			this.removeMovieClip();
		}
		if (_y<-900) {
			this.removeMovieClip();
		}
	}
}
