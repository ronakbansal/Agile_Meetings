require 'spec_helper'

describe "meeting_types/index.html.erb" do
  before(:each) do
    assign(:meeting_types, [
      stub_model(MeetingType,
        :name => "Name"
      ),
      stub_model(MeetingType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of meeting_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
