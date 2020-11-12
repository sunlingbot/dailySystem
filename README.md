# dailySystem 
![GPL3.0](https://img.shields.io/github/license/sunlingbot/dailySystem)
针对于传统移动端应用开发技术带来的局限性，提出使用 `Flutter` 移动跨平台框架开发一个简易的日报系统，使用 Material 风格编写 UI 样式，支持日间/夜间模式的切换，初版功能实现新闻资讯推送、内容查询、用户主页的功能。

## 开发环境

| 编号 | 开发环境 | 版本号 |
| :-----| ----: | :----: |
| 1 | Flutter | 1.12.13+hotfix.8 |
| 2 | Dart | 2.7.0 |
| 3 | Java | 1.8.0 |
| 4 | Gradle | 6.4|
| 5 | Android SDK | 29|


## 开发计划
- 迭代现有子模块功能
- 选用 MySQL 替代 SQLite
- 选用 Gin 作为服务端
- 接入第三方新闻 API

## Gradle 相关问题
由于本项目所用的 Android Studio 版本号是 3.6.1，其对应的 Gradle
版本号应为 6.4，因此需要编译 ` build.gradle` 文件。

## 致谢
本项目基于 [zhihu-flutter](https://github.com/xujiyou/zhihu-flutter) 二次开发，在此感谢原作者开放源代码，以作学习交流使用。
## 项目结构
```
├── android                     // 包含 Android 特定文件的 Android 子工程
│   ├── android.iml
│   ├── app
│   ├── build.gradle            // Gradle 依赖管理文件
│   ├── gradle
│   ├── gradle.properties
│   ├── gradlew
│   ├── gradlew.bat
│   ├── local.properties
│   └── settings.gradle
├── build                      // 运行项目的时候生成的编译文件及中间代码
│   ├── app
│   ├── fluttertoast
│   └── last_build_run.json
├── image                     // demo 图片存放目录
│   ├── 1.png
│   ├── 2.png
│   ├── 3.png
│   ├── 4.png
│   └── 5.png
├── ios                       // 包含 iOS 特定文件的 iOS 子工程
│   ├── Flutter
│   ├── Runner
│   ├── Runner.xcodeproj
│   └── Runner.xcworkspace
├── lib                     // Flutter应用源文件目录
│   ├── global_config.dart  
│   ├── home                
│   ├── idea                
│   ├── index               
│   ├── main.dart           // 项目入口文件
│   ├── market
│   ├── my
│   └── notice
├── lib.zip                 
├── pubspec.lock            //自动生成的 pubspec.yaml 解释文件
├── pubspec.yaml            //管理第三方库及资源的依赖配置文件
├── README.md               // 项目介绍
├── test                    //测试文件
│   └── widget_test.dart
├── tree.txt                //项目目录树
├── zhihu_android.iml
└── zhihu.iml
```
