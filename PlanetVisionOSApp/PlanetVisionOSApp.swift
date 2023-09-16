//
//  PlanetVisionOSAppApp.swift
//  PlanetVisionOSApp
//
//  Created by mohammedazeem.azeez on 13/08/23.
//

import SwiftUI

@main
struct PlanetVisionOSApp: App {
    var body: some Scene {
        WindowGroup(id: "main") {
            ContentView()
        }
        ImmersiveSpace(id: "planetView") {
            PlanetView()
        }
    }
}
