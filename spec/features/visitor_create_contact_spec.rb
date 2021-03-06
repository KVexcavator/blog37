require "rails_helper"

feature "Contact creation" do
  # проверка доступа к странице (открывается)
  scenario "allows access to contact page" do
    visit '/contacts'
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => "Im all set!"

    click_button  I18n.t('contacts.send_contact')

    expect(page).to have_content I18n.t('contacts.create_thanks')
  end
end