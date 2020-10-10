//
//  PostDataRepo.swift
//  data
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import domain


public class PostDataRepo: PostDomainRepoInterface {
    
    let postRemoteDataSource: PostRemoteDataSourceInterface
    let postLocalDataSource: PostLocalDataSourceInterface?
    
    public init(postRemoteDataSource: PostRemoteDataSourceInterface,
                postLocalDataSource: PostLocalDataSourceInterface? = nil) {
        
        self.postRemoteDataSource = postRemoteDataSource
        self.postLocalDataSource = postLocalDataSource
        
    }
    
    
    public func getPosts(handler: @escaping ([PostEntity]) -> ()) {
        
        postRemoteDataSource.getPosts { (postModels) in
            
            var postEntities = [PostEntity]()
            for postModel in postModels {
                postEntities.append(postModel.dotPostEntity())
            }
            
            handler(postEntities)
        }
    }
}
