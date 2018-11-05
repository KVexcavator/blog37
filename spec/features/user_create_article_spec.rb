require "rails_helper"


feature "Article creation" do
  before(:all) do
    sing_up
  end
  # тест входа на страницу создания статьи
  scenario "allows user to visit new article page" do    
    visit new_article_path
    expect(page).to have_content I18n.t('contacts.contact_us')
  end

end
