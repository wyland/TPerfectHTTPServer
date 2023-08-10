// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "TPerfectHTTPServer",
    products: [
        .library(name: "TPerfectHTTPServer", targets: ["TPerfectHTTPServer"]),
        ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        .package(url: "https://github.com/wyland/Thrift-Swift.git", from: "1.2.1"),
    ],
    targets: [
        .target(
            name: "TPerfectHTTPServer",
            dependencies: ["PerfectHTTPServer", "Thrift"],
            path: "Sources"),
    ],
    swiftLanguageVersions: [.v4_2]
)

