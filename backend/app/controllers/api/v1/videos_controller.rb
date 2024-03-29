class Api::V1::VideosController < ApplicationController
  def create
    if params[:keyword].present?
      # VideoSearchService.call(keyword: params[:keyword])
      flash[:notice] = 'ビデオを正常に保存しました。'
    else
      flash[:alert] = 'キーワードを入力してください。'
    end
    redirect_to videos_path # 適切なパスにリダイレクト
  end

def index
  @video = Video.all
  render json: @video
end

  def show
    @video = Video.find_by(map_id: params[:id])
    render json: @video
  end
end
