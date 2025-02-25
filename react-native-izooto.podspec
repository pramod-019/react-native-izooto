require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-izooto"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = "iZooto Push Notificition Services"
  s.homepage     = "https://github.com/github_account/react-native-izooto"
  s.license      = "MIT"
  s.authors      = { "Amit Kumar Gupta" => "amit@datability.co" }
  s.platforms    = { :ios => "11.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-izooto.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true
  s.dependency "iZootoiOSSDK"
  s.dependency "React-Core"

end

