require "rails_helper"

feature "Contact creation" do
  # проверка доступа к странице (открывается)
  scenario "allows acess to contact page" do
    visit '/contacts'
    expect(page).to have_content 'Contact us'
  end
end