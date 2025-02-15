require 'spec_helper'

describe "attendees/new.html.erb" do
  before(:each) do
    assign(:attendee, stub_model(Attendee,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new attendee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => attendees_path, :method => "post" do
      assert_select "input#attendee_name", :name => "attendee[name]"
      assert_select "input#attendee_email", :name => "attendee[email]"
    end
  end
end
