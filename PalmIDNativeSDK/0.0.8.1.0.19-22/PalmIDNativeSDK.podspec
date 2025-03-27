#
# Be sure to run `pod lib lint PalmIDNativeSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PalmIDNativeSDK'
  s.version          = '0.0.8.1.0.19-22'
  s.summary          = 'A powerful SDK for biometric palm recognition and authentication.'
  s.description      = 'The PalmIDNativeSDK provides developers with advanced tools for integrating biometric palm recognition technology into their applications. This SDK allows for seamless authentication and identification processes, ensuring secure and efficient user experiences. With its easy-to-use interface and comprehensive documentation, developers can quickly implement palm recognition features, enhancing security and accessibility in various applications, including mobile banking, access control, and personal identification solutions.'

  s.homepage         = 'https://github.com/rrbpalm/palmid-sdk-native'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lunnnnul' => 'lunnnnul@gmail.com' }
  if ENV['IS_CI'] == 'TRUE'
    s.source           = { :http => "http://127.0.0.1:3009/PalmIDNativeSDK-0.0.8.1.0.19-21.zip", :type => 'zip' }
  else
    s.source           = { :git => 'https://github.com/rrbpalm/palmid-sdk-native.git', :tag => s.version.to_s }
  end

  s.ios.deployment_target = '13.0'

  if ENV['IS_CI'] == 'TRUE'
    s.source_files = 'PalmIDNativeSDK/Frameworks/PalmIDNativeSDK.framework/Headers/*.h'
  else
    s.source_files = 'PalmIDNativeSDK/Classes/**/*'
  end

  s.dependency 'SVProgressHUD', '~> 2.3.1'

  if ENV['FLUTTER_DEV_LOCAL'] == 'TRUE'
    s.dependency 'FlutterPluginRegistrant'
  else
    # dynamic inject dependencys start

    # dynamic inject dependencys end
  end
  
  s.ios.vendored_frameworks = "PalmIDNativeSDK/Frameworks/*.xcframework"
end
