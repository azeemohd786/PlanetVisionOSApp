//
//  HeadView.swift
//  PlanetVisionOSApp
//
//  Created by mohammedazeem.azeez on 13/08/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct PlanetView: View {
    @Environment(\.dismissWindow) var dismissWindow
    var body: some View {
        RealityView { content in
            if let scene = try? await Entity(named: "Head", in: realityKitContentBundle) {
                content.add(scene)
            }
        }.gesture(TapGesture().targetedToAnyEntity().onEnded { value in
            let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { timer in
                
                var transform = value.entity.transform
                let radians = Int(7.292123517) * 10^(-5)//90.0 * Float.pi / 180.0
                transform.rotation *= simd_quatf(angle: Float(radians), axis: SIMD3<Float>(0,1,0))
                
                value.entity.move(
                    to: transform,
                    relativeTo: nil,
                    duration: 3,
                    timingFunction: .linear
                )
            }
            timer.fire()
        })
        .onAppear {
            dismissWindow(id: "main")
        }
    }
}

#Preview {
    PlanetView()
}
