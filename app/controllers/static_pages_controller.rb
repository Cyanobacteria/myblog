class StaticPagesController < ApplicationController
  before_action :authenticate_admin!
  def home

  end

  def about

  end

  def others
    @others_names = Admin.all
    #@others_email = admin.all.email
  end

end
