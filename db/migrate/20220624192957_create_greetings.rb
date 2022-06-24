class CreateGreetings < ActiveRecord::Migration[7.0]
  def change
    create_table :greetings do |t|
      t.string :greetingmessage
      t.string :string

      t.timestamps
    end
  end
end
