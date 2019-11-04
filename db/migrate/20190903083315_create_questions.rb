# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :answer_type
      t.integer :show

      t.timestamps
    end
  end
end
