class SubscriptionsController < ApplicationController
before_action :set_community
    
    def create
        @subscription = @community.subscriptions.where(user_id: current_user.id).first_or_create
        respond_to do |format|
        format.js
        end
    end

    def destroy
        @subscription = @community.subscriptions.where(user_id: current_user.id).first_or_create
        @subscription.destroy
        respond_to do |format|
        format.js
        end
    end

    private

    def set_community
        @community = Community.friendly.find(params[:community_id])
    end

end
