class Singleton

  @singleton_object = new

  private_class_method :new

  def self.create_object
    if @singleton_object.nil?
      @singleton_object = Singleton.new
    else
      return @singleton_object
    end
  end

  def self.get_object
    return @singleton_object
  end

  private
  def initialize
    @singleton_object
  end

end
