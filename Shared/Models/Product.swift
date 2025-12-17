import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let description: String
}

let productList: [Product] = [
    Product(
        name: "Belle Epoque Gold",
        image: "ring_1",
        price: 2239,
        description: "Elegant gold ring from the Belle Epoque collection. Perfect for special occasions."
    ),
    Product(
        name: "Belle Epoque Rose Gold",
        image: "ring_2",
        price: 2435,
        description: "Romantic rose gold ring with a modern classic design."
    ),
    Product(
        name: "Belle Epoque White Gold",
        image: "ring_3",
        price: 2539,
        description: "Stylish white gold ring with a minimalistic yet luxurious look."
    ),
    Product(
        name: "Belle Epoque Rose Gold",
        image: "ring_4",
        price: 2559,
        description: "Delicate rose gold ring, ideal as a gift or engagement ring."
    ),
    Product(
        name: "Belle Epoque Rose Gold",
        image: "ring_5",
        price: 3229,
        description: "Premium rose gold ring with detailed craftsmanship."
    ),
    Product(
        name: "Belle Epoque White Gold",
        image: "ring_6",
        price: 3889,
        description: "Luxurious white gold ring with bright shine and clean lines."
    ),
    Product(
        name: "Belle Epoque White Gold",
        image: "ring_7",
        price: 4889,
        description: "High-end white gold ring for special moments."
    ),
    Product(
        name: "Belle Epoque Rose Gold",
        image: "ring_8",
        price: 4899,
        description: "Exclusive rose gold ring combining elegance and style."
    ),
    Product(
        name: "Belle Epoque White Gold",
        image: "ring_9",
        price: 3229,
        description: "Comfortable white gold ring with timeless design."
    ),
    Product(
        name: "Belle Epoque Gold",
        image: "ring_10",
        price: 3889,
        description: "Classic gold ring for everyday wear and special occasions."
    )
]
