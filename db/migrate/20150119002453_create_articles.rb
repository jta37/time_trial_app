class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
      # 1:N association setup; User has_many Articles
      t.references :user
    end
  end
end
