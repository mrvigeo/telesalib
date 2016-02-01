do

function run(msg, matches)
  return "Slm, " .. matches[1]
  return "سلام, " .. matches[2]
end

return {
  description = "Says Hello to Someone", 
  usage = "Salam kon be  (name)",
  patterns = {
    "^salam kon be (.*)$",
    "^سلام کن به (.*)$"
  }, 
  run = run 
}

end
