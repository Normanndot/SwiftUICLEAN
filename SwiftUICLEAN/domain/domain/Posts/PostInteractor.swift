//
//  PostInteractor.swift
//  domain
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation

public protocol PostInteractorInterface {
    func getPosts(handler: @escaping ([PostEntity]) -> ())
}

public class PostInteractor: PostInteractorInterface {
    let postDomainRepo: PostDomainRepoInterface
    
    public init(postDomainRepo: PostDomainRepoInterface) {
        self.postDomainRepo = postDomainRepo
    }
    
    public func getPosts(handler: @escaping ([PostEntity]) -> ()) {
        postDomainRepo.getPosts { (PostDomainModelArray) in handler(PostDomainModelArray)
            
        }
    }
}
