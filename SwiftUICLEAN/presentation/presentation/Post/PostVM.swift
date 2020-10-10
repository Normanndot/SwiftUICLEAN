//
//  PostVM.swift
//  presentation
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import domain

public class PostVM: ObservableObject {
    
    @Published var posts: [PostEntity] = []
    
    private var postInteractor: PostInteractorInterface
    
    public init(postInteractor: PostInteractorInterface) {
        self.postInteractor = postInteractor
    }
    
    func getPosts() {
        
        self.postInteractor.getPosts { [weak self] (postArray) in
            DispatchQueue.main.async {
                self?.posts = postArray
            }
        }
    }
}
