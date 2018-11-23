require "application_system_test_case"

class TicketTablesTest < ApplicationSystemTestCase
  setup do
    @ticket_table = ticket_tables(:one)
  end

  test "visiting the index" do
    visit ticket_tables_url
    assert_selector "h1", text: "Ticket Tables"
  end

  test "creating a Ticket table" do
    visit ticket_tables_url
    click_on "New Ticket Table"

    fill_in "Address", with: @ticket_table.address
    fill_in "Email Address", with: @ticket_table.email_address
    fill_in "Name", with: @ticket_table.name
    fill_in "Price Paid", with: @ticket_table.price_paid
    fill_in "Seat Id Seq", with: @ticket_table.seat_id_seq
    click_on "Create Ticket table"

    assert_text "Ticket table was successfully created"
    click_on "Back"
  end

  test "updating a Ticket table" do
    visit ticket_tables_url
    click_on "Edit", match: :first

    fill_in "Address", with: @ticket_table.address
    fill_in "Email Address", with: @ticket_table.email_address
    fill_in "Name", with: @ticket_table.name
    fill_in "Price Paid", with: @ticket_table.price_paid
    fill_in "Seat Id Seq", with: @ticket_table.seat_id_seq
    click_on "Update Ticket table"

    assert_text "Ticket table was successfully updated"
    click_on "Back"
  end

  test "destroying a Ticket table" do
    visit ticket_tables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ticket table was successfully destroyed"
  end
end
