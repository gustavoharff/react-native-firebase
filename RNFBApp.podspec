require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'packages', 'app', 'package.json')))

Pod::Spec.new do |s|
  s.name = 'RNFBApp'
  s.version = '22.2.1'
  s.summary             = <<-DESC
                            A well tested feature rich Firebase implementation for React Native, supporting iOS & Android.
                          DESC
  s.homepage            = "http://invertase.io/oss/react-native-firebase"
  s.license             = package['license']
  s.authors             = "Invertase Limited"

  s.source = {
    :git => 'https://github.com/seu-fork/react-native-firebase.git',
    :tag => s.version.to_s
  }

  s.source_files = 'packages/app/ios/**/*.{h,m,mm,swift}'
  s.dependency 'FirebaseCore'
  s.static_framework = true
end
