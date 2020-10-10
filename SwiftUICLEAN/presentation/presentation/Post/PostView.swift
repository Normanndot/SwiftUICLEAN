//
//  PostView.swift
//  presentation
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import Foundation
import SwiftUI

public struct PostView: View {
    
    @ObservedObject public var postVM: PostVM
    
    public init(postVM: PostVM) {
        self.postVM = postVM
    }
    
    public var body: some View {
        
        NavigationView {
            List {
                
                ForEach(postVM.posts) { post in
                    VStack{
                        Text(post.title ?? "")
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                        
                        Text(post.body )
                            .font(.body)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .navigationBarTitle("Posts")
        }
            
        .onAppear {
            self.postVM.getPosts()
        }
    }
}
