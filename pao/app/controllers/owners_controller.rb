class OwnersController < ApplicationController
  before_action :find_owners, only: [:show]
  def index
    @owners = Owner.all
  end
  def show
  end

  private
  def find_owners
    @owner = Owner.find(params[:id])
  end
end
