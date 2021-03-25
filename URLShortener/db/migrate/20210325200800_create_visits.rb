class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|

      #joins table
      #we need user_id and shortened_url_id
      t.integer :shortened_url_id, null: false
      t.integer :user_id, null: false

      t.timestamps

    end
  end
end