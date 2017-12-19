require 'rails_helper'

describe "as a user" do
  scenario "i can create a student" do
    visit "/students/new"
    fill_in 'student[name]', with: 'Luis'
    click_on 'Submit'
    student = Student.find_by(name: "Luis")

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content("Luis")
  end

end