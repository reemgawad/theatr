class BadgesController < ApplicationController
  def completed
    @badge = Badge.find(params[:id])

    @badge.status = "completed"
    @badge.save
  end
end
