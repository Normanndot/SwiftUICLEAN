//
//  PostDetailsDI.swift
//  SwiftUICLEAN
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import presentation
import domain
import data


class PostDetailsDI {
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostDetailsVM {
        
        // Presentation
        let postDetailsVM = PostDetailsVM()
        
        return postDetailsVM
    }
    
    func postDetailsDependencies() -> PostDetailsVM {
        // Presentation
        let postDetailsVM = PostDetailsVM()
        
        return postDetailsVM
    }
}
