//
//  AppDI.swift
//  SwiftUICLEAN
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import presentation


class AppDI {
    
    static let shared = AppDI(appEnvironment: AppEnvironment())
    
    let appEnvironment: AppEnvironment
    
    init(appEnvironment: AppEnvironment) {
        self.appEnvironment = appEnvironment
    }
    
    func postDependencies() -> PostVM {
        
        let postDI: PostDI = PostDI(appEnvironment: appEnvironment)
        
        let postVM = postDI.postDependencies()
                
        return postVM
    }
}
