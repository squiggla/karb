require "rails_helper"

feature "User can track a tally of a particular achievement as recorded by a number", feature: true, js: true do
  scenario "Squiggla stores some numbers" do
    When "Squiggla adds some number" do
      visit root_path

      focus_on(:tracking).form_action(
        "add",
        Number: 3,
      )
      focus_on(:tracking).form_action(
        "add",
        Number: 6,
      )
      focus_on(:tracking).form_action(
        "add",
        Number: 9,
      )
    end

    Then "the numbers are displayed" do
      # todo
    end
  end
end
