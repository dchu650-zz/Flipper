# encoding: utf-8
class FlipString < ActiveRecord::Base

  Chars = " abcdefghijklmnopqrstuvwxyz,.?!'()[]{}".split('')
  FlippedChars = " ɐqɔpǝɟƃɥıɾʞlɯuodbɹsʇnʌʍxʎz'˙¿¡,)(][}{".split('')
  WordDictionary = Hash[Chars.zip FlippedChars]
  def self.flip(text)
    text.downcase.reverse.split('').map do |char|
      WordDictionary[char]
    end.join ''
  end
end