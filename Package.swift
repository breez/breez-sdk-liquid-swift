// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        // Required by uniffi 0.25
        // Can be reverted to v12/v11 for uniffi 0.27
        .macOS("15.0"),
        .iOS(.v13),
    ],
    products: [
        .library(name: "BreezSDKLiquid", targets: ["breez_sdk_liquidFFI", "BreezSDKLiquid"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_liquidFFI", url: "https://github.com/breez/breez-sdk-liquid-swift/releases/download/0.6.4/breez_sdk_liquidFFI.xcframework.zip", checksum: "056b89ff22f6104b847a30a5a27851a7dcfcdcd236ade6d3904cf3c50da6ef54"),
        .target(name: "BreezSDKLiquid", dependencies: ["breez_sdk_liquidFFI"]),
    ]
)
