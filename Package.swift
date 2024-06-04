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
            url: "https://github.com/numerator-io/sdk-ios/releases/download/0.0.4/NumeratorSDK.xcframework.zip",
            checksum: "62ecd250923ed0d9f4fa889bcd3dbbb5c86e5108bb7b3723f24cee0cf5b3897c"
        )
    ]
)
