# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project1 = Project.create!(name: "Project 1", description: "This is project 1.")

group1 = TicketGroup.create!(order: 1, name: "Group 1", project_id: project1.id)
group2 = TicketGroup.create!(order: 2, name: "Group 2", project_id: project1.id)

label1 = Label.create!(name: "Bug", color: "#f00", project_id: project1.id)
label2 = Label.create!(name: "Feature", color: "#0f0", project_id: project1.id)
label3 = Label.create!(name: "Improvement", color: "#00f", project_id: project1.id)

Ticket.create!(order: 1, title: "Ticket 1", description: "This is ticket 1.", ticket_group_id: group1.id, label_id: label1.id)
Ticket.create!(order: 2, title: "Ticket 2", description: "This is ticket 2.", ticket_group_id: group1.id, label_id: label2.id)
Ticket.create!(order: 1, title: "Ticket 3", description: "This is ticket 3.", ticket_group_id: group2.id, label_id: label3.id)
