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
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        ),
        Target(name: "\(appName)UnitTests",
               platform: .iOS,
               product: .unitTests,
               bundleId: "com.justbug.\(appName)UnitTests",
               infoPlist: .default,
               sources: ["UnitTests/*.swift"],
               resources: [],
               dependencies: [.target(name: appName)])
    ]
)
