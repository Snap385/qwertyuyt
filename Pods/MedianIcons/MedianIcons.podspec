Pod::Spec.new do |s|
  s.name             = 'MedianIcons'
  s.version          = '1.0.8'  # Версия пода
  s.summary          = 'A set of custom icons for your app.'
  s.description      = 'MedianIcons provides a set of high-quality icons to use in iOS projects.'
  s.homepage         = 'https://github.com/Snap385/gogogogo'  # Твой репозиторий на GitHub
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Your Name' => 'youremail@example.com' }

  # Путь к исходным файлам
  s.source_files     = 'Pods/MedianIcons/Classes/**/*.{swift, h, m}'

  # Зависимости
  s.frameworks       = 'UIKit'

  # Ресурсы
  s.resources        = 'Pods/MedianIcons/Assets/*.{ttf, json}'

  # Указываем путь к репозиторию
  s.source           = { :git => 'https://github.com/Snap385/gogogogo.git', :tag => '1.0.8' }

  # Использование ARC
  s.requires_arc     = true
end
