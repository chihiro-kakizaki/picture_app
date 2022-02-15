class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  
  def index
    @pictures = Picture.all
  end

  def new
    if params[:back]
      @picture = Picture.new(picture_params)
    else
      @picture = Picture.new
    end
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if params[:back]
      render :new
    else
      if @picture.save
        redirect_to pictures_path, notice: "投稿が完了しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
    if current_user != @picture.user
      redirect_to pictures_path
    end
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to  pictures_path, notice: "投稿を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    if current_user != @picture.user
       redirect_to pictures_path
    else
      @picture.destroy
      redirect_to pictures_path, notice: "投稿を削除しました！"
    end
  end

  def confirm
    @picture = current_user.pictures.build(picture_params)
    render :new if @picture.invalid?
  end

  private

  def picture_params
    params.require(:picture).permit(:content, :image, :image_cache)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end

end
