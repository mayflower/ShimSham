require 'bcrypt'

role = Role.create({ 'name' => 'admin' })
user =  User.create({
                'email' => 'admin1@shimsham.com',
                'password' => BCrypt::Password.create('password')
            })

user.roles=[role]