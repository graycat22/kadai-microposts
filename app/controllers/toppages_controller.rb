class ToppagesController < ApplicationController
  before_action :require_user_logged_in
  def index
    @micropost = current_user.microposts.build  # form_with 用
    @pagy, @microposts = pagy(current_user.feed_microposts.order(id: :desc))
  end
end
