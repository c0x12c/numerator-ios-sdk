//
//  ContentView.swift
//  Sample-SwiftUI
//
//  Created by C0X12C.COM on 04/03/2024.
//

import SwiftUI
import NumeratorSDK

struct ContentView: View {
  
  @State var startNumerator: Bool = true
  
  var body: some View {
    contentView
      .onAppear {
        let config = NumeratorConfigs(
          apiKey: "",
          isDebugMode: true
        )
        NumeratorClient.start(config) {
          self.startNumerator = false
        }
      }
  }
  
  @ViewBuilder
  var contentView: some View {
    if !startNumerator {
      VStack {
        Button("Fetch FeatureFlag List") {
          Task {
            do {
              let responder = try await NumeratorClient.instances?.featureFlags()
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
              let responder = try await NumeratorClient.instances?.featureFlagDetails(forKey: "featureflag_02")
              print("featureFlagDetails->>>>>>>>>>>>>:\(String(describing: responder))")
            } catch let error {
              print("error ->>>>>>:\(error)")
            }
          }
        }
        .frame(width: 320)
        .frame(height: 44)
        
        Button("Fetch Bool flag Value") {
          Task {
            let responder = await NumeratorClient.instances?.boolVariationValue(forKey: "featureflag_03", defaultValue: false, context: ["environment": "Dev"])
            print("boolVariationValue->>>>>>>>>>>>>:\(String(describing: responder))")
          }
        }
        .frame(width: 320)
        .frame(height: 44)
        
        Button("Fetch string flag Value") {
          Task {
            let responder = await NumeratorClient.instances?.stringVariationValue(forKey: "featureflag_022", defaultValue: "Empty_String")
            print("stringVariationValue->>>>>>>>>>>>>:\(String(describing: responder))")
          }
        }
        .frame(width: 320)
        .frame(height: 44)
      }
      .padding()
    } else {
      ProgressView() {
          Text("Loading...")
      }
    }
  }
  
  func onAppear() {
    
  }
}

#Preview {
  ContentView()
}

