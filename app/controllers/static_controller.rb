class StaticController < ApplicationController
  before_action :set_case_results

  def home
  end

  def about
  end

  def contact
  end

  def thank_you
  end

  def fort_collins_dui_lawyer
  end

  def fort_collins_criminal_defense_lawyer
  end

  def case_results
  end

  def privacy_policy
  end

  private

  def set_case_results
    @case_results = CaseResult.all
  end
end
