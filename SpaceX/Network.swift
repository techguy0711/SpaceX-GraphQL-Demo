//
//  Network.swift
//  SpaceX
//
//  Created by Kristhian De Oliveira on 11/9/21.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    
  private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.spacex.land/graphql/")!)
}
