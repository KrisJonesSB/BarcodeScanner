import UIKit
import AVFoundation

// MARK: - Configurations

public struct Title {
  public static var text = NSLocalizedString("Scan Barcode", comment: "")
  public static var font =  UIFont(name: "OpenSans", size: 18)
  public static var color =  UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0)
}

public struct CloseButton {
  public static var text = NSLocalizedString("Close", comment: "")
  public static var font =  UIFont(name: "OpenSans", size: 18)
  public static var color = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0)
}

public struct SettingsButton {
  public static var text = NSLocalizedString("Settings", comment: "")
  public static var font = UIFont.boldSystemFont(ofSize: 17)
  public static var color = UIColor.white
}

public struct CustomButton {
  public static var text = NSLocalizedString("Custom Button Text", comment: "")
  public static var color = UIColor.white
  public static var shouldShow = true
}

public struct Info {
  public static var text = NSLocalizedString(
    "Place the barcode within the window to scan. The search will start automatically.", comment: "")
  public static var loadingText = NSLocalizedString(
    "Looking for your product...", comment: "")
  public static var notFoundText = NSLocalizedString(
    "No product found.", comment: "")
  public static var settingsText = NSLocalizedString(
    "In order to scan barcodes you have to allow camera under your settings.", comment: "")

  public static var font = UIFont(name: "OpenSans", size: 14)
  public static var textColor = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0)
  public static var tint = UIColor.black

  public static var loadingFont = UIFont(name: "OpenSans", size: 16)
  public static var loadingTint = UIColor(red: 102/255, green: 102/255, blue: 102/255, alpha: 1.0)

  public static var notFoundTint = UIColor.red
}

/**
 Returns image with a given name from the resource bundle.

 - Parameter name: Image name.
 - Returns: An image.
 */
func imageNamed(_ name: String) -> UIImage {
  let cls = BarcodeScannerController.self
  var bundle = Bundle(for: cls)
  let traitCollection = UITraitCollection(displayScale: 3)

  if let path = bundle.resourcePath,
    let resourceBundle = Bundle(path: path + "/BarcodeScanner.bundle") {
      bundle = resourceBundle
  }

  guard let image = UIImage(named: name, in: bundle,
    compatibleWith: traitCollection)
    else { return UIImage() }

  return image
}

/**
 `AVCaptureMetadataOutput` metadata object types.
 */
public var metadata = [
  AVMetadataObjectTypeUPCECode,
  AVMetadataObjectTypeCode39Code,
  AVMetadataObjectTypeCode39Mod43Code,
  AVMetadataObjectTypeEAN13Code,
  AVMetadataObjectTypeEAN8Code,
  AVMetadataObjectTypeCode93Code,
  AVMetadataObjectTypeCode128Code,
  AVMetadataObjectTypePDF417Code,
  AVMetadataObjectTypeQRCode,
  AVMetadataObjectTypeAztecCode
]
