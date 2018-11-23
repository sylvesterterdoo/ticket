class TicketTablesController < ApplicationController
  before_action :set_ticket_table, only: [:show, :edit, :update, :destroy]

  # GET /ticket_tables
  # GET /ticket_tables.json
  def index
    @ticket_tables = TicketTable.all
  end

  # GET /ticket_tables/1
  # GET /ticket_tables/1.json
  def show
  end

  # GET /ticket_tables/new
  def new
    @ticket_table = TicketTable.new
  end

  # GET /ticket_tables/1/edit
  def edit
  end

  # POST /ticket_tables
  # POST /ticket_tables.json
  def create
    @ticket_table = TicketTable.new(ticket_table_params)

    respond_to do |format|
      if @ticket_table.save
        format.html { redirect_to @ticket_table, notice: 'Ticket table was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_table }
      else
        format.html { render :new }
        format.json { render json: @ticket_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_tables/1
  # PATCH/PUT /ticket_tables/1.json
  def update
    respond_to do |format|
      if @ticket_table.update(ticket_table_params)
        format.html { redirect_to @ticket_table, notice: 'Ticket table was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_table }
      else
        format.html { render :edit }
        format.json { render json: @ticket_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_tables/1
  # DELETE /ticket_tables/1.json
  def destroy
    @ticket_table.destroy
    respond_to do |format|
      format.html { redirect_to ticket_tables_url, notice: 'Ticket table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_table
      @ticket_table = TicketTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_table_params
      params.require(:ticket_table).permit(:name, :seat_id_seq, :address, :price_paid, :email_address)
    end
end
