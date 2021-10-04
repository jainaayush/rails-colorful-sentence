class Sentence < ApplicationRecord
  has_many :entities

  def formatted_view
    texts = entities.pluck(:text)
    sentence_string = ''
    
    description.split(' ').each do |word|
      if texts.include?(word)
        colour = "%06x" % (rand * 0xffffff)
        entity_type = entities.find_by(text: word).text_type
        sentence_string << " <span style='background-color: ##{colour};border-radius: 6px;padding: 6px;'> #{word}<strong> #{entity_type}</strong></span>"
      else
        sentence_string << " #{word}"
      end
    end
    sentence_string
  end
end
