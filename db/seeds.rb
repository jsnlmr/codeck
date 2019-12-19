require 'faker'

Admin = User.create(username: 'admin', password: 'admin', zipcode: 20743)
Test = User.create(username: 'test', password: 'test', zipcode: 22204)
Test2 = User.create(username: 'test2', password: 'test2', zipcode: 22191)