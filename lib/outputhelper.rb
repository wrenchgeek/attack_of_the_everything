module OutputHelper
	def save_output(output_array)
		html = File.open(path_to_template).read
		output_array.push(html)
	end
end
