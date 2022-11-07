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
                            vm.Search(query: text)
                        }
                    Divider()
                }
                .padding(20)
                
                NavigationView {
                    
                    List {
                        ForEach(0 ..< vm.repoList.count, id: \.self) { index in
                            NavigationLink(destination: DetailView(),
                                           isActive: $vm.isShowDetail,
                                           label: {
                                VStack(alignment: .leading) {
                                    Text("リポジトリ：\(vm.repoList[index].name)")
                                        .padding(.bottom)
                                        .font(.callout)
                                    Text("URL：\(vm.repoList[index].html_url)")
                                        .padding(.bottom)
                                        .font(.callout)
                                    Text("言語：\(vm.repoList[index].language)")
                                        .padding(.bottom)
                                        .font(.callout)
                                }
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    print("\(index)行目をタップ")
                                    vm.ShowDetail()
                                }
                            }
                            )}
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
