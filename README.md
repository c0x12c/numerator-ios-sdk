# Project Numerator-Swift-SDK
 * This project is the Numerator Swift SDK, which provides a set of tools and utilities for integrating with the Numerator platform.
 * It allows developers to easily interact with the Numerator API, perform various operations, and retrieve data related to Numerator services.


# Supported iOS and Xcode versions

This version of the Numerator-Swift-SDK SDK has been tested across iOS devices.

The Numerator-Swift-SDK iOS SDK requires the following minimum build tool versions:

1. Tool	Version
    Xcode	15+
    Swift	5.7+

And supports the following device platforms:

2. Platform	Version
    iOS	15.0

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [Testing](#testing)
- [BuildScript](#buildscript)

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/c0x12c/numerator-swift-sdk

## Usage

1. Open the NumeratorSDK.xcworkspace
2. Select NumeratorSDK project
    - select target NumeratorSDK
    - select scheme NumeratorSDK
    - build (cmd+b)
3. Select NumeratorSDKDemoApp project
    - select target NumeratorSDKDemoApp
    - Select the "General" tab, and if necessary expand the subsection "Frameworks, Libraries, and Embedded Content".
    - Click the "+" button in the expanded subsection. select NumeratorSDK.framework.

## Testing

1. Open the NumeratorSDK.xcworkspace
2. Select NumeratorSDK project
    - select target NumeratorSDKTests
    - select scheme NumeratorSDKTests
    - build test(cmd+u)

## Contributing

## BuildScript
- The `build_script.sh` is a bash script used to build an Xcode project for multiple platforms (iOS and iOS Simulator), It will export file an `XCFramework`

