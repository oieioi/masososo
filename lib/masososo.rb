# frozen_string_literal: true

require "masososo/version"
require "masososo/similar_char_sets"
require "masososo/indexer"

module Masososo
  class Error < StandardError; end

  class << self
    def similar_chars(char, including_self: false, **)
      raise 'A character instead of a string' if char.size != 1

      if including_self
        @@similar_char_index_including_self[char] || [char]
      else
        @@similar_char_index[char] || [char]
      end
    end

    def similar_string(str, including_self: true, **)
      str.chars.map { |char| similar_chars(char, including_self: including_self).sample }.join('')
    end

    @@similar_char_index = Indexer.index(SIMILAR_CHAR_SETS, false)
    @@similar_char_index_including_self = Indexer.index(SIMILAR_CHAR_SETS, true)
  end
end

require 'masososo/core_ext'
