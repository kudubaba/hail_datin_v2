class CreateDirectMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :direct_messages do |t|
      t.string :opening
      t.string :body

      t.timestamps
    end
  end
end
