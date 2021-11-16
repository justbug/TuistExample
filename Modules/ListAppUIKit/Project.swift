import ProjectDescription

let appName = "ListAppUIKit"

let project = Project(
    name: appName,
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .framework,
            bundleId: "com.justbug.listapp.uikit",
            infoPlist: .default,
            sources: [.init(.relativeToManifest("Sources/**"))]
        )
    ]
)
