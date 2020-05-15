User.destroy_all
Recipe.destroy_all
Favorite.destroy_all

user1 = User.create(name: "Esther")
user2 = User.create(name: "Luis")
user3 = User.create(name: "Jack")

recipe1 = Recipe.create(name:"Mac and Cheese", ingredients:"Macaroni,Milk,Cheese,Butter", rating:"4.5")
recipe2 = Recipe.create(name:"Bread", ingredients:"Water,Flour,Eggs", rating:"2.5")
recipe3 = Recipe.create(name:"Cake", ingredients:"Milk,Flour,Eggs,Chocolate", rating:"5.0")


Favorite.create(user_id: user1.id, recipe_id: recipe1.id, comment: "This is my first")
Favorite.create(user_id: user1.id, recipe_id: recipe2.id, comment: "This is my second")
Favorite.create(user_id: user2.id, recipe_id: recipe1.id, comment: "This is my favor")
Favorite.create(user_id: user3.id, recipe_id: recipe3.id, comment: "I like")
Favorite.create(user_id: user2.id, recipe_id: recipe2.id, comment: "This is my favor always")
