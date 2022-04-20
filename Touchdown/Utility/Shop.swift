//
//  Shop.swift
//  Touchdown
//
//  Created by AMAN SHARMA on 20/04/22.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? = nil
}
