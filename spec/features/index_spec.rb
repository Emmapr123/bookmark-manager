feature 'bookmark' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Hello World"
  end

  scenario 'see a list of bookmarks' do
    visit '/bookmark'
    expect(page).to have_content 'github.com'
    expect(page).to have_content 'Github'
    expect(page).to have_content 'emmapriester.com'
    expect(page).to have_content 'Emma Priester'
    expect(page).to have_content 'hotmail.com'
    expect(page).to have_content 'Hotmail'
  end
end
