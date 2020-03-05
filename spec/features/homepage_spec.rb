require "capybara/rspec"

feature "homepage" do
  scenario "I should be able to visit the homepage" do
    visit '/'
    expect(page).to have_content 'To do list'
    expect(page).to have_content 'Add a todo list item'
    expect(page).to have_content 'View to do list by category'
  end
end
