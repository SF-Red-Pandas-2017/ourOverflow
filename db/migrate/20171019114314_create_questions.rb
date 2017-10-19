class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string  :title
      t.text  :question_body
      t.timestamps
    end
  end
end
