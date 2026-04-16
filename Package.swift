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
            url: "https://github.com/ONMO/OnMobileGamification/releases/download/1.0.18/OnMobileGamificationSDK.xcframework.zip",
            checksum: "ac12b3ff0f7dca2c34a52d16a722056a09024cc955b4d2d993838f5de3ddaf23"
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
