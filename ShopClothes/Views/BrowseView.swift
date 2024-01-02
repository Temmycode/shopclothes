//
//  BrowseView.swift
//  ShopClothes
//
//  Created by Temiloluwa Akisanya on 02/01/2024.
//

import SwiftUI

struct BrowseView: View {
    @State var search: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 20) {
                    ForEach(clothesData, id: \.id) { cloth in
                        ClothView(cloth: cloth)
                    }
                }.padding()
            }
            .searchable(text: $search)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    HStack {
                        Image(systemName: "bag")
                        
                        Image(systemName: "message")
                            .padding(.leading, 20)
                    }
                }
            }
            .background(.thickMaterial)
        }
    }
}

#Preview {
    BrowseView()
}
