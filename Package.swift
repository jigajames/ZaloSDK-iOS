// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ZaloSDK-iOS",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ZaloSDK",
            targets: ["ZaloSDK", "ZaloSDKCoreKit"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ZaloSDK",
            url: "https://github.com/jigajames/ZaloSDK-iOS/releases/download/v1.0.0/ZaloSDK.xcframework.zip",
            checksum: "23a5a1a9bdccad86acfe1402bd8769bc14d517997636e41b94aba2dd005de1f2"
        ),
        .binaryTarget(
            name: "ZaloSDKCoreKit",
            url: "https://github.com/jigajames/ZaloSDK-iOS/releases/download/v1.0.0/ZaloSDKCoreKit.xcframework.zip",
            checksum: "7074a23a0d3ef146797347e51d13d6f186188859ce2ebb8e3fff47fc05ece44f"
        )
    ]
)