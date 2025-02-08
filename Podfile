platform :ios, '13.0'

# Указываем исходники CocoaPods
source 'https://cdn.cocoapods.org/'

require_relative './plugins.rb'

target default_app_target do
  use_frameworks!

  # Локальные поды
pod 'GoNativeCore', :podspec => File.expand_path('./Pods/GoNativeCore/GoNativeCore.podspec')
pod 'SSZipArchive', :podspec => File.expand_path('./Pods/GoNativeCore/SSZipArchive.podspec')
pod 'MedianIcons', :podspec => File.expand_path('./Pods/GoNativeCore/MedianIcons.podspec')

  use_plugins!

  target 'MedianIOSTests' do
    inherit! :search_paths
  end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
    end
  end
end
