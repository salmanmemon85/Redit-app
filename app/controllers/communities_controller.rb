class CommunitiesController < ApplicationController
  before_action :authenticate_user!
    def index
      @communities = Community.all  
    end

    def new
    @community = Community.new
    end
    def create  
    @community = Community.create(community_params)
    
    if @community.save
        redirect_to communities_path	
    else
        render :new
        end
    end
    def show
        @community = Community.friendly.find(params[:id])
        @posts = Post.where(:community_id => @community)
        end    
    def edit
     @community = Community.friendly.find(params[:id])   
    end

    def update
        @community = Community.friendly.find(params[:id])   
    @community.update(community_params)
    redirect_to @community
    end

    def destroy
     @community = Community.friendly.find(params[:id])
     @community.destroy
     redirect_to communities_path   
    end

    private
    def community_params
    params.require(:community).permit(:title, :name, :description,:community_image,:user_id)
    end
end
