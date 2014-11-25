class Encryptor
	def cipher(rotation)
		characters = (' '..'z').to_a
		rotated_characters = characters.rotate(rotation)
		Hash[characters.zip(rotated_characters)]
  end

  def encrypt_letter(letter,rotation)
  	cipher_for_rotation = cipher(rotation)
  	cipher_for_rotation[letter]
  end

  def encrypt(string,rotation)
  	letters = string.split("")

  	results = []
  	letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,rotation) #rotation#
  		results.push(encrypted_letter)
  	end

  	results.join
  end

  def decrypt_letter(letter,rotation)
  	cipher_for_rotation = cipher(rotation)
  	cipher_for_rotation[letter]
  end

  def decrypt(string,rotation)
  	letters = string.split("")

  	results = []
  	letters.collect do |letter|
  		encrypted_letter = encrypt_letter(letter,-rotation) #-rotation#
  		results.push(encrypted_letter)
  	end

  	results.join
  end
  def encrypt_file(filename, rotation)
  	input = File.open(filename, "r")
  	x = input.read
  	x.rewind
  	x = encrypt(x, rotation)
  	output = File.open("output_file", "w")
  	output.write(x)
  	#output_filename = sample.txt.encrypted.gsub("encrypted", "decrypted")
  	#out.write
  	#out.close 
  end
  	# 1.	Create the file handle to the input file
  	# 2.	Read the text of the input file
  	# 3.	Encrypt the text
  	# 4.	Create a name for the output file
  	# 5.	Create an output file handle
  	# 6.	Write out the text
  	# 7.	Close the file
end

