Pod::Spec.new do |s|
  s.name             = 'GoNativeCore'
  s.version          = '2.4.1'  # укажи версию, соответствующую твоей
  s.summary          = 'Core functionality for GoNative.'
  s.source_files     = 'GoNativeCore/**/*.{h,m,swift}'  # Путь к исходным файлам пода
  s.frameworks       = 'UIKit'  # Указание нужных фреймворков, если они есть
end
