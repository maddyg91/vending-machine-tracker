require 'rails_helper'

describe 'as a user' do
  describe 'when I visit machine_path(id)'do
    it "shows all the snacks and their price" do
      owner = Owner.create(name: "me")
      machine = owner.machines.create!(location:"denver")
      snack_1 = Snack.create(name:"Reeses", price: 1)
      snack_1 = Snack.create(name:"Oreo", price: 2)
      
      visit machine_path(machine)

      expect(page).to have_content(snack_1.name)
      expect(page).to have_content(snack_2.name)
      expect(page).to have_content(snack_1.price)
      expect(page).to have_content(snack_2.price)
    end
  end
end
# User Story 1 of 3
#
# As a user
# When I visit a vending machine show page
# I see the name of all of the snacks associated with that vending machine along with their price
