class Array
  def except(*elements)
    self.dup.tap { |ary| elements.flatten.each { |el| ary.delete(el) } }
  end
end
