//
//  Sample_SwiftUIApp.swift
//  Sample-SwiftUI
//
//  Created by io.numerator on 04/03/2024.
//

import SwiftUI
import NumeratorSDK

@main
struct Sample_SwiftUIApp: App {
  
  init() {
    NumeratorFeatureFlagProvider.configure(
      apiKey: "",
      pollingConfig: PollingModes.autoPoll(autoPollIntervalSeconds: 30)
    )
    NumeratorFeatureFlagProvider.shared.printToConsole(true)
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
