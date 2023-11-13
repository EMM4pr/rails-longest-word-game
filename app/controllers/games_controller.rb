class GamesController < ApplicationController
  def new
    # Lookup table of lowercase letters.
    @letters = []
    random_letters = ('a'..'z').to_a.sample(10)
    random_letters.each do |letter|
      @letters << letter
    end

    @word = params[:word]
    puts 'Congrats!' if url_exist?("https://api.dictionaryapi.dev/api/v2/entries/en/#{@word}")
  end
end
