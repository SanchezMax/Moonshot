//
//  ListLayout.swift
//  Moonshot
//
//  Created by Максим Зыкин on 27.03.2025.
//

import SwiftUI

struct ListLayout: View {
    let missions: [Mission]
    
    var body: some View {
        List(missions) { mission in
            NavigationLink(value: mission) {
                HStack(spacing: 15) {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text(mission.displayName)
                            .font(.headline)
                            .foregroundStyle(.white)
                        
                        Text(mission.formattedLaunchDate)
                            .font(.caption)
                            .foregroundStyle(.white.opacity(0.5))
                    }
                }
                .accessibilityElement()
                .accessibilityLabel("Mission: \(mission.displayName)")
                .accessibilityHint("Launch date: \(mission.formattedLaunchDate)")
            }
            .listRowBackground(Color.darkBackground)
        }
        .listStyle(.plain)
    }
}

#Preview {
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    ListLayout(missions: missions)
        .background(.darkBackground)
        .preferredColorScheme(.dark)
}
