import ProjectDescription
import ProjectDescriptionHelpers

let infoPlist: [String: InfoPlist.Value] = [
    "UIMainStoryboardFile": "",
    "UILaunchStoryboardName": "LaunchScreen"
]

let appName = "ListApp"

let project = Project(
    name: appName,
    packages: [
        .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .app,
            bundleId: "com.justbug.listapp",
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [.package(product: "SnapKit")]
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
