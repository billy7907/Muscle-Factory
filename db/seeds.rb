Group.create(name: 'Chest')
Group.create(name: 'Arm')
Group.create(name: 'Leg')
Group.create(name: 'Shoulder')
Group.create(name: 'Abs')

Exercise.create(name: 'Barbell Chest Bench', group_id: 1, approved:true)
Exercise.create(name: 'Dumbbell Chest Bench', group_id: 1, approved:true)
Exercise.create(name: 'Incline Barbell Bench', group_id: 1, approved:true)
Exercise.create(name: 'Incline Dumbbell Bench', group_id: 1, approved:true)
Exercise.create(name: 'Seated Machine Chest Press', group_id: 1, approved:true)
Exercise.create(name: 'Incline Bench Cable Fly', group_id: 1, approved:true)
Exercise.create(name: 'Machine Decline Press', group_id: 1, approved:true)
Exercise.create(name: 'Chest Dips', group_id: 1, approved:true)
Exercise.create(name: 'Incline Dumbbell Pull-Over', group_id: 1, approved:true)
Exercise.create(name: 'Pec-Deck Machine', group_id: 1, approved:true)

Exercise.create(name: 'Hammer Curl', group_id: 2, approved:true)
Exercise.create(name: 'Dumbbell Biceps Curl', group_id: 2, approved:true)
Exercise.create(name: 'EZ Bar Curl', group_id: 2, approved:true)
Exercise.create(name: 'Tricep Extension', group_id: 2, approved:true)
Exercise.create(name: 'Dumbbell Preacher Curl', group_id: 2, approved:true)
Exercise.create(name: 'EZ Bar Preacher Curl', group_id: 2, approved:true)
Exercise.create(name: 'Barbell Curl', group_id: 2, approved:true)
Exercise.create(name: 'Incline Dumbbell Curl', group_id: 2, approved:true)
Exercise.create(name: 'Incline Hammer Curl', group_id: 2, approved:true)
Exercise.create(name: 'Cross Body Hammer Curl', group_id: 2, approved:true)
Exercise.create(name: 'Concentration Curl', group_id: 2, approved:true)
Exercise.create(name: 'Skull Crusher', group_id: 2, approved:true)
Exercise.create(name: 'Cable Curl', group_id: 2, approved:true)
Exercise.create(name: 'Bench Dips', group_id: 2, approved:true)
Exercise.create(name: 'Dumbbell Skull Crusher', group_id: 2, approved:true)

Exercise.create(name: 'Barbell Squat', group_id: 3, approved:true)
Exercise.create(name: 'Leg Press', group_id: 3, approved:true)
Exercise.create(name: 'Barbell Lunge', group_id: 3, approved:true)
Exercise.create(name: 'Dumbbell Lunge', group_id: 3, approved:true)
Exercise.create(name: 'Dumbbell Walking Lunge', group_id: 3, approved:true)
Exercise.create(name: 'Leg Extensions', group_id: 3, approved:true)
Exercise.create(name: 'Standing Calf Raises', group_id: 3, approved:true)
Exercise.create(name: 'Lying Leg Curl', group_id: 3, approved:true)
Exercise.create(name: 'Seated Leg Curl', group_id: 3, approved:true)
Exercise.create(name: 'Hamstring Curl', group_id: 3, approved:true)
Exercise.create(name: 'Deadlift', group_id: 3, approved:true)
Exercise.create(name: 'Romanian Deadlift', group_id: 3, approved:true)
Exercise.create(name: 'Goblet Squat', group_id: 3, approved:true)

Exercise.create(name: 'Dumbbell Shoulder Press', group_id: 4, approved:true)
Exercise.create(name: 'Barbell Shoulder Press', group_id: 4, approved:true)
Exercise.create(name: 'Upright Barbell Row', group_id: 4, approved:true)
Exercise.create(name: 'Side Lateral Raise', group_id: 4, approved:true)
Exercise.create(name: 'Military Press', group_id: 4, approved:true)
Exercise.create(name: 'Seated Military Press', group_id: 4, approved:true)
Exercise.create(name: 'Upright Cable Row', group_id: 4, approved:true)
Exercise.create(name: 'Upright Barbell Row', group_id: 4, approved:true)
Exercise.create(name: 'Face Pull', group_id: 4, approved:true)
Exercise.create(name: 'Barbell Shrug', group_id: 4, approved:true)
Exercise.create(name: 'Dumbbell Shrug', group_id: 4, approved:true)
Exercise.create(name: 'Cable Lateral Raise', group_id: 4, approved:true)
Exercise.create(name: 'Arnold Press', group_id: 4, approved:true)

Exercise.create(name: 'Decline Crunch', group_id: 5, approved:true)
Exercise.create(name: 'Ab Crunch Machine', group_id: 5, approved:true)
Exercise.create(name: 'Standing Rope Crunch', group_id: 5, approved:true)
Exercise.create(name: 'Reverse Crunch', group_id: 5, approved:true)
Exercise.create(name: 'Cross-Body Crunch', group_id: 5, approved:true)
Exercise.create(name: 'Toe Toucher', group_id: 5, approved:true)
Exercise.create(name: 'Russian Twist', group_id: 5, approved:true)
Exercise.create(name: 'V-Ups', group_id: 5, approved:true)
Exercise.create(name: 'Knee Crunch', group_id: 5, approved:true)
Exercise.create(name: 'Leg Raise', group_id: 5, approved:true)
Exercise.create(name: 'Flutter Kick', group_id: 5, approved:true)
Exercise.create(name: 'Plank', group_id: 5, approved:true)
Exercise.create(name: 'Superman', group_id: 5, approved:true)
Exercise.create(name: 'Heal Touches', group_id: 5, approved:true)


User.create(first_name: 'Arnold ', last_name: 'Schwarzenegger', email:'arnold@gmail.com', password: '123')
Drill.create(user_id: 1, day_id: 0, exercise_id: 1, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 0, exercise_id: 2, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 0, exercise_id: 3, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 0, exercise_id: 4, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 0, exercise_id: 5, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 0, exercise_id: 6, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 1, exercise_id: 11, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 1, exercise_id: 12, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 1, exercise_id: 13, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 1, exercise_id: 14, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 1, exercise_id: 15, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 1, exercise_id: 16, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 2, exercise_id: 26, sets: 3, reps: 8)
Drill.create(user_id: 1, day_id: 2, exercise_id: 27, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 2, exercise_id: 28, sets: 3, reps: 8)
Drill.create(user_id: 1, day_id: 2, exercise_id: 29, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 2, exercise_id: 30, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 2, exercise_id: 31, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 3, exercise_id: 39, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 3, exercise_id: 40, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 3, exercise_id: 41, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 3, exercise_id: 42, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 3, exercise_id: 43, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 3, exercise_id: 44, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 4, exercise_id: 5, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 4, exercise_id: 6, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 4, exercise_id: 7, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 4, exercise_id: 8, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 4, exercise_id: 9, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 4, exercise_id: 10, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 5, exercise_id: 20, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 5, exercise_id: 21, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 5, exercise_id: 22, sets: 3, reps: 10)
Drill.create(user_id: 1, day_id: 5, exercise_id: 23, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 5, exercise_id: 24, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 5, exercise_id: 25, sets: 4, reps: 8)
Drill.create(user_id: 1, day_id: 6, exercise_id: 52, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 6, exercise_id: 53, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 6, exercise_id: 54, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 6, exercise_id: 55, sets: 4, reps: 10)
Drill.create(user_id: 1, day_id: 6, exercise_id: 56, sets: 3, reps: 8)
Drill.create(user_id: 1, day_id: 6, exercise_id: 57, sets: 3, reps: 8)

User.create(first_name: 'Dwayne ', last_name: 'Johnson', email:'rock@gmail.com', password: '123')
Drill.create(user_id: 2, day_id: 0, exercise_id: 1, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 0, exercise_id: 2, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 0, exercise_id: 3, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 0, exercise_id: 4, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 0, exercise_id: 5, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 0, exercise_id: 6, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 1, exercise_id: 11, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 1, exercise_id: 12, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 1, exercise_id: 13, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 1, exercise_id: 14, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 1, exercise_id: 15, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 1, exercise_id: 16, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 2, exercise_id: 26, sets: 3, reps: 8)
Drill.create(user_id: 2, day_id: 2, exercise_id: 27, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 2, exercise_id: 28, sets: 3, reps: 8)
Drill.create(user_id: 2, day_id: 2, exercise_id: 29, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 2, exercise_id: 30, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 2, exercise_id: 31, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 3, exercise_id: 39, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 3, exercise_id: 40, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 3, exercise_id: 41, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 3, exercise_id: 42, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 3, exercise_id: 43, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 3, exercise_id: 44, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 4, exercise_id: 5, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 4, exercise_id: 6, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 4, exercise_id: 7, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 4, exercise_id: 8, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 4, exercise_id: 9, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 4, exercise_id: 10, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 5, exercise_id: 20, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 5, exercise_id: 21, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 5, exercise_id: 22, sets: 3, reps: 10)
Drill.create(user_id: 2, day_id: 5, exercise_id: 23, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 5, exercise_id: 24, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 5, exercise_id: 25, sets: 4, reps: 8)
Drill.create(user_id: 2, day_id: 6, exercise_id: 52, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 6, exercise_id: 53, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 6, exercise_id: 54, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 6, exercise_id: 55, sets: 4, reps: 10)
Drill.create(user_id: 2, day_id: 6, exercise_id: 56, sets: 3, reps: 8)
Drill.create(user_id: 2, day_id: 6, exercise_id: 57, sets: 3, reps: 8)

User.create(first_name: 'Jay', last_name: 'Z', email:'jayz@gmail.com', password: '123')
Drill.create(user_id: 3, day_id: 0, exercise_id: 1, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 0, exercise_id: 2, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 0, exercise_id: 3, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 0, exercise_id: 4, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 0, exercise_id: 5, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 0, exercise_id: 6, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 1, exercise_id: 11, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 1, exercise_id: 12, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 1, exercise_id: 13, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 1, exercise_id: 14, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 1, exercise_id: 15, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 1, exercise_id: 16, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 3, exercise_id: 39, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 3, exercise_id: 40, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 3, exercise_id: 41, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 3, exercise_id: 42, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 3, exercise_id: 43, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 3, exercise_id: 44, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 4, exercise_id: 5, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 4, exercise_id: 6, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 4, exercise_id: 7, sets: 3, reps: 10)
Drill.create(user_id: 3, day_id: 4, exercise_id: 8, sets: 4, reps: 10)
Drill.create(user_id: 3, day_id: 4, exercise_id: 9, sets: 4, reps: 8)
Drill.create(user_id: 3, day_id: 4, exercise_id: 10, sets: 4, reps: 8)
