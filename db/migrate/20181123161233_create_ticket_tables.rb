class CreateTicketTables < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_tables do |t|
      t.string :name
      t.string :seat_id_seq
      t.text :address
      t.decimal :price_paid
      t.string :email_address

      t.timestamps
    end
  end
end
