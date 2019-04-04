feature 'Enter name/date' do
  scenario 'entering name' do
    visit('/')
    fill_in :Name, with: 'Phil'
    click_button 'Go'
    expect(page).to have_content 'Hello Phil'
  end
end
