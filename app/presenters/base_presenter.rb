class BasePresenter
  def initialize(object, template)
    @object = object
    @template = template
  end

  def self.presents(name)
    define_method(name) do
      @object
    end
  end

  def method_missing(method, *args, &block)
    if @object.respond_to?(method)
      @object.send(method, *args, &block)
    elsif @template.respond_to?(method)
      @template.send(method, *args, &block)
    else
      super
    end
  end
end
