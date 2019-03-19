module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'paul@mail.com'
    click_on 'Sign In'
  end
end
