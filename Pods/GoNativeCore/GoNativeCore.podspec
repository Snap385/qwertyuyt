Pod::Spec.new do |s|
  s.name             = 'GoNativeCore'
  s.version          = '2.4.1'  # Укажи актуальную версию
  s.summary          = 'GoNative Core functionality for iOS.'
  s.description      = 'A comprehensive core functionality for GoNative.'
  s.homepage = 'https://github.com/Snap385/gogogogo'  # Если хочешь указать свой репозиторий
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'GoNative' => 'support@gonative.io' }
  s.source           = { :git => 'https://github.com/gonativeio/GoNativeCore.git', :tag => s.version.to_s }

  # Путь к исходным файлам
  s.source_files     = 'GoNativeCore/Headers/**/*.{h,m,swift}'  # Убедись, что указаны правильные файлы

  # Указываем фреймворки, если они используются
  s.frameworks       = 'UIKit', 'Foundation'

  # Для XCFramework
  s.vendored_frameworks = 'GoNativeCore/xcframework/GoNativeCore.xcframework'

  # Указание архитектур
  s.requires_arc     = true  # Если используется ARC
end
