#Denise Funk
#Singleton Pattern Exercise. To do the singleton pattern you need to make the new method private and create a class method called instance. In instance 
#you create only one instance of the Sky class. Also, the @@ is used in the singleton pattern because it represents attributes of a class whereas @ represents attributes of an object. Since the 
#singleton pattern is all about creating one instance/object of a class the initialize method only stores attributes for one object.
class Sky
  private_class_method :new 
  @@instance = nil
  @@instance_count = 0
  def self.instance
    if @@instance.nil?
      @@instance = new
      @@instance_count += 1
    end
    @@instance
  end

  def to_s
    "I am sky object #{@id} of #{@@instance_count} total instances."
  end

  def initialize
    @id = 1
  end
end

sky = Sky.instance
puts sky.to_s
another_sky = Sky.instance
puts another_sky.to_s
blood_red_sky = Sky.instance
puts blood_red_sky.to_s
pink_sky = Sky.instance
puts pink_sky.to_s





