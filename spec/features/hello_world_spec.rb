require 'rails_helper'

feature 'routing is working properly' do

  scenario 'on the /hello_world page' do
    visit hello_world_path
    expect(page).to have_css("h1", text: "Hello World")
  end
end