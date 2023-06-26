class CreateTicketGroup < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_groups, :id => false do |t|
      t.string :id, limit: 36, primary_key: true, null: false
      t.integer :order, null: false
      t.string :name, null: false
      
      t.timestamps
      t.references :project, foreign_key: true, type: :string, limit: 36, null: false
    end
  end
end
