# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

# Указываем источник для стандартных Pods (не для локального)
source 'https://cdn.cocoapods.org/'

require_relative './plugins.rb'

target default_app_target do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods для проекта
  pod 'GoNativeCore', :path => './Pods/GoNativeCore'
  pod 'SSZipArchive', :path => './Pods/SSZipArchive'

  # Локальный pod для MedianIcons
  pod 'MedianIcons', :path => './Pods/MedianIcons'

  use_plugins!

  target 'MedianIOSTests' do
    inherit! :search_paths
    # Pods для тестов
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
