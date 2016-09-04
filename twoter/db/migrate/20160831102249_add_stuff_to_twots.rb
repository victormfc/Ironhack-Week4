class AddStuffToTwots < ActiveRecord::Migration[5.0]
  def change
    add_column :twots, :description, :string
    add_column :twots, :text, :string
    add_column :twots, :active, :boolean
  end
end
