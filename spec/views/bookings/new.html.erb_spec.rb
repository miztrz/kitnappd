require 'rails_helper'

RSpec.describe "bookings/new", type: :view do
  before(:each) do
    assign(:booking, Booking.new(
      :kitten => nil,
      :title => "MyString",
      :accepted => false,
      :total => ""
    ))
  end

  it "renders new booking form" do
    render

    assert_select "form[action=?][method=?]", bookings_path, "post" do

      assert_select "input[name=?]", "booking[kitten_id]"

      assert_select "input[name=?]", "booking[title]"

      assert_select "input[name=?]", "booking[accepted]"

      assert_select "input[name=?]", "booking[total]"
    end
  end
end
