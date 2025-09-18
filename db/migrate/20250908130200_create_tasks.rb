class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description

      t.integer :state, default: 0
      
      t.boolean :archived, default: false
      t.boolean :shelve, default: false

      t.belongs_to :board

      t.timestamps
    end
  end
end
