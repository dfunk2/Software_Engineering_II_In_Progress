require "minitest/autorun"

class DatabaseConnection
  # Pretend this is a real DB object
  def connect 
    sleep(10)
    raise "Database connection timed out"
  end

  def add_message(m)
    sleep(10)
    raise "Database insert timed out"
  end
end

class Message
  attr_accessor :text, :sent_message

  def initialize(text)
    @db = DatabaseConnection.new
    @text = text
    @sent_message = nil
  end

  def send()
    mssage = MessageSender.new()
    mssage.send()
  end
end

class TestMessage < MiniTest::Test
  def test_message
    m = MessageSender.new(m, db)
    m.send()
    assert_equal "Hi there", m.sent_message
  end
end

class MessageSender 
  def initialize(message, db)
    @message = message
    @db = db
  end 

  def send()
    @db.connect
    @db.add_message(@message.text)
    @sent_message.sent_message = @message.text
  end 
end