import Foundation
import Flutter

public class VLCViewFactory: NSObject, FlutterPlatformViewFactory {
        
    private var registrar: FlutterPluginRegistrar
    private var builder: VLCViewBuilder

    
    init(registrar: FlutterPluginRegistrar) {
        self.registrar = registrar
        self.builder = VLCViewBuilder(registrar: registrar)
        super.init()
        NSLog("[flutter_vlc_player][iOS] VLCViewFactory.init complete")
    }
    
    public func create(withFrame frame: CGRect, viewIdentifier viewId: Int64, arguments args: Any?) -> FlutterPlatformView {
        NSLog("[flutter_vlc_player][iOS] VLCViewFactory.create viewId=\(viewId)")
        //        let arguments = args as? NSDictionary ?? [:]
        return builder.build(frame: frame, viewId: viewId)
    }
    
    public func createArgsCodec() -> FlutterMessageCodec & NSObjectProtocol {
        return FlutterStandardMessageCodec.sharedInstance()
    }
    
}
