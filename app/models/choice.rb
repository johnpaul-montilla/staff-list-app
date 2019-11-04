# frozen_string_literal: true

class Choice < ApplicationRecord
  belongs_to :question

  validates :choice, presence: true
end
