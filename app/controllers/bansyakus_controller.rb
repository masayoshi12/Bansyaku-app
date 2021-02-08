class BansyakusController < ApplicationController
  before_action :set_bansyaku, except: [:index, :new, :create]

  def index
    @bansyakus = Bansyaku.includes(:user)
  end

  def new
    @bansyaku = Bansyaku.new
  end
  
  def create
    @bansyaku = Bansyaku.new(bansyaku_params)
    if @bansyaku.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @review = Review.new
    @reviews = @bansyaku.reviews
  end
  
  def edit
  end

  def update
    if @bansyaku.update(bansyaku_params)
      redirect_to bansyaku_path(@bansyaku)
    else
      render :edit
    end
  end

  def destroy
    if @bansyaku.destroy
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  private
  
  def bansyaku_params
    params.require(:bansyaku).permit( :sake_name, :sake_id, :warimono_id, :onetumami_name, :onetumami_id, :onetumami_recipe, :twotumami_name, :twotumami_id, :twotumami_recipe, :user_comment, :image).merge(user_id: current_user.id)
  end

  def set_bansyaku
    @bansyaku = Bansyaku.find(params[:id])
  end
  
end
