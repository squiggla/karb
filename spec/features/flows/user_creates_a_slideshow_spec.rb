require "rails_helper"

feature "User can track a tally of a particular achievement as recorded by a number", feature: true, js: true do
  scenario "Squiggla stores some numbers" do
    When "Squiggla adds some number" do
      visit root_path

      (1..3).to_a.each do |number|
        focus_on(:tracking).form_action("Notches")
        focus_on(:tracking).form_action("New notch")
        focus_on(:tracking).form_action(
          "Create Notch",
          Notch: number,
        )
      end

      focus_on(:tracking).form_action("Notches")
    end

    Then "the numbers are displayed" do
      # todo
    end
  end
end
