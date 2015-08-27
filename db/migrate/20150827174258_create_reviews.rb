class CreateReviews < ActiveRecord::Migration
  def change
    create_table :review do |t|
      t.string :name
      t.string :review
      t.string :business_name
      t.string :business_adress
    end
  end
end
