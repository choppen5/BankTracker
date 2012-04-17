class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end

    @users = User.have_published_issues.paginate(page: params[:page], :per_page => 1)
  end

  def help
  end

  def about
  end

  def contact
  end
end
