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
    var appDI: AppDIInterface
    
    @State var detailsIsPresented: Bool = false
    
    public init(appDI: AppDIInterface, postVM: PostVM) {
        self.appDI = appDI
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
                }.onTapGesture {
                    self.detailsIsPresented = true
                }
            }
            .sheet(isPresented: $detailsIsPresented, content: {
                PostDetailsView(postDetailsVM: self.appDI.postDetailsDependencies())
            })
            .navigationBarTitle("Posts")
        }
        
        .onAppear {
            self.postVM.getPosts()
        }
    }
}
