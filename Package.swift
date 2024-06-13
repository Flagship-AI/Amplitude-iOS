// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Amplitude",
    platforms: [
        .iOS(.v10),
        .tvOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v3),
    ],
    products: [
        .library(name: "Amplitude", targets: ["Amplitude"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Amplitude",
            dependencies: [],
            path: "Sources",
            resources: [
                .process("Resources"),
                .copy("PrivacyInfo.xcprivacy")
            ],
            publicHeadersPath: "Amplitude/Public"),
    ]
)

