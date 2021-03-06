require "rails_helper"

RSpec.describe Article, type: :model do

  describe "associations" do
    it { should have_many :comments }
  end

  describe "validations the length" do
    it do
    should validate_length_of(:title ).
      is_at_least(2).is_at_most(140)
    end

    it do
    should validate_length_of(:text).
      is_at_least(10).is_at_most(4000)
    end
    #it { should validate_presence_of :title }
    #it { should validate_presence_of :text  }
  end

  describe "#subject" do
    it "returns the article title" do
      #создаём объект article хитрым способом
      # arrange & act
      article=create(:article, title: "Bla Bla Bla")
      #assert
      expect(article.subject).to eq "Bla Bla Bla"
    end
  end

  describe "#last_comment" do
    it "return the last comment" do
      # сщздаём статью с коментариями
      article=create( :article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "Comment body 3"
    end
  end

end