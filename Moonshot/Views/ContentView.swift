//
//  ContentView.swift
//  Moonshot
//
//  Created by Aleksey Novikov on 04.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showingGrid = true
    
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridLayout(missions: missions)
                } else {
                    ListLayout(missions: missions)
                }
            }
            .navigationTitle("Moonshot")
            .navigationDestination(for: Mission.self) { MissionView(mission: $0, astronauts: astronauts) }
            .navigationDestination(for: Astronaut.self) { AstronautView(astronaut: $0) }
            .background(.darkBackground)
            .preferredColorScheme(.dark)
            .toolbar {
                Button("Tap me") {
                    withAnimation {
                        showingGrid.toggle()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
