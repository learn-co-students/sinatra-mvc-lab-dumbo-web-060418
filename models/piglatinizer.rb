class PigLatinizer

	attr_accessor :pig_text

	def initialize

	end

	def piglatinize(text)
		array = text.split(" ")
		pig_array = array.map do |word|

			part = word.partition(/[aeiouAEIOU]/)
			front = part.shift
			case front[0]
			when 'a', 'e', 'i', 'o', 'u', nil
				part.push(front, "way")
			else
				part.push(front, "ay")
			end
			part.join
		end
		return pig_array.join(" ")
	end
end



# a = "cloming"
# part = partition(/[aeiouAEIOU]/) => ["cl", "o", "ming"]
# front = part.shift => ["c"]
# part.push(front, "ay")
# part.join

