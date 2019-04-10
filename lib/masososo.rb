require "masososo/version"

module Masososo
  class Error < StandardError; end

  class << self
    def similar_chars(char, including_self: false, **)
      raise 'A character instead of a string' if char.size != 1

      if including_self
        SIMILAR_CHAR_INDEX_INCLUDING_SELF[char] || [char]
      else
        SIMILAR_CHAR_INDEX[char] || [char]
      end
    end

    def similar_string(str, including_self: true, **)
      str.chars.map { |char| similar_chars(char, including_self: including_self).sample }.join('')
    end

    private

    SIMILAR_CHAR_SETS = [
      %w[シ ツ ミ],
      %w[ソ リ ン],
      %w[ソ リ い],
      %w[ク ワ],
      %w[ケ サ],
      %w[ア マ],
      %w[ヌ ヲ],
      %w[ヌ ス],
      %w[ユ コ],
      %w[ヘ へ],
      %w[夕 タ],
      %w[七 セ せ],
      %w[ゐ み],
      %w[八 ハ ル],
      %w[し レ],
      %w[ニ 二],
      %w[ｼ ﾂ ﾐ],
      %w[ｿ ﾘ ﾝ],
      %w[ｸ ﾜ 7],
      %w[ｹ ｻ],
      %w[ｱ ﾏ],
      %w[ﾙ ﾊ],
      %w[ﾇ ｦ],
      %w[ﾇ ｽ],
      %w[ｽ 7],
      %w[4 ﾑ],
      %w[ﾕ ｺ],
      %w[ﾞ ﾟ],
    ]

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

    SIMILAR_CHAR_INDEX = indexanize(SIMILAR_CHAR_SETS, false)
    SIMILAR_CHAR_INDEX_INCLUDING_SELF = indexanize(SIMILAR_CHAR_SETS, true)
  end
end

class String
  def similar_string(opt = {})
    Masososo.similar_string(self, opt)
  end
  alias :masososo :similar_string

  def similar_chars(opt = {})
    Masososo.similar_chars(self, opt)
  end
end
