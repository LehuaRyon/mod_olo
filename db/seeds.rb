# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {first_name: "Captain", last_name: "Morgan", email: "captain@gmail.com", password: "password"},
    {first_name: "Oscar", last_name: "Mayer", email: "oscar@gmail.com", password: "password"},
    {first_name: "Betty", last_name: "Crocker", email: "betty@gmail.com", password: "password"}
    ])

Pizza.create([
    {name: "Mad Dog", ingredients: "Red Sauce, mozzarella, pepperoni, mild sausage, ground beef"},
    {name: "Tristan", ingredients: "Mozzarella, asiago, roasted red peppers, mushrooms, pesto drizzle finish"},
    {name: "Dominic", ingredients: "White Sauce, fresh chopped basil, asiago, mild sausage, red onion, sliced tomatoes"},
    {name: "Lucy Sunshine", ingredients: "Mozzarella, parmesan, garlic, artichokes, finished with dollops of red sauce"},
    {name: "Jasper", ingredients: "Red Sauce, mozzarella, spicy chicken sausage, mushrooms"},
    {name: "Dillion James", ingredients: "Red Sauce, mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes"},
    {name: "Calexico", ingredients: "Red Sauce, mozzarella, gorgonzola, chicken, jalapenos, finished with hot buffalo sauce zigzag"},
    {name: "Caspian", ingredients: "BBQ Sauce, mozzarella, gorgonzola, chicken, red onions, finished with BBQ sauce swirl"}
])

Order.create([
    {user_id: 1, pizza_id: 1, pickup_name: "Captain Morgan", special_instructions: "3 sides of utensils", size: "Mini (6-inch)"},
    {user_id: 1, pizza_id: 2, pickup_name: "Captain Morgan", special_instructions: "Napkins on the side", size: "Mod (11-inch)"},
    {user_id: 1, pizza_id: 3, pickup_name: "Captain Morgan", special_instructions: "No onions", size: "Mega (11-inch thick crust)"},
    {user_id: 2, pizza_id: 4, pickup_name: "Oscar Mayer", special_instructions: "Extra red sauce on top", size: "Mini (6-inch)"},
    {user_id: 2, pizza_id: 5, pickup_name: "Oscar Mayer", special_instructions: "No cheese", size: "Mod (11-inch)"},
    {user_id: 2, pizza_id: 6, pickup_name: "Oscar Mayer", special_instructions: "Parmesan and red pepper packets on the side", size: "Mega (11-inch thick crust)"},
    {user_id: 3, pizza_id: 7, pickup_name: "Betty Crocker", special_instructions: "Light buffalo sauce on top", size: "Mini (6-inch)"},
    {user_id: 3, pizza_id: 8, pickup_name: "Betty Crocker", special_instructions: "Extra chicken ontop.", size: "Mod (11-inch)"}
])