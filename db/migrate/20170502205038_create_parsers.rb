class CreateParsers < ActiveRecord::Migration[5.0]
  def change
    create_table :parsers do |t|
      t.string :h1
      t.string :h2
      t.string :h3
      t.string :link

      t.timestamps
    end
  end
end
