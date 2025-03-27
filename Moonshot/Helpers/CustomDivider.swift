//
//  CustomDivider.swift
//  Moonshot
//
//  Created by Максим Зыкин on 27.03.2025.
//

import SwiftUI

struct CustomDivider: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundStyle(color)
            .padding(.vertical)
    }
}

#Preview {
    CustomDivider(color: .lightBackground)
}
