//
//  PostDomainRepoInterface.swift
//  domain
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation

public protocol PostDomainRepoInterface {
    func getPosts(handler: @escaping ([PostEntity]) -> ())
}
