//
//  ProductDetail.swift
//  Shop
//
//  Created by Oleg Oleg on 17.12.2025.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var cartManager: CartManager
    let product: Product
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding(.bottom, 8)
                
                Text(product.name)
                    .font(.title2)
                    .bold()
                
                Text("$\(product.price)")
                    .font(.title3)
                
                Text(product.description)
                    .font(.body)
                    .padding(.top, 4)
                
                Spacer(minLength: 24)
                
                Button {
                    cartManager.addToCart(product: product)
                } label: {
                    HStack {
                        Image(systemName: "cart.badge.plus")
                        Text("Добавить в корзину")
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
            .padding()
        }
        .navigationTitle("Товар")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: productList[0])
            .environmentObject(CartManager())
    }
}
