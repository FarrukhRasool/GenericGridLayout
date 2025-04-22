//
//  File.swift
//  GenericGridLayout
//
//  Created by Farrukh on 22/04/2025.
//

import Foundation
import SwiftUI

struct GridLayoutPreview: View {
    let colorsHex: [String] = [
        "#FF5733", "#33FF57",
        "#3357FF", "#FF33A6",
        "#33FFF2", "#FF8C33",
        "#8C33FF", "#F2FF33",
        "#FF5733", "#33FF57",
        "#3357FF", "#FF33A6",
        "#FF8C33","#33FFF2"
    ]

    var body: some View {
        GenericGridLayout(data: colorsHex, itemsPerRow: 3) { hex in
            VStack {
                Circle()
                    .fill(Color(hex: hex))
                    .frame(width: 30, height: 30)
                Text(hex)
                    .font(.caption)
            }
        }
    }
}

#Preview {
    GridLayoutPreview()
}

