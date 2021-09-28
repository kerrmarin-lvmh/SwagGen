// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SwagGen",
    products: [
        .executable(name: "swaggen", targets: ["SwagGen"]),
        .library(name: "SwagGenKit", targets: ["SwagGenKit"]),
        .library(name: "Swagger", targets: ["Swagger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit.git", from: "1.0.1"),
        .package(url: "https://github.com/jakeheis/SwiftCLI", from: "6.0.3"),
        .package(url: "https://github.com/SwiftGen/StencilSwiftKit.git", from: "2.8.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "4.0.6"),
        .package(url: "https://github.com/yonaskolb/JSONUtilities.git", from: "4.2.0"),
        .package(url: "https://github.com/kylef/Spectre.git", from: "0.10.1"),
        .package(url: "https://github.com/onevcat/Rainbow.git", from: "4.0.0"),
    ],
    targets: [
        .target(name: "SwagGen", dependencies: [
          "SwagGenKit",
          "SwiftCLI",
          "Rainbow",
          "PathKit",
        ]),
        .target(name: "SwagGenKit", dependencies: [
          "Swagger",
          "JSONUtilities",
          "PathKit",
          "StencilSwiftKit",
        ]),
        .target(name: "Swagger", dependencies: [
          "JSONUtilities",
          "Yams",
          "PathKit",
        ]),
        .testTarget(name: "SwagGenKitTests", dependencies: [
          "SwagGenKit",
          "Spectre",
        ]),
        .testTarget(name: "SwaggerTests", dependencies: [
          "Swagger",
          "Spectre",
        ]),
    ]
)
