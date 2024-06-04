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
        .library(name: "BreezLiquidSDK", targets: ["breez_liquid_sdkFFI", "BreezLiquidSDK"]),
    ],
    targets: [
        .binaryTarget(name: "breez_liquid_sdkFFI", url: "https://github.com/breez/breez-liquid-sdk-langs/swift/releases/download/0.0.1-dev7/breez_liquid_sdkFFI.xcframework.zip", checksum: "762c7445ef2566defb46d2536ca4576a025eda79da1b8984dbaff297d6ec091e"),
        .target(name: "BreezLiquidSDK", dependencies: ["breez_liquid_sdkFFI"]),
    ]
)
