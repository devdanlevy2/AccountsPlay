class RedAccountsController < ApplicationController
  before_action :set_red_account, only: [:show, :edit, :update, :destroy]

  # GET /red_accounts
  # GET /red_accounts.json
  def index
    @red_accounts = RedAccount.all
  end

  # GET /red_accounts/1
  # GET /red_accounts/1.json
  def show
  end

  # GET /red_accounts/new
  def new
    @red_account = RedAccount.new
  end

  # GET /red_accounts/1/edit
  def edit
  end

  # POST /red_accounts
  # POST /red_accounts.json
  def create
    @red_account = RedAccount.new(red_account_params)

    respond_to do |format|
      if @red_account.save
        format.html { redirect_to @red_account, notice: 'Red account was successfully created.' }
        format.json { render :show, status: :created, location: @red_account }
      else
        format.html { render :new }
        format.json { render json: @red_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /red_accounts/1
  # PATCH/PUT /red_accounts/1.json
  def update
    respond_to do |format|
      if @red_account.update(red_account_params)
        format.html { redirect_to @red_account, notice: 'Red account was successfully updated.' }
        format.json { render :show, status: :ok, location: @red_account }
      else
        format.html { render :edit }
        format.json { render json: @red_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /red_accounts/1
  # DELETE /red_accounts/1.json
  def destroy
    @red_account.destroy
    respond_to do |format|
      format.html { redirect_to red_accounts_url, notice: 'Red account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_red_account
      @red_account = RedAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def red_account_params
      params.require(:red_account).permit(:id, :name, :accountBalance, :accountLimit, :paymentDate, :userID, :integer, :apr)
    end
end
