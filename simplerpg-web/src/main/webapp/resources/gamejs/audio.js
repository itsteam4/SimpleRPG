
var audio = new Audio('resources/gamejs/audio/backgroundmusic.mp3');
audio.loop = true;
audio.volume = 0.2; 
audio.play();

var userattack = new Audio('resources/gamejs/audio/knifehit.wav');
userattack.volume = 0.8;
function userAttackSound(){
	userattack.play();
}