Product.delete_all
Product.create(title: FFaker::Food.fruit, description: FFaker::Lorem.paragraph, price: 10, active: true)
Product.create(title: FFaker::Food.fruit, description: FFaker::Lorem.paragraph, price: 25, active: true)
Product.create(title: FFaker::Food.fruit, description: FFaker::Lorem.paragraph, price: 16, active: true)

OrderStatus.delete_all
OrderStatus.create(name: "In Progress")
OrderStatus.create(name: "Placed")
OrderStatus.create(name: "Shipped")
OrderStatus.create(name: "Cancelled")