class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |x|
      x.string :name
      x.string :ingredients
      x.float :rating
    end
  end
end
