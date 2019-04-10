# frozen_string_literal: true

module Masososo
  module SimilarCharSets
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
      %w[ﾞ ﾟ]
    ].map(&:freeze).freeze
  end
end
