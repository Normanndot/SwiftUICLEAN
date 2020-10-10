//
//  AppDIInterface.swift
//  presentation
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation

public protocol AppDIInterface {
    
    func postDependencies() -> PostVM
    
    func postDetailsDependencies() -> PostDetailsVM
}
