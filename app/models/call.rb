class Call < ActiveRecord::Base

	def obfuscated_secret
		secret[0..2] + secret[3..-1].gsub(/./, '*')
	end

end
