//
//  ContentView.swift
//  PlanetVisionOSApp
//
//  Created by mohammedazeem.azeez on 13/08/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        VStack {
            Button("Show Planets") {
                Task {
                   await openImmersiveSpace(id: "planetView")
                }
            }
        }
        .navigationTitle("Content")
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
