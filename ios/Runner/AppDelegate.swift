import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
        GMSServices.provideAPIKey("AIzaSyDPnO9hyBRGrY1hYj57o4h-_ed8qdCWsk0")

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
