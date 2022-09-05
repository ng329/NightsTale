class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :url
      t.float :price_per_person

      t.timestamps
    end
  end
end
