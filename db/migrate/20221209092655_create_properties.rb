class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.string :image_url
      t.integer :size

      t.timestamps
    end
  end
end
