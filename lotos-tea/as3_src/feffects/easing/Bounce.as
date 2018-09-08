package feffects.easing {
	import haxe.Public;
	public class Bounce implements haxe.Public{
		static public function easeOut(t : Number,b : Number,c : Number,d : Number) : Number {
			if((t /= d) < (1 / 2.75)) return c * (7.5625 * t * t) + b;
			else if(t < (2 / 2.75)) return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b;
			else if(t < (2.5 / 2.75)) return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b;
			else return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b;
		}
		
		static public function easeIn(t : Number,b : Number,c : Number,d : Number) : Number {
			return c - easeOut(d - t,0,c,d) + b;
		}
		
		static public function easeInOut(t : Number,b : Number,c : Number,d : Number) : Number {
			if(t < d / 2) return easeIn(t * 2,0,c,d) * .5 + b;
			else return easeOut(t * 2 - d,0,c,d) * .5 + c * .5 + b;
		}
		
	}
}
