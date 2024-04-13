//
//  ContentView.swift
//  Sample-SwiftUI
//
//  Created by io.numerator on 04/03/2024.
//

import SwiftUI
import NumeratorSDK
import Combine

struct ContentView: View {
  
  @NumeratorFeatureFlag(
    key: "flag_A",
    defaultValue: false,
    flagProvider: NumeratorFeatureFlagProvider.shared
  ) var boolFlag: Bool
  
  @NumeratorFeatureFlag(
    key: "flag_B",
    defaultValue: "Hi superman...",
    flagProvider: NumeratorFeatureFlagProvider.shared
  ) var stringFlag: String
  
  var body: some View {
    contentView
      .onReceive(NumeratorFeatureFlagProvider.shared.flagUpdatedPublisher) { _ in
        print("Feature flag is updated")
      }
      .onReceive(NumeratorFeatureFlagProvider.shared.flagUpdatedErrorPublisher) { error in
        print("Feature flag is update error:\(error)")
      }
  }
  
  @ViewBuilder
  var contentView: some View {
    VStack {
      Button("Fetch FeatureFlag List") {
        Task {
          do {
            let responder = try await NumeratorFeatureFlagProvider.shared.getFeatureFlags(page: 0, size: 50)
            print("featureFlags->>>>>>>>>>>>>:\(String(describing: responder))")
          } catch let error {
            print("error: \(error)")
          }
        }
      }
      .frame(width: 320)
      .frame(height: 44)
      
      Button("Fetch Detail FeatureFlag") {
        Task {
          do {
            let responder = try await NumeratorFeatureFlagProvider.shared.featureFlagDetails(key: "flag_B")
            print("featureFlagDetails->>>>>>>>>>>>>:\(String(describing: responder))")
          } catch let error {
            print("error ->>>>>>:\(error)")
          }
        }
      }
      .frame(width: 320)
      .frame(height: 44)
      
      Button("Fetch Bool flag Value") {
        if boolFlag {
          print("You are a good man")
        } else {
          print("You are a bad man")
        }
      }
      .frame(width: 320)
      .frame(height: 44)
      
      Button("Fetch string flag Value") {
        if stringFlag == "You are a good man" {
          print("You are a good man")
        } else if stringFlag == "You are a bad man" {
          print("You are a bad man")
        } else {
          print("You are a superman")
        }
      }
      .frame(width: 320)
      .frame(height: 44)
    }
    .padding()
  }
  
  func onAppear() {
    
  }
}

#Preview {
  ContentView()
}
