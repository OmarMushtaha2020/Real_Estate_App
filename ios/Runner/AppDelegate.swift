import UIKit
import Flutter
import GoogleMaps // Add this import

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)

    GMSServices.provideAPIKey("AIzaSyCRygaVl6MXImLNnCflN7J_rds_GiBBEQY") // Ensure your API key is correct

    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
