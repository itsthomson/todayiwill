class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :name
      t.date :date
      t.text :message

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
