class CreateDivs < ActiveRecord::Migration[5.2]
  def change
    create_table :divs do |t|
      t.text :content
    end
  end
end
