import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let appName = "ListApp"

let project = Project(
    name: appName,
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .app,
            bundleId: "com.justbug.listapp",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: [.init(.relativeToManifest("Sources/**"))],
            dependencies: [
                .project(target: "ListAppUIKit", path: .relativeToManifest("../ListAppUIKit"))
            ]
        ),
        Target(name: "\(appName)UnitTests",
               platform: .iOS,
               product: .unitTests,
               bundleId: "com.justbug.\(appName)UnitTests",
               infoPlist: .default,
               sources: [.init(.relativeToManifest("UnitTests/*.swift"))],
               dependencies: [.target(name: appName)])
    ]
)
