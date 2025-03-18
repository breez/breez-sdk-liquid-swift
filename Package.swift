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
        .binaryTarget(name: "breez_sdk_liquidFFI", url: "https://github.com/breez/breez-sdk-liquid-swift/releases/download/0.7.6/breez_sdk_liquidFFI.xcframework.zip", checksum: "04ab8c84479ae896a9c742c0e00a852cc7bf6ac0d3ffcb77ddb4e3ef33569286"),
        .target(name: "BreezSDKLiquid", dependencies: ["breez_sdk_liquidFFI"]),
    ]
)
