# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

[ "Project X" ].each do |board_name|
  board = Board.find_or_create_by!(name: board_name)

  [ "To Do", "Doing", "Completed" ].each do |list_name|
    list = List.find_or_create_by!(name: list_name, board_id: board.id)

    [ "Prepare Presentation Slides for Friday", "Implement CRM System Integration" ].each do |task|
      Task.find_or_create_by!(title: task, list_id: list.id)
    end
  end
end

if Rails.env.development?
      unless User.find_by(email: 'admin@huddle.localhost')
        User.create!(
          email: 'admin@huddle.localhost',
          password: 'password',
          password_confirmation: 'password'
        )
        puts 'Default admin user created.'
      end
end
