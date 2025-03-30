//
//  Astronaut.swift
//  Moonshot
//
//  Created by Aleksey Novikov on 04.08.2023.
//

import Foundation

struct Astronaut: Codable, Hashable, Identifiable {
    let id: String
    let name: String
    let description: String
}
