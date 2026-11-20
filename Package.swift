// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationFyberAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnyThinkMediationFyberAdapter",
            targets: ["AnyThinkMediationFyberAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/inner-active/DTExchangeSDK-iOS-SPM.git", exact: "8.5.2")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkFyberAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkFyberAdapter/80502.2.10/AnyThinkFyberAdapter-80502.2.10.zip",
            checksum: "0c9904ddc2988c84059bc05ccbfd8c7365bee1895758420e1b251e3598ce9fec"
        ),
        .target(
            name: "AnyThinkMediationFyberAdapterTarget",
            dependencies: [
                "AnyThinkFyberAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "DTExchangeSDK", package: "DTExchangeSDK-iOS-SPM")
            ],
            path: "Sources/AnyThinkMediationFyberAdapterTarget"
        )
    ]
)