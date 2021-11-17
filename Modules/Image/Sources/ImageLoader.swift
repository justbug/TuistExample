//
//  ImageLoader.swift
//  Image
//
//  Created by Mark Chen on 2021/11/17.
//

import Foundation
import Nuke
public final class ImageLoader {
    public init() {}
    
    public func foo() {
        let url = URL(string: "https://")!
        ImagePipeline.shared.loadImage(with: url) { result in
           print("task completed")
        }
    }
}
