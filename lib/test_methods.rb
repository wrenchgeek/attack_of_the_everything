# if Item.where(name: @input[1..@input.length].join(" ")).first == nil
# partial_recognition_array = []
# 	Item.all.each do |item|
# 		partial_check_array = []
# 		@input.each do |word|
# 			if item.name.include?(word)
# 				partial_check_array.push(word)
# 			end
# 		end
# 			if partial_check_array.length >= 2
# 				partial_recognition_array.push(item)
# 			end
# 	end
# 	partial_recognition_array.first
# end
