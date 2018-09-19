class Alouette
  def self.lines_for_verse(verse_num)
    verse_lines = ["Et le dos!","Et la queue!","Et les pattes!","Et les ailes!","Et le cou!","Et les yeux!", "Et le bec!", "Et la tête!"]

    return verse_lines[7-verse_num..7]
  end

  #["Et les yeux!", "Et le bec!", "Et la tête!"]
  def self.verse(verse_num)
  end

  def self.sing
  end
end
