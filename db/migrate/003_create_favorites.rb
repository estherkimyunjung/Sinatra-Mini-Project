class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |x|
      x.integer :user_id
      x.integer :recipe_id
      x.string :comment
    end
  end
end
