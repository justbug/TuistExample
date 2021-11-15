import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let project = Project(
    name: "ListApp",
    targets: [
        Target(
            name: "ListApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.justbug.listapp",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        )
    ]
)
