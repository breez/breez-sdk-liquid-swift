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
        .binaryTarget(name: "breez_liquid_sdkFFI", url: "https://github.com/breez/breez-liquid-sdk-langs/swift/releases/download/0.0.1-dev3/breez_liquid_sdkFFI.xcframework.zip", checksum: "3c5a63d648ea4c63a599b1c155e36a0d33e3e35b3adb98519e82f93dab378c1a"),
        .target(name: "BreezLiquidSDK", dependencies: ["breez_liquid_sdkFFI"]),
    ]
)
