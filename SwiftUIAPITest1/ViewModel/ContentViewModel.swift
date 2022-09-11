//
//  ContentViewModel.swift
//  SwiftUIAPITest1
//
//  Created by Shuhei Ota on 2022/09/11.
//

import Foundation
import Combine

class ContentViewModel: ObservableObject {
    
    @Published var repoList = []
    
    // 検索結果
    func Search(query: String){
        print("検索キーワード：\(query)")
        
        
        
    }
    
}
