//
//  CartView.swift
//  Shop (iOS)
//
//  Created by Oleg Oleg on 15.12.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    @State private var isOrderPlaced = false
    
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                
                VStack(spacing: 12) {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                            .environmentObject(cartManager)
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(.ultraThinMaterial)
                            .cornerRadius(16)
                            .shadow(radius: 2)
                    }
                }
                .padding(.horizontal)
                
                // Итоговая сумма
                HStack {
                    Text("Итого:")
                        .font(.headline)
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .font(.headline)
                        .bold()
                }
                .padding()
                
                // Кнопка "Оформить заказ"
                Button {
                    cartManager.clearCart()
                    isOrderPlaced = true
                } label: {
                    Text("Оформить заказ")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
                .padding(.bottom)
                
            } else {
                Text("Ваша корзина пуста")
                    .padding(.top, 40)
            }
        }
        .navigationTitle(Text("Моя корзина"))
        .padding(.top)
        .alert("Заказ оформлен", isPresented: $isOrderPlaced) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Спасибо за заказ! Мы свяжемся с вами для подтверждения.")
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
