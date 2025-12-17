import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    let columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink {
                            ProductDetailView(product: product)
                                .environmentObject(cartManager)
                        } label: {
                            ProductCard(product: product)
                                .environmentObject(cartManager)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Jewellery Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
