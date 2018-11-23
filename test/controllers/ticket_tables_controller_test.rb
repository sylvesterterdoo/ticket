require 'test_helper'

class TicketTablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket_table = ticket_tables(:one)
  end

  test "should get index" do
    get ticket_tables_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_table_url
    assert_response :success
  end

  test "should create ticket_table" do
    assert_difference('TicketTable.count') do
      post ticket_tables_url, params: { ticket_table: { address: @ticket_table.address, email_address: @ticket_table.email_address, name: @ticket_table.name, price_paid: @ticket_table.price_paid, seat_id_seq: @ticket_table.seat_id_seq } }
    end

    assert_redirected_to ticket_table_url(TicketTable.last)
  end

  test "should show ticket_table" do
    get ticket_table_url(@ticket_table)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_table_url(@ticket_table)
    assert_response :success
  end

  test "should update ticket_table" do
    patch ticket_table_url(@ticket_table), params: { ticket_table: { address: @ticket_table.address, email_address: @ticket_table.email_address, name: @ticket_table.name, price_paid: @ticket_table.price_paid, seat_id_seq: @ticket_table.seat_id_seq } }
    assert_redirected_to ticket_table_url(@ticket_table)
  end

  test "should destroy ticket_table" do
    assert_difference('TicketTable.count', -1) do
      delete ticket_table_url(@ticket_table)
    end

    assert_redirected_to ticket_tables_url
  end
end
