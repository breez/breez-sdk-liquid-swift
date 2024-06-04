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
        .binaryTarget(name: "breez_liquid_sdkFFI", url: "https://github.com/breez/breez-liquid-sdk-langs/swift/releases/download/0.0.1-dev9/breez_liquid_sdkFFI.xcframework.zip", checksum: "14846ce7747f9236dbf1e253525db1132dcb1a3bb90aa35dd6c4d097d18781bb"),
        .target(name: "BreezLiquidSDK", dependencies: ["breez_liquid_sdkFFI"]),
    ]
)
