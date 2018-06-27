// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SgToDo",
    products: [
        .executable(name: "SgToDo", targets: ["SgToDo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/gavrilaf/Seagull.git", from: "0.1.5"),
        .package(url: "https://github.com/antitypical/Result.git", from: "4.0.0"),
        .package(url: "https://github.com/apple/swift-nio.git", from: "1.0.0"),
    ],
    targets: [
        .target(name: "SgToDo", dependencies: ["Seagull", "NIO", "NIOHTTP1", "NIOConcurrencyHelpers", "Result"]),
    ]
)
