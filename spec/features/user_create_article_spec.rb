require "rails_helper"


feature "Article creation" do
  before(:all) do
    sing_up
  end
  # тест входа на страницу создания статьи и создание статьи
  scenario "allows user to visit new article page and create article" do    
    visit new_article_path

    fill_in :article_title, :with => 'barmaglot'
    fill_in :article_text, :with => "texttexttexttext"

    click_button  I18n.t('articles.article_send_save_article')

    expect(page).to have_content 'barmaglot'
  end

end
