class CreateLists < ActiveRecord::Migration[8.0]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :priority, default: 0
      t.belongs_to :board
      t.timestamps
    end
  end
end
