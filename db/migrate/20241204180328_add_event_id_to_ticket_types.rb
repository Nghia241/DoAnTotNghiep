class AddEventIdToTicketTypes < ActiveRecord::Migration[7.0]
  def change
    add_reference :ticket_types, :event, null: false, foreign_key: true
  end
end
