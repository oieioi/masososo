# frozen_string_literal: true

class String
  # Return the string replaced similar-looking chars randomly.
  #
  #     'ﾘﾘﾘﾘﾘﾘﾘﾘﾘﾝ'.typo
  #     # => "ｿﾘﾝｯﾘﾘﾘｯﾝｿ"
  #
  # Setting <tt>frequency: 0</tt> disables typo. Default value is <tt>0.5</tt>.
  #
  #     'ﾘﾘﾘﾘﾘﾘﾘﾘﾘﾝ'.typo(frequency: 0)
  #     # => "ﾘﾘﾘﾘﾘﾘﾘﾘﾘﾝ"
  #
  #     'ﾘﾘﾘﾘﾘﾘﾘﾘﾘﾝ'.typo(frequency: 1.0)
  #     # => "ｿｿﾝｯｿｿｿｯﾝﾘ"
  def typo(options = {})
    Masososo.similar_string(self, options)
  end
  alias masososo typo

  # Returns similar chars.
  #
  #     'ｿ'.similar_chars
  #     # => ["ﾘ", "ﾝ"]
  #
  #     'ｿ'.similar_chars(including_self: true)
  #     # => ["ｿ", "ﾘ", "ﾝ"]
  def similar_chars(options = {})
    Masososo.similar_chars(self, options)
  end
end
