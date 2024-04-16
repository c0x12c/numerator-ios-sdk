//
//  ContentView.swift
//  Sample-SwiftUI
//
//  Created by io.numerator on 04/03/2024.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
  @Published var currentPetIndex: Int = Int.random(in: 0..<5)
  private var previousPetIndex: Int = 0
  
  func randomPetIndex(pets count: Int) -> Int {
    var index = Int.random(in: 0..<count)
    while index == previousPetIndex {
      index = Int.random(in: 0..<count)
    }
    previousPetIndex = index
    return index
  }
}
