local function mathjs(exp)
  local url = 'http://api.mathjs.org/v1/'
  url = url..'?expr='..URL.escape(exp)
  local b,c = http.request(url)
  local text = nil
  if c == 200 then
    text = '= '..b
  
  elseif c == 400 then
    text = b
  else
    text = 'خطا'
  end
  return text
end

local function run(msg, matches)
  return mathjs(matches[1])
end

return {
  description = "ماشین حسابی در خدمت شما",
  usage = "calc (formulas) : ex.formulas (3+7)*(2^3)/5",
  patterns = {
    "^calc (.*)$"
  },
  run = run
}
