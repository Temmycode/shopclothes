//
//  ClothView.swift
//  ShopClothes
//
//  Created by Temiloluwa Akisanya on 02/01/2024.
//

import SwiftUI

struct ClothView: View {
    var cloth: ClothModel
    
    var body: some View {
        VStack(spacing: 0.0) {
            cloth.image
                .resizable()
                .frame(width: 170, height: 150)
                .scaledToFill()
                .overlay {
                    Button {
                        
                    } label: {
                        Image(systemName: "heart")
                            .padding(8)
                            .background(.ultraThinMaterial.opacity(0.5))
                            .frame(maxWidth: 170, maxHeight: 150 ,alignment: .topTrailing)
                    }
                    .foregroundStyle(.black)
                }
            
            
            VStack(alignment: .leading, spacing: 6) {
                Text(cloth.clothType.rawValue)
                    .foregroundStyle(.gray)
                
                
                Text(cloth.description)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                
                Spacer().frame(height: 8)
                
                HStack {
                    HStack(spacing: 3.0) {
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text(String(format: "%.1f", cloth.ratings))
                            .font(.caption)
                        
                        Text("|")
                            .font(.caption)
                        
                        Text("\(cloth.reviews)")
                            .font(.caption)
                    }
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Text("$\(String(format: "%.2f", cloth.price))")
                        .font(.headline)
                        .foregroundStyle(.prices)
                        .fontWeight(.bold)
                }
                
                
            }
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 20, trailing:  10))
            .font(.footnote)
            .frame(width: 170, height: 150)
            .background(.white)
        }
        .frame(width: 170, height: 300)
        .background(.gray)
        .shadow(color: .gray.opacity(0.2), radius: 9)
    }
}

#Preview {
    ClothView(cloth: clothesData[0])
}
