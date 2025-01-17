#
# Be sure to run `pod spec lint ZaloSDK.podspec' to ensure this is a
# valid spec before submitting.
# pod lib lint
# pod trunk push ZaloSDK.podspec
#

Pod::Spec.new do |s|
s.name             = 'ZaloSDK'
s.version          = '4.1.0803'
s.summary          = 'Zalo SDK'

s.description      = <<-DESC
Zalo software development kit for iOS
Document: http://developers.zalo.me/docs/sdk/ios-sdk-9
DESC

s.homepage         = 'http://developers.zalo.me/docs/sdk/ios-sdk-9'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Liem Vo' => 'liemvouy@gmail.com' }
s.source           = { :git => 'https://github.com/VNG-Zalo/ZaloSDK-iOS.git', :tag => s.version.to_s }

s.ios.deployment_target = '9.0'

s.subspec 'Core' do |cs|
    cs.ios.vendored_frameworks = 'ZaloSDK/Frameworks/ZaloSDKCoreKit.xcframework'
end

s.subspec 'Main' do |cs|
    cs.ios.vendored_frameworks = 'ZaloSDK/Frameworks/ZaloSDK.xcframework'
    cs.dependency 'ZaloSDK/Core'
end

s.subspec 'Analytics' do |cs|
    cs.ios.vendored_frameworks = 'ZaloSDK/Frameworks/ZingAnalytics.xcframework'
    cs.dependency 'ZaloSDK/Core'
end

s.default_subspecs = 'Core', 'Main'

end
