User.create! name: "admin", email: "admin@admin.com", admin: true,
  password: "foobar", password_confirmation: "foobar", role: "supervisor"
User.create! name: "Vinh2", email: "vinh2@gmail.com", admin: true,
  password: "123456", password_confirmation: "123456"
User.create! name: "user", email: "user@user.com", admin: true, role: "trainee",
  password: "foobar", password_confirmation: "foobar"

5.times do |n|
  Course.create! name: "Course-#{n+1}", description: "Traning course"
end

5.times do |n|
  Subject.create! name: "Subject-#{n+1}", description: "Traning subject"
end

5.times do |n|
  Task.create! name: "Task-#{n+1}"
end

5.times do |n|
  CourseSubject.create! course_id: 1, subject_id: n+1
end
5.times do |n|
  CourseSubject.create! course_id: 2, subject_id: n+1
end
5.times do |n|
  CourseSubject.create! course_id: 3, subject_id: n+1
end
5.times do |n|
  CourseSubject.create! course_id: 4, subject_id: n+1
end
5.times do |n|
  CourseSubject.create! course_id: 5, subject_id: n+1
end

5.times do |n|
  UserSubject.create! user_id: 1, course_subject_id: n+1
end
5.times do |n|
  UserSubject.create! user_id: 2, course_subject_id: n+1
end

3.times do |n|
  UserTask.create! user_subject_id: 1, course_subject_task_id: n+1
end
3.times do |n|
  UserTask.create! user_subject_id: 2, course_subject_task_id: n+1
end

5.times do |n|
  CourseSubjectTask.create! course_subject_id: 1, task_id: n+1
end
5.times do |n|
  CourseSubjectTask.create! course_subject_id: 2, task_id: n+1
end

5.times do |n|
  10.times do |m|
    Task.create! subject_id: n+1,
      name: "Task-#{m+1}",
      content: Faker::Lorem.paragraphs(rand(2..8)),
      modify: false
  end
end
