// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "NFCPassportReader",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(
            name: "NFCPassportReader",
            type: .static,
            targets: ["NFCPassportReader"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/krzyzanowskim/OpenSSL.git",
            .upToNextMinor(from: "1.1.2300")
        )
    ],
    targets: [
        .target(
            name: "NFCPassportReader",
            dependencies: [
                "OpenSSL"
            ]
        )
    ]
)

