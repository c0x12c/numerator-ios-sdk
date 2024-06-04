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
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.3/NumeratorSDK.xcframework.zip",
            checksum: "c8f0574459ffa49a8f62969e0a1e815494830832841898bb85acb776a3466f25"
        )
    ]
)
