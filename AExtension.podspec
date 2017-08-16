#
# Be sure to run `pod lib lint AExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AExtension'
  s.version          = '0.3.3'
  s.summary          = 'AExtension'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  AExtension v0.1.0
                       DESC

  s.homepage         = 'https://github.com/RogerAbyss/AExtension'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RogerAbyss' => 'roger_ren@qq.com' }
  s.source           = { :git => 'https://github.com/RogerAbyss/AExtension.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.1'

  # s.source_files = 'AExtension/Classes/**/*.{h,m}'
  s.frameworks = 'UIKit', 'Foundation'

  s.subspec 'Core' do |core|
    core.source_files = 'AExtension/Classes/Core/*','AExtension/Classes/AExtension.h'
    core.public_header_files = 'AExtension/Classes/Core/*.h','AExtension/Classes/AExtension.h'

    core.dependency 'AExtension/Config'
    core.dependency 'AExtension/Wrapper'
  end

  s.subspec 'Utils' do |utils|
    utils.source_files = 'AExtension/Classes/Utils/*'
    utils.public_header_files = 'AExtension/Classes/Utils/*.h'
  end

  s.subspec 'Crush' do |crush|
    crush.source_files = 'AExtension/Classes/Crush/*'
    crush.public_header_files = 'AExtension/Classes/Crush/*.h'
  end

  s.subspec 'CommonCrypto' do |commonCrypto|
    commonCrypto.source_files = 'AExtension/Classes/CommonCrypto/*'
    commonCrypto.public_header_files = 'AExtension/Classes/CommonCrypto/*.h'
  end

  s.subspec 'Wrapper' do |wrapper|
    wrapper.source_files = 'AExtension/Classes/Wrapper/*'
    wrapper.public_header_files = 'AExtension/Classes/Wrapper/*.h'

    wrapper.dependency 'AExtension/Utils'
  end

  s.subspec 'Config' do |c|
    c.source_files = 'AExtension/Classes/Config/*'
    c.public_header_files = 'AExtension/Classes/Config/*.h'

    c.dependency 'AExtension/Utils'
  end

  s.subspec 'Nav' do |nav|
    nav.source_files = 'AExtension/Classes/Navigation/*'
    nav.public_header_files = 'AExtension/Classes/Navigation/*.h'
  end

  s.subspec 'Touch' do |touch|
    touch.source_files = 'AExtension/Classes/Touch/*'
    touch.public_header_files = 'AExtension/Classes/Touch/*.h'
  end

  s.default_subspec = 'Core','Crush','Wrapper','Utils','Config','Nav','Touch'
end
