require "masososo/version"
require "masososo/similar_char_sets"

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

    private

    def self.indexanize(sets, including_self)
      sets.reduce({}) do |indexes, chars|
        chars.reduce(indexes) do |indexes, char|
          #byebug if %w[ｸ ｽ 7].include? char
          adding = including_self ?  chars.dup : (chars - [char])

          if indexes[char].nil?
            indexes[char] = adding
          else
            indexes[char].concat(adding).uniq!
          end

          indexes
        end
      end
    end

    @@similar_char_index = indexanize(SimilarCharSets::SIMILAR_CHAR_SETS, false)
    @@similar_char_index_including_self = indexanize(SimilarCharSets::SIMILAR_CHAR_SETS, true)
  end
end

require 'masososo/core_ext'
