#
# Be sure to run `pod lib lint AExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AExtension'
  s.version          = '0.1.0'
  s.summary          = 'AExtension'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  AExtension v0.1.0
                       DESC

  s.homepage         = 'http://git.oschina.net/abyssroger/AExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RogerAbyss' => 'roger_ren@qq.com' }
  s.source           = { :git => 'https://git.oschina.net/abyssroger/AExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'AExtension/Classes/**/*'
  s.public_header_files = 'AExtension/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
  
end
