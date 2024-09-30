require 'rails_helper'

RSpec.describe "authors/index", type: :view do
  before(:each) do
    assign(:authors, [
      Author.create!(
        name: "Name"
      ),
      Author.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of authors" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
