# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.find_or_create_by([
	{first_name: “Captain”, last_name: “Morgan”, email: “captain@gmail.com”, password: “password”},
	{first_name: “Oscar”, last_name: “Mayer”, email: “oscar@gmail.com”, password: “password”},
	{first_name: “Betty”, last_name: “Crocker”, email: “betty@gmail.com”, password: “password”}
])

Pizza.find_or_create_by([
    {name: “Mad Dog”, ingredients: “Red Sauce, mozzarella, pepperoni, mild sausage, ground beef”, size: “Mega”, price: “11.37”},
    {name: “Tristan”, ingredients: “Mozzarella, asiago, roasted red peppers, mushrooms, pesto drizzle finish”, size: “Mini”, price: “7.37”},
    {name: “Dominic”, ingredients: “White Sauce, fresh chopped basil, asiago, mild sausage, red onion, sliced tomatoes”, size: “Mod”, price: “9.37”},
    {name: “Lucy Sunshine”, ingredients: “Mozzarella, parmesan, garlic, artichokes, finished with dollops of red sauce”, size: “Mini”, price: “7.37”},
    {name: “Jasper”, ingredients: “Red Sauce, mozzarella, spicy chicken sausage, mushrooms”, size: “Mod”, price: “9.37”},
    {name: “Dillion James”, ingredients: “Red Sauce, mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes”, size: “Mod”, price: “9.37”},
    {name: “Calexico”, ingredients: “Red Sauce, mozzarella, gorgonzola, chicken, jalapenos, finished with hot buffalo sauce zigzag”, size: “Mod”, price: “9.37”},
    {name: “Caspian”, ingredients: “BBQ Sauce, mozzarella, gorgonzola, chicken, red onions, finished with BBQ sauce swirl”, size: “Mega”, price: “11.37”}
])

Order.find_or_create_by([
    {user_id: “1”, pizza_id: “1”, pickup_name: “Captain Morgan”, special_instructions: “3 sides of utensils”},
    {user_id: “1”, pizza_id: “2”, pickup_name: “Captain Morgan”, special_instructions: “Napkins on the side”},
    {user_id: “1”, pizza_id: “3”, pickup_name: “Captain Morgan”, special_instructions: “No onions”},
    {user_id: “2”, pizza_id: “4”, pickup_name: “Oscar Mayer”, special_instructions: “Extra red sauce on top”},
    {user_id: “2”, pizza_id: “5”, pickup_name: “Oscar Mayer”, special_instructions: “No mushrooms”},
    {user_id: “2”, pizza_id: “6”, pickup_name: “Oscar Mayer”, special_instructions: “Parmesan and red pepper packets on the side”},
    {user_id: “3”, pizza_id: “7”, pickup_name: “Betty Crocker”, special_instructions: “Put buffalo sauce on the side, not on top”},
    {user_id: “3”, pizza_id: “8”, pickup_name: “Betty Crocker”, special_instructions: “Extra BBQ sauce on the side”}
])
    