//
//  PostLocalDataSource.swift
//  data
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import domain

public protocol PostLocalDataSourceInterface {
    func getCachedPosts(handler: @escaping ([PostEntity]) -> ())
}
