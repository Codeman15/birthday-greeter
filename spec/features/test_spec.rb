feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/birthday')
    expect(page).to have_content 'Hello there!'
  end
end
