# anedepami
Return similar katakana for example ソ and ン and リ


## Usage

```ruby
Anedapami.similar_chars(?ソ) 
# => ["ソ", "リ", "ン"]

Anedepami.panic('マリリン・マンソン')
# => マソソソ・マソソソ
# => マリリソ・マンソソ, etc...

```
