// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftSDL2",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "SwiftSDL2",
            targets: ["SwiftSDL2"]),
        .library(
            name: "CSDL2",
            targets: ["CSDL2"])
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(
            name: "CSDL2",
            pkgConfig: "sdl2",
            providers: [
                .brew([
                    "sdl2",
                    "sdl2_image",
                    "sdl2_ttf"
                ]),
                .apt(["libsdl2-dev",
                      "libsdl2-image-dev",
                      "libsdl2-ttf-dev"
                ])
            ]),
        .target(
            name: "SwiftSDL2",
            dependencies: ["CSDL2"]
        )
    ]
    
)
