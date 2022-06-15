#
# Be sure to run `pod lib lint ReleaseTest.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ReleaseTestGJ'
  s.version          =  ENV['LIB_VERSION'] || '1.0'
  s.summary          = 'A library to start testing automated releases.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This pod is used to validate releasing new pod versions with GH actions and Release drafter
                       DESC

  s.homepage         = 'https://github.com/gert-janvercauteren/ios_release_test'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gert-Jan Vercauteren' => 'gert-jan.vercauteren@skyscanner.net' }
  s.source           = { :git => 'https://github.com/gert-janvercauteren/ios_release_test.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ReleaseTest/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ReleaseTest' => ['ReleaseTest/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
