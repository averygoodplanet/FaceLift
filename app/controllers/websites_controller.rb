class WebsitesController < ApplicationController
  before_action :set_website, only: [:show, :edit, :update, :destroy]

  def index
    @websites = Website.order(title: :asc)
  end

  def new
    @website = Website.new
  end

  def create
    return unless current_user

    @website = Website.new(website_params)

    if @website.save
      redirect_to :action => "index"
    else
      respond_to do |format|
            format.html { render action: 'new' }
            format.json { render json: @website.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    return unless current_user

    @website.destroy
    respond_to do |format|
      format.html { redirect_to websites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_website
      @website = Website.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def website_params
      params.require(:website).permit(:title, :description, :before_image, :after_image, :url)
    end
end
