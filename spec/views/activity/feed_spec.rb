require 'rails_helper'

RSpec.describe "activity/feed.html.erb", type: :view do
  it "render the word feed" do
    render template: "activity/feed"
    expect(rendered).to match /feed/
  end
end
