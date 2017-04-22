require 'rails_helper.rb'

feature "visiting the homepage" do
  scenario "index page show welcome text" do
    visit root_path
    expect(page).to have_text("Bienvenido a las publicaciones")
  end
end
