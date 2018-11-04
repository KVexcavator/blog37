require "rails_helper"

feature "Account creation" do
  # тест создания аккаунта
  scenario "allows guest to create account" do    
    sing_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
