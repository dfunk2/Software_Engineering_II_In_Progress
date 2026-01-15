class Email 
  attr_accessor :headers, :body
  def initialize(headers, body)
    @headers = headers
    @body = body
  end
  def send(to)
    # TODO: want to log here
    # logEmail(to)
    # s = connect_to_mail_server()
    # construct_and_send_email(s, to, @headers, @body)
    # close_connection(s)
    :fake
  end

end

class LoggingEmail
  attr_accessor :email
  def initialize(email)
    @email = email
  end

  def send(to)
    # TODO: want to log here
    logEmail(to)
    @email.send(to)
  end

  def logEmail(to)
    puts ("from: #{@email.headers[:from]}, to: #{to}, subject: #{@email.headers[:subject]}")
  end 
end 

# Don't change m1
m1 = Email.new(
  {:subject => "IBM meeting", :from => "gary@dri.com"},
  "I'm gonna miss that meeting, I'm going flying instead."
)

m1.send("chris@example.com")

# Don't change m2
m2 = Email.new(
  {:subject => "Hawaiian Shirt Friday", :from => "lumbergh@initech.com"},
  "Don't forget Friday is Hawaiian shirt Friday."
)

m2.send("pat@example.com")

# TODO: Only add logging for the `m3` instance, not the others
m3 = Email.new(
  {:subject => "New game", :from => "kevin@flynnsarcade.com"},
  "Finished Space Paranoids! Come by and play it!"
)

m3 = LoggingEmail.new(m3)
m3.send("leslie@example.com")

# Wrap class method: since the m3 instance is already an instance of the Email class; I then made it an instance of the LoggingEmail class 
#and passing it to the LoggingEmail class to connect the two classes. 