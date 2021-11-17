//
//  Project.swift
//  Manifests
//
//  Created by Mark Chen on 2021/11/17.
//

import ProjectDescription

let appName = "Image"

let project = Project(
    name: appName,
    packages: [
        .remote(url: "https://github.com/kean/Nuke.git", requirement: .upToNextMajor(from: "9.0.0"))
    ],
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .framework,
            bundleId: "com.justbug.listapp.image",
            infoPlist: .default,
            sources: [.init(.relativeToManifest("Sources/**"))],
            dependencies: [.package(product: "Nuke")]
        )
    ]
)
