import Foundation
import Flutter

public class SwiftFlutterVlcPlayerPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        NSLog("[flutter_vlc_player][iOS] SwiftFlutterVlcPlayerPlugin.register start")
        let vlcViewFactory = VLCViewFactory(registrar: registrar)
        registrar.register(vlcViewFactory, withId: "flutter_video_plugin/getVideoView")
        NSLog("[flutter_vlc_player][iOS] SwiftFlutterVlcPlayerPlugin.register complete (view factory registered)")
    }
}
