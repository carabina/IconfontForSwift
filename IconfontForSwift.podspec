
Pod::Spec.new do |s|
  s.name         = "IconfontForSwift"
  s.version      = "3.0.1"
  s.summary      = "IconfontForSwift can use iconfont to UIImage"
  s.homepage     = "https://github.com/devzeroLL/IconfontForSwift"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "zeroLL" => "zjhnzero@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/devzeroLL/IconfontForSwift.git", :tag => s.version }
  s.source_files = "Source/*.swift"
  s.frameworks   = "UIKit", "CoreText"
end
