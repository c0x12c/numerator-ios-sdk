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
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.7/NumeratorSDK.xcframework.zip",
            checksum: "3cc333239d60010a64cc09cffa4635a9503a66f5d101e3376583be3a948f445b"
        )
    ]
)
