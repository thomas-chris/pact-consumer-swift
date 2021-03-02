// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "PactConsumerSwift",
  platforms: [
    .macOS(.v10_10), .iOS(.v8), .tvOS(.v9)
  ],
  products: [
    .library(name: "PactConsumerSwift",
             targets: [
                "PactConsumerSwift"
            ])
  ],
  dependencies: [
    .package(url: "https://github.com/Quick/Quick.git", .upToNextMajor(from: "1.1.0")),
    .package(url: "https://github.com/Quick/Nimble.git", .upToNextMajor(from: "7.0.0")),
  ],
  targets: [
    .target(
      name: "PactConsumerSwift"
    ),
    .testTarget(name: "PactConsumerSwiftTests",
                dependencies: [
                    .target(name: "PactConsumerSwift"),
                    .product(name: "Quick", package: "Quick"),
                    .product(name: "Nimble", package: "Nimble")
                ]
    )
  ]

)
