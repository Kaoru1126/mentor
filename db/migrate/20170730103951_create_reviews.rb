class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references  :user,         index: true, null: false, foreign_key: true
      t.text        :content,      null: false
      t.integer     :rate,         null: false
      t.timestamps                 null: false
    end
  end
end
