# BACommonModuleKit包含Objective-C和Swift两个版本
### 每个版本分别有两个模块，包含：登录和注册模块
> 1. 组件1是登录模块：CCLoginComponent
> 2. 组件2是注册模块：CCRegisterComponent
代码采用依赖RxSwift框架，业务逻辑是组件2的注册完毕之后调用组件1登录。此库的目的是研究组件化在项目中实践。

### 组件1和组件2之间通信采用了一下三种方式：

> 1. url方式： URLNavigator框架
> 2. Target-action方式
> 3. protocal-clss方式

### Objective-C组件化用到的桥接库
> CTMediator

### Swift用到的桥接库
> URLNavigator
