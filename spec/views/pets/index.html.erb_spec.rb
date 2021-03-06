require 'spec_helper'

describe "pets/index" do
  before(:each) do
    assign(:pets, [
      stub_model(Pet,
        :name => "Name",
        :breed => "Breed",
        :age => 1,
        :weight => 2,
        :user_id => 3,
        :doctor_id => 4
      ),
      stub_model(Pet,
        :name => "Name",
        :breed => "Breed",
        :age => 1,
        :weight => 2,
        :user_id => 3,
        :doctor_id => 4
      )
    ])
  end

  it "renders a list of pets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Breed".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
