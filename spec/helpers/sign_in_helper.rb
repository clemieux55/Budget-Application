module SignInHelper

	def sign_in_as(valid_user)
		visit root_path
		click_on 'Sign In'
		fill_in 'user_email', with: valid_user.email
		fill_in 'user_password', with: valid_user.password
		click_on 'Sign In'
	end





end