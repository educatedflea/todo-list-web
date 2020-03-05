require "capybara/rspec"

feature "homepage" do

  scenario "I should be able to see a list of to do items" do
    # visit page http://localhost:9292/todolist
    visit '/todolist'
    # Observe if there is a list, or at the heading of the page if there's no list added
    expect(page).to have_content "Items in the todo list"
  end

  scenario "I should be able to add a todo item" do
    # visit the page http://localhost:4567/add-item
    visit '/add-item'
    # Fill in the name
    fill_in 'name', with: 'Get milk'
    # Fill in the category
    fill_in 'category', with: 'Domestic'
    # Click Submit button
    click_button 'submit'
    # Observe that the item added to the list
    expect(page).to have_content("Get milk")

  end

  scenario "I should be able to see a list of items by category" do
    visit '/bycategory?category=Finance'
    select 'Domestic', from: 'category'
    click_button 'submit'
    expect(page).to have_content ('Buy milk')
    expect(page).not_to have_content('Tax returns')
    save_and_open_page
  end

  scenario "I should be able to choose a category to see the list in" do
  end

  scenario "I should be able to add an optional deadline to my todo item" do
  end

  scenario "I should be able to mark my to do item as complete" do
  end

end
