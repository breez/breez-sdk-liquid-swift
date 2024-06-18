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
        .binaryTarget(name: "breez_liquid_sdkFFI", url: "https://github.com/breez/breez-liquid-sdk-swift/releases/download/0.1.0-rc1/breez_liquid_sdkFFI.xcframework.zip", checksum: "1ef9a621be477446c5e6780b996a393b5735414f594184838dbcdb0c3a9481ed"),
        .target(name: "BreezLiquidSDK", dependencies: ["breez_liquid_sdkFFI"]),
    ]
)
