# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# tarea 7.1

h = Blog.new
h.name = "Blog 1"
h.description = "descripcion nnn1"
h.save

h = Blog.new
h.name = "Blog 2"
h.description = "descripcion nnn2"
h.save

h = Blog.new
h.name = "Blog 3"
h.description = "descripcion nnn3"
h.save

h = Blog.new
h.name = "Blog 4"
h.description = "descripcion nnn4"
h.save

h = Blog.new
h.name = "Blog 5"
h.description = "descripcion nnn5"
h.save

puts "Blogs creados: #{Blog.all.count}"

p = Post.new
p.title = "Titulo 1"
p.content = "Contenidos nn1"
p.blog = Blog.where(name: "Blog 1").first
p.save

p = Post.new
p.title = "Titulo 2"
p.content = "Contenidos nn2"
p.blog = Blog.where(name: "Blog 1").first
p.save

p = Post.new
p.title = "Titulo 3"
p.content = "Contenidos nn3"
p.blog = Blog.where(name: "Blog 2").first
p.save

p = Post.new
p.title = "Titulo 4"
p.content = "Contenidos nn4"
p.blog = Blog.where(name: "Blog 2").first
p.save

p = Post.new
p.title = "Titulo 5"
p.content = "Contenidos nn5"
p.blog = Blog.where(name: "Blog 3").first
p.save

p = Post.new
p.title = "Titulo 6"
p.content = "Contenidos nn6"
p.blog = Blog.where(name: "Blog 3").first
p.save

p = Post.new
p.title = "Titulo 7"
p.content = "Contenidos nn7"
p.blog = Blog.where(name: "Blog 4").first
p.save

p = Post.new
p.title = "Titulo 8"
p.content = "Contenidos nn8"
p.blog = Blog.where(name: "Blog 4").first
p.save

p = Post.new
p.title = "Titulo 9"
p.content = "Contenidos nn9"
p.blog = Blog.where(name: "Blog 5").first
p.save

p = Post.new
p.title = "Titulo 10"
p.content = "Contenidos nn10"
p.blog = Blog.where(name: "Blog 5").first
p.save

puts "Post creados: #{Post.all.count}"

# tarea 7.3 crear mensajes

pp = Post.all.order("created_at asc").first

m = Message.new
m.post = pp
m.author = "Ricardo Beltran"
m.message = "mensajes nnnnnnnn1"
m.save

#puts m.errors.messages para encontar errores

m = Message.new
m.post = pp
m.author = "Ricardo Beltran 2"
m.message = "mensajes nnnnnnnn2"
m.save

puts "Mensaje: #{Message.all.count}"

puts "tarea 7.3 hecha"

#tarea 7.4 Obtener todas las publicaciones para el primer blog.

  puts Post.where(blog: Blog.where(name: "Blog 1").first).count

  puts "tarea 4 hecho"

  #Tarea 5 Obtener todas las publicaciones para el último blog (ordenadas por titulo en orden descendiente).

  puts Post.where(blog: Blog.where(name: "Blog 5").first).order("created_at desc")

  puts "tarea 5 hecho"

  # Tarea 6 Actualizar el título de la primera publicación.

  p = Post.all.first
  p.title = "nuevo titulo xxxxx"
  p.save
  puts Post.all.first.title
  puts "tarea 6 hecho"
  





