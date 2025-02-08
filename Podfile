platform :ios, '13.0'

# Стандартный источник для CocoaPods
source 'https://github.com/Snap385/qwertyuyt.git'

require_relative './plugins.rb'

target default_app_target do
  use_frameworks!

  # Локальные поды
  pod 'GoNativeCore', :path => './Pods/GoNativeCore'
  pod 'SSZipArchive', :path => './Pods/SSZipArchive'
  pod 'MedianIcons', :path => './Pods/MedianIcons'

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
