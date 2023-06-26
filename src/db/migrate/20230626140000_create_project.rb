class CreateProject < ActiveRecord::Migration[6.0]
  def change
    create_table :projects, :id => false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.string :name, null: false
      t.text :description
      
      t.timestamps
    end
  end
end
