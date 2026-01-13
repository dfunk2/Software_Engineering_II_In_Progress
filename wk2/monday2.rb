class Email
  def initialize(headers, body)
    @headers = headers
    @body = body
  end

  def send(to)
    # TODO: want to log here
    log(to)
    # send_email(to)
  end
end

  def log(to)
    puts (" from: #{@headers[:from]}, to: #{to}, subject: #{@headers[:subject]}")
  end

  def send_email(to)
    s = connect_to_mail_server()
    construct_and_send_email(s, to, @headers, @body)
    close_connection(s)
  end

m = Email.new(
  {:subject => "Hey!", :from => "beej@beej.us"},
  "How's it going? Have you heard the latest gossip?"
)
to = "chris@example.com"
m.send("chris@example.com")


class TestEmail < Email 
  def send_email(to)
  end
end 

e = TestEmail.new()
e.send()
# e.send_email()

#modify codebase by extracting offending code and putting into its own method so you can add new code and test it.
#this is the wrap method 