//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by AMAN SHARMA on 19/04/22.
//

import Foundation

extension Bundle {
  
  func decode<T: Codable>(_ file: String) -> T {
    // 1. LOCATE THE JSON FILE
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in Bundle.")
    }
    
    // 2. CREATE A PROPERTY OFR THE DATA
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from Bundle.")
    }
    
    // 3. CREATE A DECODER
    let decoder = JSONDecoder()
    
    // 4. CREATE A PROPERTY FOR THE DECODED DATA
    guard let decodedData = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from the Bundle.")
    }
    
    // 5. RETURN THE READY-TO-USE DATA
    return decodedData
  }
}
