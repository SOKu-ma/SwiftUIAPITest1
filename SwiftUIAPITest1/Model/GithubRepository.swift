//
//  GithubRepository.swift
//  SwiftUIAPITest1
//
//  Created by Shuhei Ota on 2022/09/11.
//

import Foundation

struct GithubRepositorys: Hashable, Codable {
    let id: Int
    let name: String
    let html_url: String
    let language: String
}

struct GithubSearchResult: Codable {
    let items: [GithubRepositorys]
}

