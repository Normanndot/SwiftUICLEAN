//
//  PostDetails.swift
//  presentation
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import SwiftUI

public struct PostDetailsView: View {
    
    @ObservedObject public var postDetailsVM: PostDetailsVM
    
    public init(postDetailsVM: PostDetailsVM) {

        self.postDetailsVM = postDetailsVM
    }
    
    public var body: some View {
        Text(postDetailsVM.details)
    }
}
