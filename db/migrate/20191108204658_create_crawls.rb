class CreateCrawls < ActiveRecord::Migration[6.0]
  def change
    create_table :crawls do |t|
      t.string :name

      t.timestamps
    end
  end
end
