#
#  Be sure to run `pod spec lint CCLoginKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "CCLoginKit"
  spec.version      = "1.0.0"
  spec.license      = "MIT"
  spec.summary      = "CCLoginComponent, CCRegisterComponent"
  spec.homepage     = "https://github.com/loxue/CCLoginKit"
  spec.authors      = { "CCLoginModule" => "240107867@qq.com" }
  spec.source       = { :git => 'https://github.com/Alamofire/Alamofire.git', :tag => spec.version }
  # spec.documentation_url = 'https://alamofire.github.io/Alamofire/'
  spec.description  = <<-DESC
    swift 注册登录组件库封装，MVVM组件化实践，使用url方式实现组件间通信
                   DESC
  spec.ios.deployment_target = '10.0'
  # spec.osx.deployment_target = '10.12'
  # spec.tvos.deployment_target = '10.0'
  # spec.watchos.deployment_target = '3.0'
  spec.swift_versions = ['5.1', '5.2', '5.3']
  spec.source_files  = 'CCComponentDemo/CCLoginComponent'   #如果是Objective-C的话需要这样写：'Source/*.{h,m}，swift需要：CCLoginComponent/*.swift'
  spec.exclude_files = "Classes/Exclude"
  spec.pod_target_xcconfig = {
    'SWIFT_INSTALL_OBJC_HEADER' => 'NO'
  }
  spec.frameworks = "Foundation", "UIKit"
  spec.dependency 'RxSwift'     # 依赖第三方库
  spec.dependency 'RxCocoa'     # 依赖第三方库

end
