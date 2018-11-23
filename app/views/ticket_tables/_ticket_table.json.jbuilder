json.extract! ticket_table, :id, :name, :seat_id_seq, :address, :price_paid, :email_address, :created_at, :updated_at
json.url ticket_table_url(ticket_table, format: :json)
