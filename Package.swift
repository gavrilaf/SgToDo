// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SgToDo",
    dependencies: [
        .package(url: "https://github.com/gavrilaf/Seagull.git", from: "0.1.0"),
    ],
    targets: [
        .target(name: "SgToDo", dependencies: ["Seagull"]),
    ]
)
