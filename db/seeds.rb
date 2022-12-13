# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
puts "Destroying everything in the database!"
TeacherComment.destroy_all
Badge.destroy_all
UserResponse.destroy_all
User.destroy_all
Classroom.destroy_all
ActivityQuestion.destroy_all
Activity.destroy_all

puts "Creating classrooms!"
class1 = Classroom.create({ name: "Class 1", date: Date.new(2023, 2, 21) })
class2 = Classroom.create({ name: "Class 2", date: Date.new(2023, 2, 22)})


puts "Creating users."
teacher1 = User.create({
                          first_name: "John",
                          last_name: "Smith",
                          user_name: "johnsmith",
                          email: "a@a.a",
                          password: "aaa111",
                          teacher: true,
                          classroom: class1
                        })
student1 = User.create({
                          first_name: "Jim",
                          last_name: "Halpert",
                          user_name: "jimhalpert",
                          email: "c@c.c",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
student2 = User.create({
                          first_name: "Doug",
                          last_name: "Jones",
                          user_name: "dougjones",
                          email: "d@d.d",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
student3 = User.create({
                          first_name: "Mark",
                          last_name: "Hamil",
                          user_name: "markhamil",
                          email: "b@b.b",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })

puts "Creating activities!"
activity1 = Activity.create({
                              title: "Theatre Quiz 1",
                              activity_type: "Quiz",
                              question_amount: 3,
                              level: 1
                            })
activity2 = Activity.create({
                              title: "Theatre Quiz 2",
                              activity_type: "Quiz",
                              question_amount: 3,
                              level: 2
                            })
activity3 = Activity.create({
                              title: "Theatre Match Game",
                              activity_type: "Match",
                              question_amount: 3,
                              level: 3
                            })

puts "Creating activity questions!"
act_question1 = ActivityQuestion.create({
                                          question_text: "What is the lead's name?",
                                          response_text: "Marky Mark",
                                          activity: activity1
                                        })
act_question2 = ActivityQuestion.create({
                                          question_text: "What is the villain's name?",
                                          response_text: "Evil Tom",
                                          activity: activity1
                                        })
act_question3 = ActivityQuestion.create({
                                          question_text: "What is the love's name?",
                                          response_text: "Travissimo",
                                          activity: activity1
                                        })
act_question4 = ActivityQuestion.create({
                                          question_text: "What is the lead's name?",
                                          response_text: "Fat Mike",
                                          activity: activity2
                                        })
act_question5 = ActivityQuestion.create({
                                          question_text: "What is the villain's name?",
                                          response_text: "Smelly",
                                          activity: activity2
                                        })
act_question6 = ActivityQuestion.create({
                                          question_text: "What is the love's name?",
                                          response_text: "Melvin",
                                          activity: activity2
                                        })

puts "Creating badges!"
badge1 = Badge.create({
                        status: 1,
                        activity: activity1,
                        user: student1
                      })
badge2 = Badge.create({
                        status: 2,
                        activity: activity2,
                        user: student1
                      })
badge3 = Badge.create({
                        status: 1,
                        activity: activity1,
                        user: student2
                      })
badge4 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: student2
                      })
badge5 = Badge.create({
                        status: 3,
                        activity: activity1,
                        user: student3
                      })
badge6 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: student3
                      })

puts "Creating user responses!"
response1 = UserResponse.create({
                                  user: student1,
                                  activity_question: act_question4,
                                  text: "Mat Fike",
                                  correct: false
                                  })
response2 = UserResponse.create({
                                  user: student1,
                                  activity_question: act_question5,
                                  text: "Melly",
                                  correct: false
                                  })
response3 = UserResponse.create({
                                  user: student1,
                                  activity_question: act_question6,
                                  text: "Melvin",
                                  correct: true
                                  })
response4 = UserResponse.create({
                                  user: student2,
                                  activity_question: act_question4,
                                  text: "Some guy",
                                  correct: false
                                  })
response5 = UserResponse.create({
                                  user: student2,
                                  activity_question: act_question5,
                                  text: "Some other guy",
                                  correct: false
                                  })
response6 = UserResponse.create({
                                  user: student2,
                                  activity_question: act_question6,
                                  text: "Yet another guy",
                                  correct: false
                                  })
response7 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
response8 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
response9 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
response10 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question4,
                                  text: "Fat Mike",
                                  correct: true
                                  })
response11 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question5,
                                  text: "Smelly",
                                  correct: true
                                  })
response12 = UserResponse.create({
                                  user: student3,
                                  activity_question: act_question6,
                                  text: "Melvin",
                                  correct: true
                                  })

puts "Creating teacher comments!"
comment1 = TeacherComment.create({
                                  text: "Get started!",
                                  user_response: response1,
                                  teacher: teacher1
                                })
comment2 = TeacherComment.create({
                                  text: "Very Okay!",
                                  user_response: response2,
                                  teacher: teacher1
                                })
comment3 = TeacherComment.create({
                                  text: "Get started!",
                                  user_response: response5,
                                  teacher: teacher1
                                })
comment4 = TeacherComment.create({
                                  text: "Very bad!",
                                  user_response: response6,
                                  teacher: teacher1
                                })
comment5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: response10,
                                  teacher: teacher1
                                })
comment6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: response11,
                                  teacher: teacher1
                                })
