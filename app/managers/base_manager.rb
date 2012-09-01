class BaseManager < Struct.new(:listener)
  def method_missing(method, *args, &block)
    listener.send(method, *args, &block)
  end
end
