class Alouette
  def self.lines_for_verse(verse_num)
    verse_lines = ["Et le dos!","Et la queue!","Et les pattes!","Et les ailes!","Et le cou!","Et les yeux!", "Et le bec!", "Et la tête!"]
    return verse_lines[7-verse_num..7]
  end

  #["Et les yeux!", "Et le bec!", "Et la tête!"]
  def self.verse(verse_num)

    verse_lines = lines_for_verse(verse_num)

    new_line = lines_for_verse(verse_num).first
    new_line = new_line.slice(3..new_line.length-2)

    full_verse = ""

    2.times do
      full_verse << "Je te plumerai #{new_line}.\n"
    end

    verse_lines.length.times do |index|
      2.times do
        full_verse << "#{verse_lines[index]}\n"
      end
    end

    2.times do
      full_verse << "Alouette!\n"
    end

    full_verse << "A-a-a-ah"
    return full_verse

  end

  def self.sing

    song=""


    8.times do |verse|
        song <<"Alouette, gentille alouette,\n"
        song <<"Alouette, je te plumerai.\n\n"
        song << "#{verse(verse)}\n\n"
    end

    song <<"Alouette, gentille alouette,\n"
    song <<"Alouette, je te plumerai."

    return song
    #here should be a blank line between verses and refrains. The value returned should return a string.
  end
end
