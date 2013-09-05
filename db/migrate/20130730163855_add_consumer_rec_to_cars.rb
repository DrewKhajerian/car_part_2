class AddConsumerRecToCars < ActiveRecord::Migration
  def change
    add_column :cars, :consumer_rec, :string
  end
end
