require "rails_helper"

  describe Item, type: :model do
    describe "validations" do
      it {should validate_presence_of(:name)}
      it {should validate_presence_of(:thumbnail)}
      it {should validate_presence_of(:price)}
      it {should validate_presence_of(:inventory)}
      it {should validate_presence_of(:description)}
    end

    it "enabled is true by default" do
      merchant = create(:merchant)
      item_1 = Item.create!(name: "Beer", thumbnail: "123.jpeg", price: 123, inventory: 123, description: "Good beer", user_id: merchant.id)
      expect(item_1.enabled).to eq(true)
    end
  end
