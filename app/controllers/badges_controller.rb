class BadgesController < ApplicationController
  def completed
    @badge = Badge.find(params[:id])

    @badge.status = "completed"
    @badge.save
  end

  def marked
    @badge = Badge.find(params[:id])

    @badge.status = "marked"
    @badge.save
  end
end
