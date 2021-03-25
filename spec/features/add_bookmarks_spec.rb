
feature 'add bookmark' do
  scenario 'user is able to add www.makers.tech' do
    visit '/bookmark'
    click_on('add_bookmark')
    fill_in('title', :with => 'Makers Academy')
    fill_in('url', :with => 'hhtp://www.makers.tech')
    click_on('add_bookmark')
    expect(page).to have_content "Makers Academy"
  end
end
