class UserNotifier < ApplicationMailer
  #default email address
  default from: 'noreply@codiki.com'

   # send a signup email to the user, pass in the user object that   contains the user's email address
   def send_signup_email(user)
     @contributor = user
     mail( to: @contributor.email,
     subject: 'Thanks for registering for Codiki' )
   end

   def update_email(article)
     @theArticle = article.contributor_id
     @contributor = Contributor.find(id=@theArticle)
     @article = article.title
     mail( to: @contributor.email,
     subject: "Article: #{@article} has been updated" )
   end

end
