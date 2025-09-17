// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vector",
    platforms: [.macOS(.v11), .iOS(.v11)],
    products: [
        // Products can be used to vend plugins, making them visible to other packages.
        .plugin(
            name: "vectorPlugin",
            targets: ["vectorPlugin"]),
        .library(
            name: "vector",
            targets: ["vector"])
    ],
    targets: [
        // Build tool plugin that invokes the Makefile
        .plugin(
            name: "vectorPlugin",
            capability: .buildTool(),
            path: "packages/swift/plugin"
        ),
        // vector library target
        .target(
            name: "vector",
            dependencies: [],
            path: "packages/swift/extension",
            plugins: ["vectorPlugin"]
        ),
    ]
)