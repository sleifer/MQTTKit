// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MQTTKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MQTTKit",
            targets: ["MQTTKit"]
        )
    ],
    targets: [
        .target(
            name: "MQTTKit",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "MQTTKitTests",
            dependencies: ["MQTTKit"],
            path: "Tests"
        )
    ]
)
