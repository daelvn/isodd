-- script that generates the isodd.lua module

local indentation  = 1      -- current level of indentation
local endsin       = 8      -- increase when number ends in...
local maxnum       = 177013 -- max number supported by the library
local apikey       = 3      -- api key required to use the function
local undocumented = 5      -- number is unknnown if it ends in...

local instring = " "

print("-- isodd.lua")
print("-- automatically generated by make-isodd.lua")
print("-- indentation: " .. tostring(indentation))
print("-- endsin: " .. tostring(endsin))
print("-- maxnum: " .. tostring(maxnum))
print("-- apikey: [REDACTED]")
print("local function isOdd(n,apikey)")
print(instring:rep(math.floor(indentation)) .. "if apikey ~= " ..tostring(apikey) .. " then error('Argument #2 has to be an API key. Please contact your isodd.lua administrator') end")
print(instring:rep(math.floor(indentation)) .. "if n == 0 then return false")

for i = 1, maxnum-1 do
  if tostring(i):match(tostring(endsin).."$") then
    indentation = indentation + 0.5
  end
  if tostring(i):match(tostring(undocumented).."$") then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then")
    print(instring:rep(math.floor(indentation)) .. "  print 'hi. ummmm we dont have this number in our database. that\\\'s odd. could you tell us if its odd?'")
    print(instring:rep(math.floor(indentation)) .. "  io.read()")
    print(instring:rep(math.floor(indentation)) .. "  print 'ohhhhh gotcha. thanks bro.'")
    print(instring:rep(math.floor(indentation)) .. "  print 'this result will only be added for this session. if you want to add it permanently open a PR at https://github.com/daelvn/isodd/pulls'")
    print(instring:rep(math.floor(indentation)) .. "  return true")
  elseif i == 42 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return 'everything'")
  elseif i == 69 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return 'nice'")
  elseif i == 80 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .. " then error 'An internet connection is required to perform this operation.'")
  elseif i == 413 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return 'https://www.homestuck.com/story/4109'")
  elseif i == 420 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return 'blaze it'")
  elseif i == 666 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then error 'Attempt to communicate with Satan'")
  elseif i == 1337 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return '1337 H4X0R'")
  elseif i == 4600 then
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then error 'Attempt to access classified information'")
  else
    print(instring:rep(math.floor(indentation)) .. "elseif n == " .. tostring(i) .." then return " .. ((i % 2 ~= 0) and "true" or "false"))
  end
end

print(instring:rep(math.floor(indentation)) .. "else return ".. ((maxnum % 2 ~= 0) and "true" or "false"))
print(instring:rep(math.floor(indentation)) .. "end end")
print(instring:rep(math.floor(indentation)) .. "return isOdd")