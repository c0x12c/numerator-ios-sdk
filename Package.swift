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
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.5/NumeratorSDK.xcframework.zip",
            checksum: "ab1fb80d0aff2ab97d7012734369b8ee6ecf053ba379f5125d9de9fb9d248690"
        )
    ]
)
