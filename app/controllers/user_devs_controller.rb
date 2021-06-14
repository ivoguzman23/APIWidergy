class UserDevsController < ApplicationController
  before_action :set_user_dev, only: %i[ show edit update destroy ]
  before_action :authenticate_user_dev!

  # GET /user_devs or /user_devs.json
  def index
    @user_devs = UserDev.all
    #
  end

  # GET /user_devs/1 or /user_devs/1.json
  def show
  end

  # GET /user_devs/new
  def new
    @user_dev = UserDev.new
  end

  # GET /user_devs/1/edit
  def edit
  end

  # POST /user_devs or /user_devs.json
  def create
    @user_dev = UserDev.new(user_dev_params)

    respond_to do |format|
      if @user_dev.save
        format.html { redirect_to @user_dev, notice: "User dev was successfully created." }
        format.json { render :show, status: :created, location: @user_dev }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_devs/1 or /user_devs/1.json
  def update
    respond_to do |format|
      if @user_dev.update(user_dev_params)
        format.html { redirect_to @user_dev, notice: "User dev was successfully updated." }
        format.json { render :show, status: :ok, location: @user_dev }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_dev.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_devs/1 or /user_devs/1.json
  def destroy
    @user_dev.destroy
    respond_to do |format|
      format.html { redirect_to user_devs_url, notice: "User dev was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_dev
      @user_dev = UserDev.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_dev_params
      params.require(:user_dev).permit(:first_name, :last_name, :email, :password, :password_confirmation, :image_url, :locale)
    end
end
