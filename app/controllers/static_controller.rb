class StaticController < ApplicationController
  def home
    set_meta_tags title: "Your Fort Collins DUI and Criminal Defense Lawyer"
  end

  def firm_overview
    set_meta_tags title: "Firm Overview"
  end

  def eric_sunness
  end

  def contact
    set_meta_tags title: "Contact"
  end

  def thank_you
  end

  def fort_collins_dui_lawyer
    set_meta_tags title: "Fort Collins DUI Lawyer"
    @duis = Dui.all
  end

  def fort_collins_criminal_defense_lawyer
    set_meta_tags title: "Fort Collins Criminal Defense Lawyer"
    @criminal_defenses = CriminalDefense.all
  end

  def case_results
    set_meta_tags title: "Case Results"
  end

  def privacy_policy
    set_meta_tags title: "Privacy Policy"
  end
end
