
feature 'add bookmark' do
  scenario 'user is able to add www.makers.tech' do
    visit '/bookmark'
    click_on('add_bookmark')
    fill_in('title', :with => 'Makers Academy')
    fill_in('url', :with => 'http://www.makers.tech')
    click_on('add_bookmark')
    expect(page).to have_content "Makers Academy"
  end
end

feature 'delete bookmark' do
  scenario 'user is able to delete http://www.github.com' do 
    visit '/bookmark'
    first('.bookmark').click_on 'delete'
    expect(page).not_to have_content 'Github'
  end
end

feature 'update bookmark' do
  scenario 'user is able to update http://www.github.com' do 
    visit '/bookmark'
    first('.bookmark').click_on 'update'
    fill_in('title', :with => 'Shithub')
    fill_in('url', :with => 'http://www.github.com')
    click_on 'submit'
    expect(page).to have_content "Shithub"
  end 
end 

feature 'error' do
  scenario 'gives an error when not given a fake url' do
    visit '/'
    click_on('add_bookmark')
    fill_in('title', :with => 'Shithub')
    fill_in('url', :with => 'not a real url')
    click_on('add_bookmark')

    expect(page).not_to have_content 'not a real url'
    expect(page).to have_content "You must submit a valid URL."
  end
end 
