class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.belongs_to :user, foreign_key: true, index: true, null: false, on_delete: :cascade
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
