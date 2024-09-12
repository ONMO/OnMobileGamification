![Onmobile: Logo][logo]

# OnMobileGamification

- [Quick Guide](#quick-guide)
- [Installation](#installation)
- [Integration](#integration)
- [Implementation](#implementation)
    - [Initialization](#initialization)
    - [Update Token](#update-token)
    - [Next Template Details](#next-template-details)
    - [User Reward View](#user-reward-view)
    - [Leader Board](#leader-board)
- [Object Details](#object-details)
    - [GamificationClientHandler](#gamificationclienthandler)
- [Enumerations](#enumerations)
    - [GamificationCallBackListenerType](#gamificationcallbacklistenertype)
    - [GamificationEventListenerType](#gamificationeventlistenertype)
    - [GamificationError](#gamificationerror)
<!-- - [Documentation](#documentation) -->
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

### Initialization

#### Summary

```
Initialization method to start using the framework.
```

#### Declaration

```
static func initialize(
                with authKey: String, 
                and userKey: String, 
                languageCode: String = "en", 
                for environment: APIEnvironment = .production, 
                succedded success: @escaping (() -> ()), 
                failed fail: @escaping ((GamificationError) -> ()))
```

#### Parameters

```
 - authKey : Provide the authentication key to intialize the sdk
 - userKey : Provide the user token to initialize and to connect to fetch the rewards for the user
 - languageCode : Provide the language code to see the content in that localization
 - success : It is a callback to handle the successfull initialization
 - fail : It is a callback to handle the failure of initialization, provides the detailed error to handle
```

### Update Token

#### Summary

```
Update or re intialize with the latest or updated user token during token related error.
```

#### Declaration

```
static func update(
                userKey: String, 
                succedded success: @escaping (() -> ()), 
                failed fail: @escaping ((GamificationError) -> ()))
```

#### Parameters

```
 - userKey : Provide the user token to update and to connect to fetch the rewards for the user
 - success : It is a callback to handle the successfull updation of user token
 - fail : It is a callback to handle the failure of updation, provides the detailed error to handle on parent app
```

#### Note

```
Parent App has to handle closing the framework views during the success or failure and call the previous methods when the token related error has received.
```

### Next Template Details

#### Summary

```
Provides next user active template details
```

#### Declaration

```
static func nextTemplateDetail(
                succedded success: @escaping ((GamificationClientCallback) -> ()), 
                failed fail: @escaping ((GamificationError) -> ()))

```

#### Parameters

```
 - success : It is a sucess callback with the required details of next template details in GamificationClientCallback object
 - fail : It is a callback to handle the failure of next active template api, provides the detailed error to handle
```

### User Reward View

#### Summary

```
Provides the user active template detailed view to proceed further gamification of particular type.
```

#### Declaration for UIKIT

```
static func openRewardViewWithUIKit(
                name: String,
                viewDisplayType : ViewDisplayType.popup,
                viewController : UIViewController,
                didPresent: Binding<Bool> = .constant(false), 
                _ handler: @escaping ((GamificationClientHandler) -> ())) -> some View
```

#### Parameters

```
 - name : Provide the rule name to fetch the details
 - viewDisplayType : Provide the viewDisplayType to decide the appearance(popup or fullscreen)
 - viewController : Provide the viewController to display the reward view
 - didPresent : Provide the state value when to present or dismiss the template. If true presents the template
 - handler : It is a callback to handle further on client side, for detailed info please check GamificationClientHandler
```

#### Declaration for SWIFTUI

```
static func openRewardViewWithSwiftUI(
                name: String,
                viewDisplayType : ViewDisplayType.popup,
                didPresent: Binding<Bool> = .constant(false), 
                _ handler: @escaping ((GamificationClientHandler) -> ())) -> some View
```

#### Parameters

```
 - name : Provide the rule name to fetch the details
 - viewDisplayType : Provide the viewDisplayType to decide the appearance(popup or fullscreen)
 - didPresent : Provide the state value when to present or dismiss the template. If true presents the template
 - handler : It is a callback to handle further on client side, for detailed info please check GamificationClientHandler
```

### Leader Board

#### Summary

```
Provides leaderboard details for the provide rule name
```

#### Declaration

```
static func leaderBoardFor(
                _ name: String, 
                didPresent: Binding<Bool> = .constant(false)) -> some View
```

#### Parameters

```
 - name : Provide the rule name to fetch the details
 - didPresent : Provide the state value when to present or dismiss the template. If true presents the leadeboard
```

### Reward History

#### Summary

```
Provides Reward history list details
```

#### Declaration

```
static func getRewardHistoryList(
                pageSize: Int,
                pageNumber: Int, 
                succedded success: @escaping ((RewardHistory) -> ()), 
                failed fail: @escaping ((GamificationError) -> ()))
```

#### Parameters

```
 - pageSize : Provide the pageSize to determined response count in one page.
 - pageNumber : Provide the pageNumber to get the number of response page by page
 - succedded : It is a callback to handle the successfull response
 - fail : It is a callback to handle the failure of methos, provides the detailed error to handle
```
## Object Details

### GamificationClientHandler
```
This is a client handler class to perform the actions based on framework responses.
```

#### Instance Properties

var callBackInfo: GamificationClientCallback?
```
Provides the extra information required to handle or know the detailed info
```

var callBackListenerType: GamificationCallBackListenerType?    
```
Provides the detail of call back type
```

var eventListenerType: GamificationEventListenerType?    
```
Provides the detail of event type
```

#### Instance Methods

func dismiss()
```
Dismisses the SDK/Framework view
```

## Enumerations

### GamificationCallBackListenerType
```
Details of the available Callback types
```
#### Enumeration Cases
case failed(GamificationError)
```
Informs the client that the template actions are faliled with an error and provides the error information
```

case rewardLoose
```
Informs the client that the template actions are performed and the user loose the reward
```

case rewardWon
```
Informs the client that the template actions are performed and the user won the reward
```

#### Instance Properties
var message: String
```
Detailed message for particular callback type
```

### GamificationEventListenerType
```
Details of the available Event types
```

#### Enumeration Cases
case mediaPause
```
Informs that the audio/video is paused or stopped
```

case mediaPlay
```
Informs that the audio/video is started or about to start playing
```

case sdkClose
```
Informs that the sdk is close
```

case sdkOpen
```
Informs that the sdk is open
```

#### Instance Properties
var message: String
```
Detailed message for particluar event type
```

### GamificationError
```
Details of all available error types
```

#### Enumeration Cases

case unAuthorisedClient
```
Informs that the client is an unauthorised either the identifier of app is not matched or not registered. Please check with OnMobile to know the identifier or to add the app identifier in sdk
```

case invalidKey
```
Informs the the authentication key provided is not correct
```

case invalidUser
```
Informs the the user key provided is not correct
```

case notInitialized
```
Informs the the intialization is failed by any other scenarios
```

case invalidRuleName
```
Informs the rule name provided is not valid or correct
```

case tokenExpired
```
Informs the client that the token is expired
```

case errorHandled
```
Informs the cleint that the error is occured and it is already handled by sdk
```

case noTemplate
```
Informs the client that the template requested is not supported or the template is not available to user at that moment
```

case notDefined(String)
```
Provides the undefined use cases with the error description
```

case unknown
```
Unhandled cases
```

#### Instance Properties
var message: String
```
Detailed message for particluar error type
```

<!-- ## Documentation

### Xcode Document
Download the [doccarchive][docc] from this [path][docc] and open in Xcode for detailed documentation

### Github Pages
Avail the github page at this [location][githubpage] if browser didn't support please use [Xcode Document][docc] -->

## License
MIT

## Copyright
**OnMobile Global Limited**

## Author
**Naresh Babu Kommana**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

[logo]: <http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg>

[cocoapods]: <https://guides.cocoapods.org/using/getting-started.html#getting-started>
[docc]: <https://bitbucket.org/onmoec/onmobilegamificationpackage/src/21a2b60791a5/docc/OnMobileGamificationPackage.doccarchive.zip?>
[githubpage]: <https://onmo.github.io/OnMobileGamificationPackage/documentation/onmobilegamificationpackage>

