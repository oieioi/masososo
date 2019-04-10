class String
  # Returns the string replaced similar chars randomly.
  #
  #     'ﾏﾘﾘﾝ･ﾏﾝｿﾝ'.masososo
  #     # => "ﾏｿｿｿ･ﾏｿｿｿ" or "ﾏﾝﾝﾝ･ﾏｿｿﾘ" or ...
  def similar_string(opt = {})
    Masososo.similar_string(self, opt)
  end
  alias :masososo :similar_string

  # Returns similar chars.
  #
  #     'ｿ'.similar_chars
  #     # => ["ﾘ", "ﾝ"]
  #
  #     'ｿ'.similar_chars(including_self: true)
  #     # => ["ｿ", "ﾘ", "ﾝ"]
  def similar_chars(opt = {})
    Masososo.similar_chars(self, opt)
  end
end
