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
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.2/NumeratorSDK.xcframework.zip",
            checksum: "5708fde3bd34d57b063ed24e36a90e2bec6a331d7d07a5cf4fbb0a930bcc9b96"
        )
    ]
)
