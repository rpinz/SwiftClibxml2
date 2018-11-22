// swift-tools-version:4.2

import PackageDescription 

let package = Package(
    name: "SwiftClibxml2",
    products: [
        .library(name: "SwiftClibxml2",
                 targets: ["SwiftClibxml2"])
    ],
    targets: [
        .systemLibrary(
            name: "SwiftClibxml2",
            pkgConfig: "libxml-2.0",
            providers: [
                .brew(["libxml2"]),
                .apt(["libxml2-dev"])
            ]
        )
    ],
    swiftLanguageVersions: [
        .v4,
        .v4_2
    ]
)
