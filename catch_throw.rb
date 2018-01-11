#1
word_list = File.open("wordlist")
catch (:done) do
result = []
while line = word_list.gets
	word = line.chomp
	throw :done unless word =~ /^\w+$/
	result << word
end
puts result.reverse
end

#1.1
word_list = File.open("owrdlist")
word_in_error = catch(:doen) do
	result = []
	while line = word_list.gets
	throw(:done, word) unless word =~ /^\w+$/
	result << word
end
if word_in_error
puts "Failed: '#{word_in_error}' found, but a word was expected"
end
#=> Failed: '*wow*' found, but a word was expected

#3
def prompt_and_get(prompt)
  print prompt
  res = readline.chomp
  throw :quit_requested if res == "!"
  res
end

catch :quir_requested do
  name = prompt_and_get("Name: ")
  age  = prompt_and_get("Age: ")
  sex  = prompt_and_get("Sex: ")
  #...
end

