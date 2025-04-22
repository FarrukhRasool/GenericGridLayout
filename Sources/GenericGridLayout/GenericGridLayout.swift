// The Swift Programming Language
import SwiftUI

struct GenericGridLayout<Data: RandomAccessCollection, Content: View>: View where Data.Element: Hashable {
    let data: Data
    let itemsPerRow: Int
    let content: (Data.Element) -> Content

    private var rearrangedData: [[Data.Element]] {
        var firstRow: [Data.Element] = []
        var secondRow: [Data.Element] = []
        for (index, item) in data.enumerated() {
            if (index % (itemsPerRow * 2)) < itemsPerRow {
                firstRow.append(item)
            } else {
                secondRow.append(item)
            }
        }
        return [firstRow, secondRow]
    }

    private let rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(0..<max(rearrangedData[0].count, rearrangedData[1].count), id: \.self) { index in
                    VStack {
                        if index < rearrangedData[0].count {
                            content(rearrangedData[0][index])
                        }
                        if index < rearrangedData[1].count {
                            content(rearrangedData[1][index])
                        } else {
                            Spacer()
                                .frame(height: 70)
                        }
                    }
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 150)
    }
}
