String  = {}

String.endsWith = function (s, suffix)
	return s:sub(-string.len(suffix)) == suffix
end

String.new = function (s, count)
	local result = ""
	for i = 1, count, 1 do
		result = result .. s
	end
	return result
end