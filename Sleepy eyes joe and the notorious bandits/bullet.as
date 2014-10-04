class bullet extends MovieClip {
	var xSpeed;
	var ySpeed;
	var bulletAngle;
	var randomNum;
	var bulletSpeed;
	function onLoad() {
		_alpha=0;
		_rotation=_root.gc._rotation;
		bulletSpeed=50;
		randomNum=0;
		bulletAngle = ((_root.gc._rotation+randomNum-90)*Math.PI/180);
		xSpeed = Math.cos(bulletAngle)*bulletSpeed;
		ySpeed = Math.sin(bulletAngle)*bulletSpeed;
	}
	function onEnterFrame() {
		_height+=8;
		if(_rotation<0){
			gotoAndStop(2);
			_alpha=100;
		}
		if(_rotation>0){
			gotoAndStop(1);
			_alpha=100;
		}
		if(_x>800){
			this.removeMovieClip();
		}
		if(_x<-300){
			this.removeMovieClip();
		}
		if(_y>900){
			this.removeMovieClip();
		}
		if(_y<-300){
			this.removeMovieClip();
		}
		_x+=xSpeed;
		_y+=ySpeed;
	}
}
