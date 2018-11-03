FactoryGirl.define do
  factory :comment do
   author "Comments author"
   sequence(:body) { |n| "Comment body #{n}"}
  end
end