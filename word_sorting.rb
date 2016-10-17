def sorting_method (str)
	array=str.split(/\W/)
	puts array.sort_by(&:downcase)
end
sorting_method("Fools fall for foolish follies.")