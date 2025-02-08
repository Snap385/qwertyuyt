Pod::Spec.new do |s|
  s.name             = 'MedianIcons'
  s.version          = '1.0.0'  # Укажи актуальную версию
  s.summary          = 'A collection of fonts for icons like FontAwesome and MaterialDesign.'
  s.description      = 'This pod provides access to various icon fonts such as FontAwesome and MaterialDesign.'
  s.homepage         = 'https://github.com/Snap385/gogogogo'  # Используй свой репозиторий, если необходимо
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'Snap385' => 'support@snap385.com' }

  # Указываем исходные файлы
  s.source_files     = 'MedianIcons/Classes/**/*.{swift}'

  # Указываем путь к ресурсам (фонтам и JSON файлам)
  s.resource_bundles = {
    'MedianIcons' => ['MedianIcons/Assets/**/*.{json,ttf}']
  }

  # Указываем необходимые фреймворки
  s.frameworks       = 'UIKit'

  # Указание дополнительных файлов
  s.resources        = 'MedianIcons/Assets/**/*.{ttf, json}'  # Все шрифты и JSON файлы

  # Указываем, если используются Swift файлы
  s.requires_arc     = true

  # Если есть зависимые библиотеки, указываем их
  # s.dependency 'SomeOtherPod'
end
