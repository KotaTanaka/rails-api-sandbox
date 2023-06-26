class CreateTicket < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets, :id => false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.integer :order, null: false
      t.string :title, null: false
      t.text :description
      t.integer :priority
      t.datetime :deadline
      
      t.timestamps
      t.references :ticket_group, foreign_key: true, type: :string, limit: 36, null: false
      t.references :label, foreign_key: true, type: :string, limit: 36
    end
  end
end
