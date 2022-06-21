class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
    t.string :name
    t.integer :price
    t.integer :year
    t.string :image
    t.string :condition

    end
  end
end
