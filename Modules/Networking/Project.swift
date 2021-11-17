//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by Mark Chen on 2021/11/17.
//

import ProjectDescription

let appName = "Networking"

let project = Project(
    name: appName,
    packages: [
        .remote(url: "https://github.com/Alamofire/Alamofire.git", requirement: .upToNextMajor(from: "5.4.0"))
    ],
    targets: [
        Target(
            name: appName,
            platform: .iOS,
            product: .framework,
            bundleId: "com.justbug.listapp.networking",
            infoPlist: .default,
            sources: [.init(.relativeToManifest("Sources/**"))],
            dependencies: [.package(product: "Alamofire")]
        )
    ]
)
