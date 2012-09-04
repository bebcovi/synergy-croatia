class String
  def prepend_icon(name)
    %(<i class="icon-#{name}"></i> <span class="text">#{self}</span>).html_safe
  end

  def append_icon(name)
    %(<span class="text">#{self}</span> <i class="icon-#{name}"></i>).html_safe
  end
end

class Object
  def not_in?(collection)
    not in?(collection)
  end
end

require 'pp'
require 'stringio'

module Kernel
  private
  def pp_s(*objs)
      s = StringIO.new
      objs.each {|obj|
        PP.pp(obj, s)
      }
      s.rewind
      s.read
  end
  module_function :pp_s
end
