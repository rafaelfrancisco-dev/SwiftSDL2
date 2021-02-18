// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CSDL2",
    products: [
        .library(name: "CSDL2", targets: ["CSDL2"]),
    ],
    targets: [
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
                ])
    ]
)
