require "rails_helper"

describe "as a user" do
  scenario "i can edit a student" do
    student = Student.create(name: "elle")

    visit "/students/#{student.id}/edit"
    fill_in "student[name]", with: "iza"
    click_on "Submit"

    expect(page).to have_content("iza")
  end


end