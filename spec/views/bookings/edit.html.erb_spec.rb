require 'rails_helper'

RSpec.describe "bookings/edit", type: :view do
  before(:each) do
    @booking = assign(:booking, Booking.create!(
      :kitten => nil,
      :title => "MyString",
      :accepted => false,
      :total => ""
    ))
  end

  it "renders the edit booking form" do
    render

    assert_select "form[action=?][method=?]", booking_path(@booking), "post" do

      assert_select "input[name=?]", "booking[kitten_id]"

      assert_select "input[name=?]", "booking[title]"

      assert_select "input[name=?]", "booking[accepted]"

      assert_select "input[name=?]", "booking[total]"
    end
  end
end
