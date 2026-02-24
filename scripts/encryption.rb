# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password = "123456"
encrypted_pass = BCrypt::Password.create("123456")
puts encrypted_pass

# 2. prepare encrypted string for testing
re_encrypted_pass = BCrypt::Password.new(encrypted_pass)
puts re_encrypted_pass

# 3. test secret against prepared encrypted string
user_entered_password == "654321"
puts BCrypt::Password.new(encrypted_pass) == "123456"
