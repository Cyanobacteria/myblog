class StaticPagesController < ApplicationController
  before_action :set_post, only: [:only_view_show_one]
  def home
  end

  def about
  end

  def index
    @posts = Post.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :content)
    end


end
