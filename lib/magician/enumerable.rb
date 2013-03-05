# Magician's extensions to the Enumerable class.
module Enumerable

  def comprehend &block
    block.nil? ? self : collect(&block).compact
  end

end
