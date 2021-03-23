
feature 'add bookmark' do
  scenario 'user is able to add www.makers.tech' do
    visit '/bookmark'
    click_on('add_bookmark')
    fill_in('bookmark', :with => 'www.makers.tech')
    expect(page).to have_content "www.makers.tech"
  end
end
