CodePlusPLus

===

	This a lightweight Ruby Class to Count Lines of Code via CLI
--

What's a Line Of Code?

	A line of code is whatever line that is not an empty line, a line starting with #,
	or whatever in between begind and end, like
	=begin+
	.
	.
	.
	=end

HOW TO USE

	- Just import code_plus_plus.rb into your local folder and user
	require_relative to use it in your ouwn script.


	- Create e new Class and pass the ARGV variable to the .new() method

	- puts the new object and voila!

		counter = CodePlusPlus.new(ARGV.first)

		puts counter

--

Whant to test it?

	- just open a terminal/console/shell and type

	- ruby your_caller_script.rb your_script_to_count.rb

	- The program will output X LOC