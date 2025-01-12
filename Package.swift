// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ZaloSDK-iOS",
    platforms: [
        .iOS(.v11)  // Minimum iOS version requirement
    ],
    products: [
        .library(
            name: "ZaloSDK",
            targets: ["ZaloSDK"]
        )
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "ZaloSDK",
            url: "https://github.com/jigajames/ZaloSDK-iOS/releases/download/v1.0.0/ZaloSDK.xcframework.zip",
            checksum: "23a5a1a9bdccad86acfe1402bd8769bc14d517997636e41b94aba2dd005de1f2"       // Replace with actual checksum
        )
    ]
)