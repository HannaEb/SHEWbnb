def sign_up(
    first_name: 'Bob',
    last_name: 'Smith',
    username: 'bob1',
    email: 'bob@me.com',
    password: 'minions',
    password_confirmation: 'minions')
  visit '/users/new'
  fill_in :first_name,  with: first_name
  fill_in :last_name,   with: last_name
  fill_in :username,    with: username
  fill_in :email,       with: email
  fill_in :password,    with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end

def login(
    username: 'bob1',
    password: 'minions')
  visit '/sessions/new'
  fill_in :username, with: username
  fill_in :password, with: password
  click_button 'Login'
end

def sign_up_guest(
  first_name: 'Hanna',
  last_name: 'Smith',
  username: 'Hanna1',
  email: 'Hanna@me.com',
  password: 'hanhan',
  password_confirmation: 'hanhan')
  visit '/users/new'
  fill_in :first_name,  with: first_name
  fill_in :last_name,   with: last_name
  fill_in :username,    with: username
  fill_in :email,       with: email
  fill_in :password,    with: password
  fill_in :password_confirmation, with: password_confirmation
  click_button 'Sign up'
end

def add_place
  visit '/places/new'
  fill_in 'name', with: 'Downton Abbey'
  fill_in 'description', with: 'Charming Victorian manor house'
  fill_in 'price', with: '29'
  fill_in 'start_date', with: '13/06/2016'
  fill_in 'end_date', with: '13/06/2016'
  click_button 'Add Place'
end

def add_availability
  click_link 'Manage my places'
  click_button 'Add availability'
  fill_in :start_date, with: '20/06/2016'
  fill_in :end_date, with: '25/06/2016'
  click_button 'Confirm'
end
