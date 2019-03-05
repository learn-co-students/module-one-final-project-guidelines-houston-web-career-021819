User.destroy_all
Subject.destroy_all

willa_mae = User.create(name: "Willa Mae", dob: Date.new(1954,4,3))
bertha_jerkins = User.create(name: "Bertha Jenkins", dob: Date.new(1959,9,21))

knitting = Subject.create(subject: "Knitting")
reading = Subject.create(subject: "Reading")

interest1 = Interest.create(user_id: willa_mae.id, subject_id: knitting.id)
interest2 = Interest.create(user_id: bertha_jerkins.id, subject_id: knitting.id)
