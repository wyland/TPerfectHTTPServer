// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "TPerfectHTTPServer",
    products: [
        .library(name: "TPerfectHTTPServer", targets: ["TPerfectHTTPServer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", from: "3.0.0"),
        .package(url: "https://github.com/wyland/Thrift-Swift.git", branch: "wyland-swiftversion"),
    ],
    targets: [
        .target(
            name: "TPerfectHTTPServer",
            dependencies: [
                .product(name: "PerfectHTTPServer", package: "Perfect-HTTPServer"),
                .product(name: "Thrift", package: "Thrift-Swift")
            ],
            path: "Sources"),
    ],
    swiftLanguageVersions: [.v4_2]
)

