import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "ListApp",
    targets: [
        Target(
            name: "ListApp",
            platform: .iOS,
            product: .app,
            bundleId: "com.justbug.listapp",
            infoPlist: .default,
            sources: ["Sources/**"],
            resources: ["Resources/**"]
        )
    ]
)
