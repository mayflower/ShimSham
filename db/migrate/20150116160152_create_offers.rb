class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :level
      t.text :description

      t.timestamps
    end
  end
end
