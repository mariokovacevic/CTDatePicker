Pod::Spec.new do |s|

  s.name         = "CTDatePicker"
  s.version      = "1.0.0"
  s.summary      = "Simple Date Picker"
  s.description  = "Simple Date picker in UIAlertViewController"
  s.homepage     = "https://github.com/mariokovacevic/CTDatePicker"
  s.license      = "MIT"
  s.author       = { "Mario Kovacevic" => "mariofilk@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/mariokovacevic/CTDatePicker.git", :branch => "master", :tag => "#{s.version}" }
  s.weak_framework = 'UIKit'
  s.static_framework = true
  s.requires_arc = true
  s.source_files = 'Framework/**/*.{h}'
  s.ios.public_header_files = 'Framework/**/*.{h}'
  s.ios.vendored_frameworks = 'Framework/*.{framework}'

end
