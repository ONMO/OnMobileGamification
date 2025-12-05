// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileGamification",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OnMobileGamification",
            targets: [
                "OnMobileGamificationSDK",
                "OnMobileGamificationAPISDK"
            ]
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
            url: "https://github.com/ONMO/OnMobileGamification/releases/download/1.0.16/OnMobileGamificationSDK.xcframework.zip",
            checksum: "f22e4522b450c3dc9518827ff4d1f41276b8ca9c64f3ecf3c06be1e6fde46916"
        ),
        .target(
            name: "OnMobileGamificationAPISDK",
            dependencies: [
                .product(
                    name: "OnMobileGamificationCore",
                    package: "OnMobileGamificationCore"
                ),
            ],
        ),
    ]
)

