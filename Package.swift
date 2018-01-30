// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Perfect-CURL-Example",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/PerfectlySoft/Perfect-CURL.git", from: "3.0.0"),
    ],
    targets: [
        .target(
            name: "Perfect-CURL-Example",
            dependencies: ["PerfectCURL"]),
    ]
)
