// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "AnimalKingdomAPI",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5),
  ],
  products: [
    .library(name: "AnimalKingdomAPI", targets: ["AnimalKingdomAPI"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apollographql/apollo-ios.git", .branch("release/1.0-alpha-incubating")),
  ],
  targets: [
    .target(
      name: "AnimalKingdomAPI",
      dependencies: [
        .product(name: "ApolloAPI", package: "apollo-ios"),
      ],
      path: "."
    ),
  ]
)
