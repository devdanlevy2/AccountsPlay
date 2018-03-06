class BlackAccountsController < ApplicationController
  before_action :set_black_account, only: [:show, :edit, :update, :destroy]

  # GET /black_accounts
  # GET /black_accounts.json
  def index
    @black_accounts = BlackAccount.all
  end

  # GET /black_accounts/1
  # GET /black_accounts/1.json
  def show
  end

  # GET /black_accounts/new
  def new
    @black_account = BlackAccount.new
  end

  # GET /black_accounts/1/edit
  def edit
  end

  # POST /black_accounts
  # POST /black_accounts.json
  def create
    @black_account = BlackAccount.new(black_account_params)

    respond_to do |format|
      if @black_account.save
        format.html { redirect_to @black_account, notice: 'Black account was successfully created.' }
        format.json { render :show, status: :created, location: @black_account }
      else
        format.html { render :new }
        format.json { render json: @black_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /black_accounts/1
  # PATCH/PUT /black_accounts/1.json
  def update
    respond_to do |format|
      if @black_account.update(black_account_params)
        format.html { redirect_to @black_account, notice: 'Black account was successfully updated.' }
        format.json { render :show, status: :ok, location: @black_account }
      else
        format.html { render :edit }
        format.json { render json: @black_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /black_accounts/1
  # DELETE /black_accounts/1.json
  def destroy
    @black_account.destroy
    respond_to do |format|
      format.html { redirect_to black_accounts_url, notice: 'Black account was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_black_account
      @black_account = BlackAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def black_account_params
      params.require(:black_account).permit(:Accountid, :name, :accountBalance, :accountLimit, :apr, :userId)
    end
end
