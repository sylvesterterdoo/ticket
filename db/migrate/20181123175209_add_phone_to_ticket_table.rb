class AddPhoneToTicketTable < ActiveRecord::Migration[5.2]
  def change
    add_column :ticket_tables, :phone, :string
  end
end
