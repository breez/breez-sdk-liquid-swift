// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "bindings-swift",
    platforms: [
        .macOS(.v12),
        .iOS(.v11),
    ],
    products: [
        .library(name: "BreezSDKLiquid", targets: ["breez_sdk_liquidFFI", "BreezSDKLiquid"]),
    ],
    targets: [
        .binaryTarget(name: "breez_sdk_liquidFFI", url: "https://github.com/breez/breez-sdk-liquid-swift/releases/download/0.1.4/breez_sdk_liquidFFI.xcframework.zip", checksum: "4d946ae8d1c9edbd69affbd2723fd24915ce0e1e923881cdbcbac9a325d7b106"),
        .target(name: "BreezSDKLiquid", dependencies: ["breez_sdk_liquidFFI"]),
    ]
)
