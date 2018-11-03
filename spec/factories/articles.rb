FactoryGirl.define do
  factory :article do
   title "Article title"
   text "Article text"

   #создаём фабрику с названием article_with_comments
   # для создания статьи с несколькими комментариями
   factory :article_with_comments do
    # после сщздания article
    after :create do |article, evaluator|
      # создаём список из 3-Х коментариев
      create_list :comment,3, article: article
    end
   end
  end
end