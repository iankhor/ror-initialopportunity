class CreateOnboardings < ActiveRecord::Migration[5.0]
  def change
    create_table :onboardings do |t|
      t.string :no_of_investment
      t.string :is_SMSF
      t.string :invest_location_preferences
      t.string :stock_interest
      t.string :transaction_timeframe
      t.string :transaction_size
      t.string :invitation_preference

      t.timestamps
    end
  end
end
