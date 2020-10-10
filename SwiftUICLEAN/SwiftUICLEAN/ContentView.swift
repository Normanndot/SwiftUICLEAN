//
//  ContentView.swift
//  SwiftUICLEAN
//
//  Created by Norman, ThankaVijay on 10/10/20.
//

import SwiftUI
import presentation

struct ContentView: View {
    var body: some View {
        PostView(postVM: AppDI.shared.postDependencies())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
