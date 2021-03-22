feature 'bookmark' do
  scenario 'say hello world' do
    visit '/'
    expect(page).to have_content "Hello World"
  end
end
