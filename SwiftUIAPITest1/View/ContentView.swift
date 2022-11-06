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
        
        NavigationView {
            VStack(alignment: .center) {
                
                VStack {
                    TextField("キーワード", text: $vm.textField)
                        .onChange(of: vm.textField) { text in
                            print("キーワード： \(text)")
                            vm.Search(query: text)
                        }
                    Divider()
                }
                .padding(20)
                
                List {
                    ForEach(vm.repoList, id: \.self) { repo in
                        VStack(alignment: .leading) {
                            Text("リポジトリ：\(repo.name)")
                            Text("URL：\(repo.html_url)")
                            Text("言語：\(repo.language)")
                        }
                    }
                }
                .navigationTitle("GitHub API")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
