// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "YUCIHighPassSkinSmoothing",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
    ],
    products: [
        .library(
            name: "YUCIHighPassSkinSmoothing",
            targets: ["YUCIHighPassSkinSmoothing"]
        ),
    ],
    targets: [
        .target(
            name: "YUCIHighPassSkinSmoothing",
            path: "Sources",
            resources: [
                .process("YUCIHighPass.cikernel"),
                .process("YUCIHighPassSkinSmoothingMaskBoost.cikernel"),
                .process("YUCIGreenBlueChannelOverlayBlend.cikernel"),
                .process("YUCIRGBToneCurve.cikernel"),
            ],
            publicHeadersPath: "."
        ),
    ]
)
