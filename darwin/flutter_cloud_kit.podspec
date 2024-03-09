#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_cloud_kit.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_cloud_kit'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin for Apple CloudKit'
  s.description      = <<-DESC
A flutter plugin for Apple CloudKit on iOS and macOS platforms. Building on other plugins, this plugin adds more reactive functionality and features as a Flutter CloudKit plugin.
                       DESC
  s.homepage         = 'http://danielhagen.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Daniel Hagen' => 'flutter@danielhagen.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.14'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
