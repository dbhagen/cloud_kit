#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_cloud_kit.podspec` to validate before publishing.
#
Pod::Spec.new do |spec|
  spec.name             = 'flutter_cloud_kit'
  spec.version          = '0.0.1'
  spec.summary          = 'A flutter plugin for Apple CloudKit'
  spec.license          =  { :type => 'GPL 3.0', :file => '../LICENSE' }
  spec.description      = <<-DESC
A flutter plugin for Apple CloudKit on iOS and macOS platforms. Building on other plugins, this plugin adds more reactive functionality and features as a Flutter CloudKit plugin.
                       DESC
  spec.homepage         = 'http://danielhagen.com'
  spec.author           = { 'Daniel Hagen' => 'flutter@danielhagen.com' }
  spec.source           = { :git => 'https://github.com/dbhagen/flutter_cloud_kit.git', :tag => spec.version.to_s }
  spec.source_files = 'Classes/**/*'
  spec.ios.dependency 'Flutter'
  spec.osx.dependency 'FlutterMacOS'
  spec.ios.deployment_target = '12.0'
  spec.osx.deployment_target = '10.14'

  # Flutter.framework does not contain a i386 slice.
  spec.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  spec.swift_version = '5.0'
end
