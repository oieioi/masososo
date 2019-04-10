# frozen_string_literal: true

module Masososo
  class Indexer
    # rubocop:disable Lint/ShadowingOuterLocalVariable
    def self.index(sets, including_self)
      sets.reduce({}) do |indexes, chars|
        chars.each_with_object(indexes) do |char, indexes|
          adding = including_self ? chars.dup : (chars - [char])

          if indexes[char].nil?
            indexes[char] = adding
          else
            indexes[char].concat(adding).uniq!
          end
        end
      end
    end
    # rubocop:enable Lint/ShadowingOuterLocalVariable
  end
end
