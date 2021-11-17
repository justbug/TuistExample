//
//  Service.swift
//  Network
//
//  Created by Mark Chen on 2021/11/17.
//

import Alamofire

public final class Service {
    public static let instance = Service()
    
    public func foo() {
        AF.request("url")
    }
}
