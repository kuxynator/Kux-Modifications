-- Version utility
-- Changed: 2020-11-30

local splitString = function (text)
	local list = {}; local pos = 1
	while 1 do
		local first, last = string.find(text, "%.", pos)
		if first then
		    local d = string.sub(text, pos, first-1)
			table.insert(list, tonumber(d))
			pos = last+1
		else
		    local d = string.sub(text, pos)
			table.insert(list, tonumber(d))
		    break
		end
	end
	return list
end

local version = {}

version.compare = function (versionA, versionB)
	local a = splitString(versionA)
	local b = splitString(versionB)
	for i = 1, 3, 1 do
		local ax=0
		local bx=0
		if i <= #a then ax = a[i] end
		if i <= #b then bx = b[i] end
		if ax<bx then return -1 end
		if ax>bx then return 1 end
	end
	return 0
end

Version = version -- make global available
return version

--[[ Tests
print(Version.compare("1.0.0","1.0.0"))
print(Version.compare("1.0.0","1.0"))
print(Version.compare("1.0.0","1"))
print(Version.compare("1.0","1.0.0"))
print(Version.compare("1","1.0.0"))
print(Version.compare("1.0","1.0"))
print(Version.compare("1","1"))

print(Version.compare("1.0.1","1.0.0"))
print(Version.compare("1.1.0","1.0.0"))
print(Version.compare("2.0.0","1.0.0"))
print(Version.compare("1.0.1","1.0"))

print(Version.compare("1.0.0","1.0.1"))
print(Version.compare("1.0.0","1.1.0"))
print(Version.compare("1.0.0","2.0.0"))
print(Version.compare("1.0","1.0.1"))
]]