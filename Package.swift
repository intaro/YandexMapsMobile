// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexMapsMobile",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YandexMapsMobile", targets: ["YandexMapsWrapper"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "YandexMapsMobile",
            url: "https://github.com/c-villain/YandexMapsMobile/releases/download/4.3.1/YandexMapsMobile.xcframework.zip",
            checksum: "4b1abe461a347474efe7453c3406a09a9f161ef96499c7fa4ba803b181443862"
        ),
        .target(name: "YandexMapsWrapper",
               dependencies: [
                .target(name: "YandexMapsMobile"),
               ],
                path: "YandexMapsWrapper",
                linkerSettings: [.unsafeFlags(["-ObjC"])]
               ),
    ]
)
