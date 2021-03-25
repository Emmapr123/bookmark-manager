feature 'bookmark' do
  scenario 'see a list of bookmarks' do
    Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmarks.create(url: 'http://www.instagram.com', title: 'Instagram')
    Bookmarks.create(url: 'http://www.google.com', title: 'Google')

    visit '/bookmark'

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Instagram',  href: 'http://www.instagram.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end
