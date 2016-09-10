# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 admin = User.create({ name: "admin", email: 'admin@gmail.com',
               password: 'password', password_confirmation: 'password' , admin: true})


 def copy_image_fixture(file_name, id)
  dir = Rails.root.join('public', 'uploads')
  Dir.mkdir(dir) unless File.directory?(dir)
  FileUtils.cp(file_name, dir.join(id.to_s))
end

 fixtures_path = Rails.root.join('app', 'assets', 'images', 'fixtures')

run = Post.create(descreption: 'dasasda')
copy_image_fixture(fixtures_path.join('run.jpg')

ga = Post.create(descreption: 'dasdada')
copy_image_fixture(fixtures_path.join('ga.jpg')

tigers = Post.create(descreption: 'dasdada')
copy_image_fixture(fixtures_path.join('tigers.jpg')

men = Post.create(descreption: 'dasdada')
copy_image_fixture(fixtures_path.join('men.jpg')
 

