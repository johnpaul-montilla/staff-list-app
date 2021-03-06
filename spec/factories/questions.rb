# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    question { 'Sample question' }
    answer_type { 'Text' }
    view_to_list { 0 }

    trait :view do
      view_to_list { 1 }
    end

    trait :opt_numerical do
      answer_type { 'Numerical' }
      view_to_list { 1 }
    end

    trait :opt_choice do
      answer_type { 'Choice' }
      view_to_list { 1 }
    end
  end
end
