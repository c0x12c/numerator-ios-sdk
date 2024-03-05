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
            url: "https://github.com/c0x12c/numerator-ios-sdk/releases/download/1.0.0/NumeratorSDK.xcframework.zip",
            checksum: "b4f0d88f299a35fa1d68d69cf82783568575e741113ad9993123cdb2793d0cda"
        )
    ]
)
