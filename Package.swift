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
            checksum: "f1a171d7696d9f35ef1373abdfd73fe84252ff16459fd0d95e75e576eafbdbd0"
        )
    ]
)
