# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @consultations = Consultation.where(
      start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week
    )
  end

  def terms; end

  def privacy; end
end
