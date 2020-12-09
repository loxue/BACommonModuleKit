#
#  Be sure to run `pod spec lint CCLoginKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "CCLoginKit"  # 库名
  spec.version      = "1.0.0"       # 库版本号
  spec.license      = "MIT"         # 库许可
  spec.summary      = "CCLoginComponent, CCRegisterComponent"   # 库简介
  spec.homepage     = "https://github.com/loxue/CCLoginKit"     # 库主页
  spec.authors      = { "CCLoginModule" => "240107867@qq.com" } # 库作者
  spec.source       = { :git => 'https://github.com/loxue/CCLoginKit.git', :tag => spec.version }   # 指定库的版本源
  # spec.documentation_url = 'https://alamofire.github.io/Alamofire/'  # 库文档
  spec.description  = <<-DESC
    swift 注册登录组件库封装，MVVM组件化实践，使用url方式实现组件间通信
                   DESC
  # 库描述
  spec.ios.deployment_target = '10.0'       # 库ios-target版本型号
  # spec.osx.deployment_target = '10.12'    # 库osx-target版本型号
  # spec.tvos.deployment_target = '10.0'    # 库tvos-target版本型号
  # spec.watchos.deployment_target = '3.0'  # 库watchos-target版本型号
  spec.swift_versions = ['5.1', '5.2', '5.3']   # 库swift语言版本型号
  spec.source_files  = 'CCComponentDemo/CCLoginComponent'   # 库源文件：如果是Objective-C的话需要这样写：'Source/*.{h,m}，swift需要：CCLoginComponent/*.swift'
  spec.exclude_files = "Classes/Exclude"   # 库包含文件
  spec.pod_target_xcconfig = {
    'SWIFT_INSTALL_OBJC_HEADER' => 'NO'
  }  # 库pod-target配置
  spec.frameworks = "Foundation", "UIKit"   # 当前库所依赖的系统库

  # 当前库所依赖的三方库（多个依赖可以这样添加（也可以指定版本））
  spec.dependency 'RxSwift'     # 依赖第三方库
  spec.dependency 'RxCocoa'     # 依赖第三方库
  spec.dependency 'RxRelay'     # 依赖第三方库

end
