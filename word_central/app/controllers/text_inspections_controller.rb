class TextInspectionsController < ApplicationController
	def new
	render "new"	
	end

	def create
    @text = params[:text_inspection][:user_text]
  	
  	words = @text.split(" ")
  	@word_count = words.length
  	
  	words_count = {}
  	words.each do |word|
#aqui preguntamos si el hash tiene la 
#key word, el metodo es: hash.has_key?(word)
  		if words_count.has_key?(word.to_sym)
  		words_count[word.to_sym] += 1
  		else
  		words_count[word.to_sym] = 1
  		end
  	end
  	@order_words = words_count.sort_by{|key,value| value}.reverse
	
	@reding_time = (@word_count / 275.00)* 60
	
	render "results"

	end
end


