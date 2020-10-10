//
//  PostDetailsVM.swift
//  presentation
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation

public class PostDetailsVM: ObservableObject {
    
    @Published var details = "My details"
    
    // So we can initialize it from the app layer
    public init() { }
}
