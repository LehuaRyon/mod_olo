# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create([
#     {first_name: "Captain", last_name: "Morgan", email: "captain@gmail.com", password: "password"},
#     {first_name: "Oscar", last_name: "Mayer", email: "oscar@gmail.com", password: "password"},
#     {first_name: "Betty", last_name: "Crocker", email: "betty@gmail.com", password: "password"}
#     ])

# Pizza.create([
#     {name: "Mad Dog", ingredients: "Red Sauce, mozzarella, pepperoni, mild sausage, ground beef", size: "Mini"},
#     {name: "Mad Dog", ingredients: "Red Sauce, mozzarella, pepperoni, mild sausage, ground beef", size: "Mod"},
#     {name: "Mad Dog", ingredients: "Red Sauce, mozzarella, pepperoni, mild sausage, ground beef", size: "Mega"},
#     {name: "Tristan", ingredients: "Mozzarella, asiago, roasted red peppers, mushrooms, pesto drizzle finish", size: "Mini"},
#     {name: "Tristan", ingredients: "Mozzarella, asiago, roasted red peppers, mushrooms, pesto drizzle finish", size: "Mod"},
#     {name: "Tristan", ingredients: "Mozzarella, asiago, roasted red peppers, mushrooms, pesto drizzle finish", size: "Mega"},
#     {name: "Dominic", ingredients: "White Sauce, fresh chopped basil, asiago, mild sausage, red onion, sliced tomatoes", size: "Mini"},
#     {name: "Dominic", ingredients: "White Sauce, fresh chopped basil, asiago, mild sausage, red onion, sliced tomatoes", size: "Mod"},
#     {name: "Dominic", ingredients: "White Sauce, fresh chopped basil, asiago, mild sausage, red onion, sliced tomatoes", size: "Mega"},
#     {name: "Lucy Sunshine", ingredients: "Mozzarella, parmesan, garlic, artichokes, finished with dollops of red sauce", size: "Mini"},
#     {name: "Lucy Sunshine", ingredients: "Mozzarella, parmesan, garlic, artichokes, finished with dollops of red sauce", size: "Mod"},
#     {name: "Lucy Sunshine", ingredients: "Mozzarella, parmesan, garlic, artichokes, finished with dollops of red sauce", size: "Mega"},
#     {name: "Jasper", ingredients: "Red Sauce, mozzarella, spicy chicken sausage, mushrooms", size: "Mini"},
#     {name: "Jasper", ingredients: "Red Sauce, mozzarella, spicy chicken sausage, mushrooms", size: "Mod"},
#     {name: "Jasper", ingredients: "Red Sauce, mozzarella, spicy chicken sausage, mushrooms", size: "Mega"},
#     {name: "Dillion James", ingredients: "Red Sauce, mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes", size: "Mini"},
#     {name: "Dillion James", ingredients: "Red Sauce, mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes", size: "Mod"},
#     {name: "Dillion James", ingredients: "Red Sauce, mozzarella, asiago, fresh chopped basil, garlic, sliced tomatoes", size: "Mega"},
#     {name: "Calexico", ingredients: "Red Sauce, mozzarella, gorgonzola, chicken, jalapenos, finished with hot buffalo sauce zigzag", size: "Mini"},
#     {name: "Calexico", ingredients: "Red Sauce, mozzarella, gorgonzola, chicken, jalapenos, finished with hot buffalo sauce zigzag", size: "Mod"},
#     {name: "Calexico", ingredients: "Red Sauce, mozzarella, gorgonzola, chicken, jalapenos, finished with hot buffalo sauce zigzag", size: "Mega"},
#     {name: "Caspian", ingredients: "BBQ Sauce, mozzarella, gorgonzola, chicken, red onions, finished with BBQ sauce swirl", size: "Mini"},
#     {name: "Caspian", ingredients: "BBQ Sauce, mozzarella, gorgonzola, chicken, red onions, finished with BBQ sauce swirl", size: "Mod"},
#     {name: "Caspian", ingredients: "BBQ Sauce, mozzarella, gorgonzola, chicken, red onions, finished with BBQ sauce swirl", size: "Mega"}
# ])

# Order.create([
#     {user_id: 1, pizza_id: 1, pickup_name: "Captain Morgan", special_instructions: "3 sides of utensils"},
#     {user_id: 1, pizza_id: 2, pickup_name: "Captain Morgan", special_instructions: "Napkins on the side"},
#     {user_id: 1, pizza_id: 3, pickup_name: "Captain Morgan", special_instructions: "No onions"},
#     {user_id: 1, pizza_id: 4, pickup_name: "Captain Morgan", special_instructions: "2 sides of utensils"},
#     {user_id: 1, pizza_id: 5, pickup_name: "Captain Morgan", special_instructions: "Napkins in bulk"},
#     {user_id: 1, pizza_id: 6, pickup_name: "Captain Morgan", special_instructions: "No cheese"},
#     {user_id: 1, pizza_id: 7, pickup_name: "Captain Morgan", special_instructions: "1 side of utensils"},
#     {user_id: 1, pizza_id: 8, pickup_name: "Captain Morgan", special_instructions: "Napkins and peppers on the side"},
#     {user_id: 1, pizza_id: 9, pickup_name: "Captain Morgan", special_instructions: "No red sauce base"},
#     {user_id: 2, pizza_id: 10, pickup_name: "Oscar Mayer", special_instructions: "Extra red sauce on top"},
#     {user_id: 2, pizza_id: 11, pickup_name: "Oscar Mayer", special_instructions: "No cheese"},
#     {user_id: 2, pizza_id: 12, pickup_name: "Oscar Mayer", special_instructions: "Parmesan and red pepper packets on the side"},
#     {user_id: 2, pizza_id: 13, pickup_name: "Oscar Mayer", special_instructions: "Extra red sauce and bbq sauce on top"},
#     {user_id: 2, pizza_id: 14, pickup_name: "Oscar Mayer", special_instructions: "No cheese. Dairy allergy."},
#     {user_id: 2, pizza_id: 15, pickup_name: "Oscar Mayer", special_instructions: "Red pepper packets on the side"},
#     {user_id: 2, pizza_id: 16, pickup_name: "Oscar Mayer", special_instructions: "Extra pesto sauce on top"},
#     {user_id: 2, pizza_id: 17, pickup_name: "Oscar Mayer", special_instructions: "No spicy sausage"},
#     {user_id: 2, pizza_id: 18, pickup_name: "Oscar Mayer", special_instructions: "Parmesan packets on the side"},
#     {user_id: 3, pizza_id: 19, pickup_name: "Betty Crocker", special_instructions: "Put buffalo sauce on the side, not on top"},
#     {user_id: 3, pizza_id: 20, pickup_name: "Betty Crocker", special_instructions: "Extra BBQ sauce on the side"},
#     {user_id: 3, pizza_id: 21, pickup_name: "Betty Crocker", special_instructions: "Pesto sauce on the side"},
#     {user_id: 3, pizza_id: 22, pickup_name: "Betty Crocker", special_instructions: "Light BBQ sauce ontop"},
#     {user_id: 3, pizza_id: 23, pickup_name: "Betty Crocker", special_instructions: "Light buffalo sauce on top"},
#     {user_id: 3, pizza_id: 24, pickup_name: "Betty Crocker", special_instructions: "Extra chicken ontop."}
# ])
