class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text  :answer_body
      t.timestamps
    end
  end
end
