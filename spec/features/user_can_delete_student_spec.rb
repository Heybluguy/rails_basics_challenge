require "rails_helper"

describe "as a user" do
  scenario "i can delete a student" do
    Student.create(name: "luis")
    Student.create(name: "danny")
    Student.create(name: "elle")

    visit "/students"
    within (".students") do
      first(:button, "Delete").click
    end

    expect(page).not_to have_content("luis")
  end

end