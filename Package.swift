// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Logger",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "Logger",
            targets: ["Logger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "7.3.1"), // dev
        .package(url: "https://github.com/f-meloni/TestSpy", from: "0.3.1"), // dev
    ],
    targets: [
        .target(
            name: "Logger",
            dependencies: []),
        .testTarget(
            name: "LoggerTests",
            dependencies: ["Logger", "Nimble", "TestSpy"]),
    ]
)
