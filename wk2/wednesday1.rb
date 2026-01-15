class EmailLogger
  def log(to, headers, body)
    puts (" from: #{headers[:from]}, to: #{to}, subject: #{headers[:subject]}")
  end
end


class Email 
  def initialize(headers, body, logger)
    @headers = headers
    @body = body
    @server = connect_to_mail_server()
    @logger = logger
  end

  def send(to)
    # TODO: want to log here
    @logger.log(to, @headers, @body)
    construct_and_send_email(@server, to, @headers, @body)
  end

  def connect_to_mail_server
    :fake_server
  end

  def construct_and_send_email(server, to, headers, body)
    :fake_send_email
  end

end

l = EmailLogger.new

m = Email.new(
  {:subject => "Hey!", :from => "beej@beej.us"},
  "How's it going? Have you heard the latest gossip?", l
)

m.send("chris@example.com")

#sprout class method. Created a class called EmailLogger. An instance of the class is passed to Email class
#through an instance of Email. We can test EmailLogger this way because it doesnt change the function of the Email class to
#add a new class; even though the Email class uses the EmailLogger class for the log put statement.