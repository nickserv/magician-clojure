# Magician's extensions to the Enumerable class.
module Enumerable

  def comprehend &block
    block.nil? ? self : map(&block).compact
  end

end
