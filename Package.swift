// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PackageWithSchemes",
  platforms: [.iOS(.v15), .macOS(.v10_15)],
  products: [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(
      name: "PackageWithSchemes",
      targets: ["PackageWithSchemes"]),
  ],
  targets: [
    // Targets are the basic building blocks of a package, defining a module or a test suite.
    // Targets can depend on other targets in this package and products from dependencies.
    .target(
      name: "PackageWithSchemes"),
    .testTarget(
      name: "PackageWithSchemesTests",
      dependencies: ["PackageWithSchemes"]),
    .testTarget(
      name: "PackageWithSchemesEndToEndTests",
      dependencies: ["PackageWithSchemes"]),
    .testTarget(
      name: "PackageWithSchemesIntegrationTests",
      dependencies: ["PackageWithSchemes"])
  ]
)
