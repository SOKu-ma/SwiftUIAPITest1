//
//  DetailView.swift
//  SwiftUIAPITest1
//
//  Created by Shuhei Ota on 2022/09/13.
//

import SwiftUI

struct DetailView: View {
    
    var body: some View {
        VStack {
            Text("リポジトリ：")
                .padding()
            Text("URL：")
                .padding()
            Text("言語：")
                .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
