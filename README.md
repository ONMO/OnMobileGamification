![Onmobile: Logo][logo]

# OnMobileGamification

- [Quick Guide](#quick-guide)
- [Installation](#installation)
- [Integration](#integration)
- [Implementation](#implementation)
    - [Initialization][doc-initialization]
    - [Update Token][doc-update-token]
    - [Next Template Details][doc-next-template-details]
    - [User Reward View][doc-user-reward-view]
    - [Leader Board][doc-leader-board]
- [Documentation](#documentation)
- [License](#license)
- [Copyright](#copyright)
- [Author](#author)

## Quick Guide
Learn how to quickly **Install, Integrate & Implement** the Gamize iOS SDK

## Installation

### CocoaPods

  Gamize iOS SDK can be integrated to any iOS project through CocoaPods. You can refer [Cocoapods][cocoapods] for more details.

  Command to install CocoaPods (If it is not installed on your OS X)

```bash
$ sudo gem install cocoapods
```

  To integrate Gamize iOS SDK into your Xcode project using CocoaPods(Use the version number provided to you), specify it in your `Podfile`:

```ruby
pod 'OnMobileGamification', 'x.x.x'
```

  Then, run the following command on your project path:

```bash
$ pod install
```
   or
```bash
$ pod install --repo-update
```

If, you see the below error :
```bash
[!] CocoaPods could not find compatible versions for pod "OnMobileGamification":
  In Podfile:
    OnMobileGamification (<x.x.x>)

None of your spec sources contain a spec satisfying the dependency: `OnMobileGamification (<x.x.x>)`.
```

Please, do run the below commands:
```bash
$ pod repo update
$ pod install
```

## Integration
Import OnMobileGamification
```
import OnMobileGamification
```

It is mandatory to register the app bundle identifier with the sdk before using it.

## Implementation

- [Initialization][doc-initialization]
- [Update Token][doc-update-token]
- [Next Template Details][doc-next-template-details]
- [User Reward View][doc-user-reward-view]
- [Leader Board][doc-leader-board]
- [Other Methods][doc-other-methods]

## Documentation

<!-- ### Xcode Document
Download the [doccarchive][docc] from this [path][docc] and open in Xcode for detailed documentation -->

Avail the complete documentation at [.io page][githubpage] <!-- if browser didn't support please use [Xcode Document][docc] -->

## License
MIT

## Copyright
**© 2025 - All Rights Reserved - OnMobile Global Limited**

## Author
**Naresh Babu Kommana - OnMobile Global Limited**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

[logo]: <http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg>

[cocoapods]: <https://guides.cocoapods.org/using/getting-started.html#getting-started>
[docc]: <https://bitbucket.org/onmoec/onmobilegamificationpackage/src/21a2b60791a5/docc/OnMobileGamificationPackage.doccarchive.zip?>
[githubpage]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk>
[doc-other-methods]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification>
[doc-initialization]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification/initialize(with:and:languagecode:for:succedded:failed:)>
[doc-update-token]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification/update(userkey:succedded:failed:)>
[doc-next-template-details]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification/nextTemplateDetail(_:succedded:failed:)>
[doc-user-reward-view]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification/openRewardViewWithSwiftUI(name:isDailyStreak:viewDisplayType:didPresent:_:)>
[doc-leader-board]: <https://onmo.github.io/OnMobileGamification/documentation/onmobilegamificationsdk/gamification/leaderBoardFor(_:didPresent:didShowNavigation:)>
