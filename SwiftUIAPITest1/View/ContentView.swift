//
//  ContentView.swift
//  SwiftUIAPITest1
//
//  Created by Shuhei Ota on 2022/09/11.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm = ContentViewModel()
    
    var body: some View {
        
        //        ForEach (list, id: \.self) {
        //        }
        NavigationView {
            ZStack {
//                ForEach () {
//                    
//                }
                List {
                    Text("aaa")
                    Text("bbb")
                    Text("ccc")
                }
            }
            .navigationTitle("GitHub API")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
