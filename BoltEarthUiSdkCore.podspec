Pod::Spec.new do |s|
  s.name             = 'BoltEarthUiSdkCore'
  s.version          = '1.0.1'
  s.summary          = 'BoltEarth iOS UI SDK for native and hybrid applications.'
  s.description      = <<-DESC
    BoltEarth iOS UI SDK providing core UI components and utilities
    for integrating BoltEarth EV charging services into native and hybrid iOS applications.
  DESC

  s.homepage         = 'https://bolt.earth'
  s.license          = { :type => 'Proprietary', :text => 'Copyright © 2026 Bolt.Earth. All rights reserved.' }
  s.author           = { 'Bolt.Earth' => 'support@bolt.earth' }

  s.platform         = :ios, '13.0'
  s.swift_version    = '5.0'

  # For remote distribution, replace with:
  # s.source = { :http => 'https://your-cdn.com/BoltEarthUiSdkCore-1.0.1.zip' }
  # s.source           = { :git => 'https://github.com/boltearth/BoltEarthUiSdkCore.git', :tag => s.version.to_s }
  s.source = {
  :http => 'https://github.com/debashish310/BoltEarthUiSdkCore/releases/download/1.0.1/BoltEarthUiSdkCore.xcframework.zip'
  }

  s.vendored_frameworks = 'BoltEarthUiSdkCore.xcframework'
  s.resources = 'BoltEarthUiSdkCoreResources.bundle'

  s.dependency 'lottie-ios'
  s.dependency 'CryptoSwift',          '1.7.1'
  s.dependency 'SDWebImage',           '5.21.0'
  s.dependency 'SwiftDate',            '7.0.0'
  s.dependency 'SwiftyJSON',           '5.0.2'
  s.dependency 'CocoaMQTT/WebSockets', '2.1.6'
  s.dependency 'Rudder',               '1.31.1'
  s.dependency 'FittedSheets',         '2.7.1'
  s.dependency 'DropDown',             '2.3.13'
  s.dependency 'IQKeyboardManagerSwift', '~> 8.0'
  s.dependency 'PhoneNumberKit', '3.7.3'

  # HyperSDK is dynamic — linked against the XCFramework at build time.
  # Must be declared here so the consumer app embeds it and its transitive
  # deps (Airborne, HyperCore, JuspaySafeBrowser) at runtime via @rpath.

  s.dependency 'HyperSDK',             '2.2.5'

end
