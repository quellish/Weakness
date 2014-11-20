###Weakness
Demonstrates loading a dynamic framework on iOS 7.

##Dynamic Framework loading on iOS < 8

[Apple recently introduced dynamic frameworks to iOS and the Xcode tool set](https://developer.apple.com/videos/wwdc/2014/#416). Dynamic frameworks have long been a vital part of developing for MacOS, but Xcode did not support building them for iOS. Static frameworks have always been possible, but Xcode's support for them has been limited and cumbersome. Until recently, Xcode could not build dynamic frameworks for deployment on iOS.

Publically, dynamic frameworks are only supported on iOS 8 and later. Fortunately dynamic frameworks *can* be loaded by applications and used on earlier versions of iOS. If you have avoided using dynamic frameworks because you need to deploy on iOS 7, there is hope.

Doing so is fairly straightforward. The application must *weak link* against the framework. To do so, in your application target's "Link Binary With Libraries" Build Phase, designate the framework as "Optional". This will weakly link against the framework.

Once you have done so, you must follow the established guidelines for using weakly linked bundle resources, [classes and symbols](https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/cross_development/Using/using.html#//apple_ref/doc/uid/20002000-SW6).

From:
[Dynamic Frameworks on iOS 7](http://quellish.tumblr.com/post/103107323582/dynamic-frameworks-on-ios-7)

