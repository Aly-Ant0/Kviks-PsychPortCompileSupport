#if mobileC
import extension.webview.WebView;
#end
import flixel.FlxBasic;
import flixel.FlxG;

class VideoState extends FlxBasic {
        public var finishCallback:Void->Void = null;

	public function new(name:String) {
		super();

	        #if mobileC
                WebView.playVideo('file:///android_asset/' + name, true);
                WebView.onComplete = function(){
		        if (finishCallback != null){
			        finishCallback();
		        }
                }
		#end
	}
}
