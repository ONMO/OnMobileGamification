// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OnMobileGamification",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "OnMobileGamification",
            targets: ["OnMobileGamificationPackage"]),
    ],
    targets: [
        .binaryTarget(
            name: "OnMobileGamificationPackage",
            url: "https://github.com/ONMO/OnMobileGamification/releases/download/1.0.0/OnMobileGamificationPackage.xcframework.zip",
            checksum: "70695d376ad2e5c1f8500d019341df339c022637542e7e2f1d8973a7530a943d"
        ),
    ]
)
