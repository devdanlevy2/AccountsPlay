class BlueAccountsController < ApplicationController
  before_action :set_blue_account, only: [:show, :edit, :update, :destroy]

  # GET /blue_accounts
  # GET /blue_accounts.json
  def index
    @blue_accounts = BlueAccount.all
  end

  # GET /blue_accounts/1
  # GET /blue_accounts/1.json
  def show
  end

  # GET /blue_accounts/new
  def new
    @blue_account = BlueAccount.new
  end

  # GET /blue_accounts/1/edit
  def edit
  end

  # POST /blue_accounts
  # POST /blue_accounts.json
  def create
    @blue_account = BlueAccount.new(blue_account_params)

    respond_to do |format|
      if @blue_account.save
        format.html { redirect_to @blue_account, notice: 'Blue account was successfully created.' }
        format.json { render :show, status: :created, location: @blue_account }
      else
        format.html { render :new }
        format.json { render json: @blue_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blue_accounts/1
  # PATCH/PUT /blue_accounts/1.json
  def update
    respond_to do |format|
      if @blue_account.update(blue_account_params)
        format.html { redirect_to @blue_account, notice: 'Blue account was successfully updated.' }
        format.json { render :show, status: :ok, location: @blue_account }
      else
        format.html { render :edit }
        format.json { render json: @blue_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blue_accounts/1
  # DELETE /blue_accounts/1.json
  def destroy
    @blue_account.destroy
    respond_to do |format|
      format.html { redirect_to blue_accounts_url, notice: 'Blue account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blue_account
      @blue_account = BlueAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blue_account_params
      params.require(:blue_account).permit(:Accountid, :name, :accountBalance, :Address, :paymentDate, :userID, :contactInformation)
    end
end
