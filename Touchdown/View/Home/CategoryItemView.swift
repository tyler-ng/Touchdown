//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    
    let category: Category
    
    // MARK: - BODY
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6, content: {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                Spacer()
            }) //: HSTACK
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        })
    }
}

// MARK: - PREVIEW
                                   
#Preview(traits: .sizeThatFitsLayout) {
    CategoryItemView(category: categories[0])
        .padding()
        .background(colorBackground)
}
