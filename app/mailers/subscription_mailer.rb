class SubscriptionMailer < ActionMailer::Base
  default from: "shalinidal@gmail.com"

  def email_post(post)
  	@post = post
  	@subscribers = Enquiry.where(:join_mailing_list => true)
  	@subscribers_emails = @subscribers.map(&:email)
  	mail(:bcc => @subscribers_emails, :subject => "Blog update")
  end
end
