Pod::Spec.new do |s|

  s.name         = "CTDatePicker"
  s.version      = "1.0.0"
  s.summary      = "Simple Date Picker"
  s.description  = "Simple Date picker in UIAlertViewController"
  s.homepage     = "https://github.com/mariokovacevic/CTDatePicker"
  s.license      = "MIT"
  s.author       = { "Mario Kovacevic" => "mariofilk@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/mariokovacevic/CTDatePicker.git", :tag => '1.0.0' }
  s.ios.vendored_frameworks = 'CTDatePicker/CTDatePicker.framework'
  s.weak_framework = 'UIKit'
  s.requires_arc = true

end
