// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NumeratorSDK",
    products: [
        .library(
            name: "NumeratorSDK",
            targets: ["NumeratorSDK"])
    ],
    targets: [
        .binaryTarget(
            name: "NumeratorSDK",
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.1/NumeratorSDK.xcframework.zip",
            checksum: "b6c7eececc1cc7064423503b0f42ca3413b474e4fbcb4a3b2bf72875bb4eb8e5"
        )
    ]
)
