require 'test_helper'

feature 'as a user, I want to edit a wiki page' do
  scenario 'as a user I want to appear as a collaborator on a page' do
    # Given I have no editted an artcile
    sign_in(:one)
    visit page_path(pages(:one))
    page.text.wont_have users(:one).email

    # WHen I edit an article
    click_on_edit
    fill_in 'Body', with: pages(:two).body
    click_on 'Save'

    # I will see myself as a contributor on the page
    vist user_path(users(:one))
    page.text.must_have pages(:one).title

    visit page_path(pages(:one))
    page.text.must_have users(:one).email
  end
end
