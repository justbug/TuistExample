import ProjectDescription

let appName = "ListAppUIKit"

let project = Project(
    name: appName,
    packages: [
        .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .framework,
            bundleId: "com.justbug.listapp.uikit",
            infoPlist: .default,
            sources: [.init(.relativeToManifest("Sources/**"))],
            dependencies: [.package(product: "SnapKit")]
        )
    ]
)
