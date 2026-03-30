// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileGamification",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OnMobileGamification",
            targets: ["OnMobileGamificationWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/ONMO/OnMobileGamificationCore.git",
            exact: "1.0.28"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileGamificationSDK",
            url: "https://github.com/ONMO/OnMobileGamification/releases/download/1.0.17/OnMobileGamificationSDK.xcframework.zip",
            checksum: "dfd5879519350137b920419d6f30a43c8f36683825e420295b12dda2ca23b0af"
        ),
        .target(
            name: "OnMobileGamificationWrapper",
            dependencies: [
                "OnMobileGamificationSDK",
                .product(name: "OnMobileGamificationCore", package: "OnMobileGamificationCore")
            ]
        ),
    ]
)
