//
//  TextOverlay.swift
//  Landmarks
//
//  Created by VT on 10/2/23.
//

import SwiftUI

struct TextOverlay: View {
    var landmark: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(Gradient(colors: [.green.opacity(0.6), .green.opacity(0)]),
                        startPoint: .bottom,
                        endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct TextOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlay(landmark: ModelData().features[0])
    }
}
