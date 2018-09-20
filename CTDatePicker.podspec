Pod::Spec.new do |s|

  s.name         = "CTDatePicker"
  s.version      = "1.0.0"
  s.summary      = "Simple Date Picker"
  s.description  = "Simple Date picker in UIAlertViewController"
  s.homepage     = "http://EXAMPLE/CTDatePicker.podspec"
  s.license      = "MIT"
  s.author       = { "Mario Kovacevic" => "mariofilk@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/mariokovacevic/CTDatePicker", :tag => "#{s.version}" }
  s.source_files  = "CTDatePicker", "CTDatePicker/**/*.{h,m,swift}"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

end
