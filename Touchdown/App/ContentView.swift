//
//  ContentView.swift
//  Touchdown
//
//  Created by Tyler on 2024-06-09.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.top, UIApplication.shared.connectedScenes.map({$0 as? UIWindowScene}).compactMap({$0}).first?.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                            .padding(.vertical, 20)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal, 20)
                    }
                })
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}

