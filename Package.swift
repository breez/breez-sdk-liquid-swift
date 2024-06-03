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
        .binaryTarget(name: "breez_liquid_sdkFFI", url: "https://github.com/breez/breez-liquid-sdk-langs/swift/releases/download/0.0.1-dev2/breez_liquid_sdkFFI.xcframework.zip", checksum: "23918020dee88c1a90a869b6cfe4b87dacb663e1635f421636d752efd3b06d3b"),
        .target(name: "BreezLiquidSDK", dependencies: ["breez_liquid_sdkFFI"]),
    ]
)
