require "rails_helper"

feature "Contact creation" do
  # проверка доступа к странице (открывается)
  scenario "allows acess to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end