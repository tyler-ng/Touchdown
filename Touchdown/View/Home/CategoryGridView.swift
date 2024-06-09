//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true),
                    content: {
                        ForEach(categories) { category in
                            CategoryItemView(category: category)
                        }
                    })
            }) //: GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: SCROLL
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
