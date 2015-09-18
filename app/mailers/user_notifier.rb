class UserNotifier < ApplicationMailer
  #default email address
  default from: 'jenniferllwu@gmail.com'

   # send a signup email to the user, pass in the user object that   contains the user's email address
   def send_signup_email(user)
     @contributor = user
     mail( to: @contributor.email,
     subject: 'Thanks for signing up for our amazing app' )
   end
end
