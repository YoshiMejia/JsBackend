# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pushups = Workout.create(name:'pushups', description:'hands on floor, push', sets: 3, reps: 10, completed: 0, planner_id: 1)
jumpingJacks = Workout.create(name:'jumping jacks', description:'jump and wave arms around', sets: 3, reps: 20, completed: 0, planner_id: 1)
jog = Workout.create(name:'jog', description:'run for 10 minutes', sets: 3, reps: 1, completed: 0, planner_id: 1)
crunches = Workout.create(name:'crunches', description:'lay on back and bring knees to chest', sets: 3, reps: 15, completed: 0, planner_id: 1)
abExtensions = Workout.create(name:'abdominal extensions', description:'lay on back, knees to chest and then push them back out', sets: 3, reps: 15, completed: 0, planner_id: 1)
romanian = Workout.create(name:'romanian deadlift', description:'bend over and pick up barbel', sets: 4, reps: 8, completed: 0, planner_id: 1)
# dummy for ensuring validation works: crawl = Workout.create(name:'crawl', description:'crawl on ground', sets: 0, reps: 0, completed: 0, planner_id: 1)

cardioDay = Planner.create(name:'cardio day')