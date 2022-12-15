# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

# 2 classrooms, each with 1 teacher (2 total) and 8 students (16 total), all unique
# 8 activities:
# - 3 quizes, each with 8 questions, levels 1 to 3
# - 2 match games, with 4 questions, levels 2 and 3
# - 2 art/color game, 1 question, level 2 and 3
# - 1 review, 1 question, level 1
# 1 student has badges for 7 activities
# - 5 badges corrected, 1 reviewed, 1 started, 1 unavailable (review)
# - - corrected and reviewed have all answers completed, started have 4
# 2 students have badges for 5 activities
# - 2 badges corrected, 2 reviewed, 1 started, 1 available, 2 unavailable (review and quiz 3)
# - - corrected and reviewed have all answers completed, started have 4
# 4 students have badges for 3 activities
# - 1 badge corrected, 1 reviewed, 1 started, 2 available, 3 unavailable
# - - corrected and reviewed have all answers completed, started have 4
# 1 student has done nothing
# - 1 badge available, 7 unavailable

puts "Destroying everything in the database!"
TeacherComment.destroy_all
UserResponse.destroy_all
Badge.destroy_all
User.destroy_all
Classroom.destroy_all
ActivityQuestion.destroy_all
Activity.destroy_all

puts "Creating activity 1!"
activity1 = Activity.create({
                              title: "Quiz 1",
                              activity_type: "Quiz",
                              question_amount: 8,
                              level: 1
                            })

puts "Creating activity 1 questions!"
act1_question1 = ActivityQuestion.create({
                                          question_text: "What is the lead's name?",
                                          response_text: "Marky Mark",
                                          activity: activity1
                                        })
act1_question2 = ActivityQuestion.create({
                                          question_text: "What is the villain's name?",
                                          response_text: "Evil Tom",
                                          activity: activity1
                                        })
act1_question3 = ActivityQuestion.create({
                                          question_text: "What is the love's name?",
                                          response_text: "Travissimo",
                                          activity: activity1
                                        })
act1_question4 = ActivityQuestion.create({
                                          question_text: "What is the setting?",
                                          response_text: "Los Angeles",
                                          activity: activity1
                                        })
act1_question5 = ActivityQuestion.create({
                                          question_text: "What year does it take place?",
                                          response_text: "2095",
                                          activity: activity1
                                        })
act1_question6 = ActivityQuestion.create({
                                          question_text: "Who framed Timmy the Turtle?",
                                          response_text: "Limo",
                                          activity: activity1
                                        })
act1_question7 = ActivityQuestion.create({
                                          question_text: "Who hates the children?",
                                          response_text: "The boss",
                                          activity: activity1
                                        })
act1_question8 = ActivityQuestion.create({
                                          question_text: "Where did the characters end up?",
                                          response_text: "Barcelona",
                                          activity: activity1
                                        })

puts "Creating activity 2!"
activity2 = Activity.create({
                              title: "Quiz 2",
                              activity_type: "Quiz",
                              question_amount: 8,
                              level: 2
                            })

puts "Creating activity 2 questions!"
act2_question1 = ActivityQuestion.create({
                                          question_text: "Who played the lead?",
                                          response_text: "Harrison Ford",
                                          activity: activity2
                                        })
act2_question2 = ActivityQuestion.create({
                                          question_text: "Who played the villain?",
                                          response_text: "Brad Garrett",
                                          activity: activity2
                                        })
act2_question3 = ActivityQuestion.create({
                                          question_text: "Who played the love?",
                                          response_text: "Julie Lewis",
                                          activity: activity2
                                        })
act2_question4 = ActivityQuestion.create({
                                          question_text: "What country was the setting?",
                                          response_text: "USA",
                                          activity: activity2
                                        })
act2_question5 = ActivityQuestion.create({
                                          question_text: "What car does the lead drive?",
                                          response_text: "Ford Focus",
                                          activity: activity2
                                        })
act2_question6 = ActivityQuestion.create({
                                          question_text: "Who played Timmy the Turtle?",
                                          response_text: "Dana Carvey",
                                          activity: activity2
                                        })
act2_question7 = ActivityQuestion.create({
                                          question_text: "Who played The Boss?",
                                          response_text: "David Hayter",
                                          activity: activity2
                                        })
act2_question8 = ActivityQuestion.create({
                                          question_text: "What color was the boat?",
                                          response_text: "Gun Metal Grey",
                                          activity: activity2
                                        })

puts "Creating activity 3!"
activity3 = Activity.create({
                              title: "Match 1",
                              activity_type: "Match",
                              question_amount: 4,
                              level: 2
                            })

puts "Createing activity 3 questions!"
act3_question1 = ActivityQuestion.create({
                                          question_text: "Match 1",
                                          response_text: "Match 2",
                                          activity: activity3
                                        })
act3_question2 = ActivityQuestion.create({
                                          question_text: "Match 3",
                                          response_text: "Match 4",
                                          activity: activity3
                                        })
act3_question3 = ActivityQuestion.create({
                                          question_text: "Match 5",
                                          response_text: "Match 6",
                                          activity: activity3
                                        })
act3_question4 = ActivityQuestion.create({
                                          question_text: "Match 7",
                                          response_text: "Match 8",
                                          activity: activity3
                                        })

puts "Creating activity 4!"
activity4 = Activity.create({
                              title: "Art 1",
                              activity_type: "Art",
                              question_amount: 1,
                              level: 2
                            })

puts "Creating activity 4 question!"
act4_question1 = ActivityQuestion.create({
                                          question_text: "Draw the final showdown!",
                                          response_text: "Looks good!",
                                          activity: activity4
                                        })

puts "Creating activity 5!"
activity5 = Activity.create({
                              title: "Quiz 3",
                              activity_type: "Quiz",
                              question_amount: 8,
                              level: 3
                            })

puts "Creating activity 5 questions!"
act5_question1 = ActivityQuestion.create({
                                          question_text: "What theatre were we in?",
                                          response_text: "Tableau D'Hôte Theatre",
                                          activity: activity5
                                        })
act5_question2 = ActivityQuestion.create({
                                          question_text: "What city is the theatre in?",
                                          response_text: "Montreal",
                                          activity: activity5
                                        })
act5_question3 = ActivityQuestion.create({
                                          question_text: "How old is the theatre?",
                                          response_text: "136 years old",
                                          activity: activity5
                                        })
act5_question4 = ActivityQuestion.create({
                                          question_text: "Who founded the theatre?",
                                          response_text: "Thompson Theatreman",
                                          activity: activity5
                                        })
act5_question5 = ActivityQuestion.create({
                                          question_text: "How many different shows are put on each year?",
                                          response_text: "6, but 7 is also an acceptable answer",
                                          activity: activity5
                                        })
act5_question6 = ActivityQuestion.create({
                                          question_text: "How many different sets were used in the show?",
                                          response_text: "6",
                                          activity: activity5
                                        })
act5_question7 = ActivityQuestion.create({
                                          question_text: "What song played during the love scene?",
                                          response_text: "All The Small Things - blink-182",
                                          activity: activity5
                                        })
act5_question8 = ActivityQuestion.create({
                                          question_text: "Who directed the play?",
                                          response_text: "Arnold Schwarzenegger",
                                          activity: activity5
                                        })

puts "Creating activity 6!"
activity6 = Activity.create({
                              title: "Match 2",
                              activity_type: "Match",
                              question_amount: 4,
                              level: 3
                            })

puts "Createing activity 6 questions!"
act6_question1 = ActivityQuestion.create({
                                          question_text: "Match 1",
                                          response_text: "Match 2",
                                          activity: activity6
                                        })
act6_question2 = ActivityQuestion.create({
                                          question_text: "Match 3",
                                          response_text: "Match 4",
                                          activity: activity6
                                        })
act6_question3 = ActivityQuestion.create({
                                          question_text: "Match 5",
                                          response_text: "Match 6",
                                          activity: activity6
                                        })
act6_question4 = ActivityQuestion.create({
                                          question_text: "Match 7",
                                          response_text: "Match 8",
                                          activity: activity6
                                        })

puts "Creating activity 7!"
activity7 = Activity.create({
                              title: "Art 2",
                              activity_type: "Art",
                              question_amount: 1,
                              level: 3
                            })

puts "Creating activity 7 question!"
act7_question1 = ActivityQuestion.create({
                                          question_text: "Draw the death scene, in full graphic detail.",
                                          response_text: "Fantastic!",
                                          activity: activity7
                                        })

puts "Creating activity 8!"
activity8 = Activity.create({
                              title: "Show Review",
                              activity_type: "Review",
                              question_amount: 1,
                              level: 1
                            })

puts "Creating activity 8 question!"
act8_question1 = ActivityQuestion.create({
                                          question_text: "Please leave a review of the show.",
                                          response_text: "Thank you!",
                                          activity: activity6
                                        })

puts "Creating classroom 1!"
class1 = Classroom.create({ name: "Class 1", date: DateTime.new(2023, 2, 21, 19, 30) })

puts "Creating teacher, class 1!"
teacher1 = User.create({
                          first_name: "John",
                          last_name: "Teacherman",
                          user_name: "johnteach",
                          email: "a@a.a",
                          password: "aaa111",
                          teacher: true,
                          classroom: class1
                        })

puts "Creating student 1, class 1!"
class1_student1 = User.create({
                          first_name: "Jim",
                          last_name: "Halpert",
                          user_name: "jimhalpert",
                          email: "c@c.c",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })

puts "Creating student 1, class 1, activity 1 badge!"
c1s1_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 1 answers!"
c1s1a1r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s1a1r2 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s1a1r3 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s1a1r4 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s1a1r5 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s1a1r6 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s1a1r7 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s1a1r8 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 1 teacher comments!"
c1s1a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r1,
                                  teacher: teacher1
                                })
c1s1a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r2,
                                  teacher: teacher1
                                })
c1s1a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r3,
                                  teacher: teacher1
                                })
c1s1a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r4,
                                  teacher: teacher1
                                })
c1s1a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r5,
                                  teacher: teacher1
                                })
c1s1a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r6,
                                  teacher: teacher1
                                })
c1s1a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r7,
                                  teacher: teacher1
                                })
c1s1a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 2 badge!"
c1s1_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 2 answers!"
c1s1a2r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s1a2r2 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s1a2r3 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s1a2r4 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s1a2r5 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s1a2r6 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s1a2r7 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s1a2r8 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 2 teacher comments!"
c1s1a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r1,
                                  teacher: teacher1
                                })
c1s1a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r2,
                                  teacher: teacher1
                                })
c1s1a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r3,
                                  teacher: teacher1
                                })
c1s1a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r4,
                                  teacher: teacher1
                                })
c1s1a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r5,
                                  teacher: teacher1
                                })
c1s1a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r6,
                                  teacher: teacher1
                                })
c1s1a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r7,
                                  teacher: teacher1
                                })
c1s1a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 3 badge!"
c1s1_badge3 = Badge.create({
                        status: 4,
                        activity: activity3,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 3 answers!"
c1s1a3r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s1a3r2 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s1a3r3 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c1s1a3r4 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act3_question4,
                                  text: "Match 8",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 3 teacher comments!"
c1s1a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a3r1,
                                  teacher: teacher1
                                })
c1s1a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a3r2,
                                  teacher: teacher1
                                })
c1s1a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a3r3,
                                  teacher: teacher1
                                })
c1s1a3t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a3r4,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 4 badge!"
c1s1_badge4 = Badge.create({
                        status: 4,
                        activity: activity4,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 4 answer!"
c1s1a4r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 4 teacher comments!"
c1s1a4t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a4r1,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 5 badge!"
c1s1_badge5 = Badge.create({
                        status: 4,
                        activity: activity5,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 5 answers!"
c1s1a5r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question1,
                                  text: "Tableau D'Hôte Theatre",
                                  correct: true
                                  })
c1s1a5r2 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question2,
                                  text: "Montreal",
                                  correct: true
                                  })
c1s1a5r3 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question3,
                                  text: "136 years old",
                                  correct: true
                                  })
c1s1a5r4 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question4,
                                  text: "Thompson Theatreman",
                                  correct: true
                                  })
c1s1a5r5 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question5,
                                  text: "6",
                                  correct: true
                                  })
c1s1a5r6 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s1a5r7 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question7,
                                  text: "All The Small Things",
                                  correct: true
                                  })
c1s1a5r8 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act5_question8,
                                  text: "Schwarzenegger",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 5 teacher comments!"
c1s1a5t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r1,
                                  teacher: teacher1
                                })
c1s1a5t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r2,
                                  teacher: teacher1
                                })
c1s1a5t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r3,
                                  teacher: teacher1
                                })
c1s1a5t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r4,
                                  teacher: teacher1
                                })
c1s1a5t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r5,
                                  teacher: teacher1
                                })
c1s1a5t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r6,
                                  teacher: teacher1
                                })
c1s1a5t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r7,
                                  teacher: teacher1
                                })
c1s1a5t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a5r8,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 6 badge!"
c1s1_badge6 = Badge.create({
                        status: 3,
                        activity: activity6,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 6 answers!"
c1s1a6r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s1a6r2 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s1a6r3 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act6_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c1s1a6r4 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act6_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 1, class 1, activity 6 teacher comments!"
c1s1a6t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a6r1,
                                  teacher: teacher1
                                })
c1s1a6t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a6r2,
                                  teacher: teacher1
                                })
c1s1a6t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s1a6r3,
                                  teacher: teacher1
                                })
c1s1a6t4 = TeacherComment.create({
                                  text: "This one needs work!",
                                  user_response: c1s1a6r4,
                                  teacher: teacher1
                                })

puts "Creating student 1, class 1, activity 7 badge!"
c1s1_badge7 = Badge.create({
                        status: 2,
                        activity: activity7,
                        user: class1_student1
                      })

puts "Creating student 1, class 1, activity 7 answer!"
c1s1a7r1 = UserResponse.create({
                                  user: class1_student1,
                                  activity_question: act7_question1,
                                  text: "Link to art",
                                  correct: true
                                  })

puts "Creating student 1, class 1, activity 8 badge!"
c1s1_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student1
                      })

puts "Creating student 2, class 1!"
class1_student2 = User.create({
                          first_name: "Dwight",
                          last_name: "Schrute",
                          user_name: "beetsbeetsbeets",
                          email: "d@d.d",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })

puts "Creating student 2, class 1, activity 1 badge!"
c1s2_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 1 answers!"
c1s2a1r1 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s2a1r2 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s2a1r3 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s2a1r4 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s2a1r5 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s2a1r6 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s2a1r7 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s2a1r8 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 2, class 1, activity 1 teacher comments!"
c1s2a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r1,
                                  teacher: teacher1
                                })
c1s2a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r2,
                                  teacher: teacher1
                                })
c1s2a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r3,
                                  teacher: teacher1
                                })
c1s2a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r4,
                                  teacher: teacher1
                                })
c1s2a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r5,
                                  teacher: teacher1
                                })
c1s2a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r6,
                                  teacher: teacher1
                                })
c1s2a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r7,
                                  teacher: teacher1
                                })
c1s2a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 2, class 1, activity 2 badge!"
c1s2_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 2 answers!"
c1s2a2r1 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s2a2r2 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s2a2r3 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s2a2r4 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s2a2r5 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s2a2r6 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s2a2r7 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s2a2r8 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 2, class 1, activity 2 teacher comments!"
c1s2a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r1,
                                  teacher: teacher1
                                })
c1s2a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r2,
                                  teacher: teacher1
                                })
c1s2a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r3,
                                  teacher: teacher1
                                })
c1s2a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r4,
                                  teacher: teacher1
                                })
c1s2a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r5,
                                  teacher: teacher1
                                })
c1s2a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r6,
                                  teacher: teacher1
                                })
c1s2a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r7,
                                  teacher: teacher1
                                })
c1s2a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 2, class 1, activity 3 badge!"
c1s2_badge3 = Badge.create({
                        status: 3,
                        activity: activity3,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 3 answers!"
c1s2a3r1 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s2a3r2 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s2a3r3 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c1s2a3r4 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act3_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 2, class 1, activity 3 teacher comments!"
c1s2a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a3r1,
                                  teacher: teacher1
                                })
c1s2a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a3r2,
                                  teacher: teacher1
                                })
c1s2a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s2a3r3,
                                  teacher: teacher1
                                })
c1s2a3t4 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c1s2a3r4,
                                  teacher: teacher1
                                })

puts "Creating student 2, class 1, activity 4 badge!"
c1s2_badge4 = Badge.create({
                        status: 3,
                        activity: activity4,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 4 answer!"
c1s2a4r1 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: false
                                  })

puts "Creating student 2, class 1, activity 4 teacher comments!"
c1s2a4t1 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c1s2a4r1,
                                  teacher: teacher1
                                })

puts "Creating student 2, class 1, activity 5 badge!"
c1s2_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 6 badge!"
c1s2_badge6 = Badge.create({
                        status: 2,
                        activity: activity6,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 6 answers!"
c1s2a6r1 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s2a6r2 = UserResponse.create({
                                  user: class1_student2,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })

puts "Creating student 2, class 1, activity 7 badge!"
c1s2_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student2
                      })

puts "Creating student 2, class 1, activity 8 badge!"
c1s2_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student2
                      })

# puts "Creating student 3, class 1!"
# class1_student3 = User.create({
#                           first_name: "Jake",
#                           last_name: "Peralta",
#                           user_name: "jakemcclane",
#                           email: "e@e.e",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })

# puts "Creating student 4, class 1!"
# class1_student4 = User.create({
#                           first_name: "Charles",
#                           last_name: "Boyle",
#                           user_name: "chuckboyle",
#                           email: "f@f.f",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })

# puts "Creating student 5, class 1!"
# class1_student5 = User.create({
#                           first_name: "Terry",
#                           last_name: "Crews",
#                           user_name: "terrycrews",
#                           email: "g@g.g",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })

# puts "Creating student 6, class 1!"
# class1_student6 = User.create({
#                           first_name: "Ron",
#                           last_name: "Burgundy",
#                           user_name: "imronburgundy",
#                           email: "h@h.h",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })

# puts "Creating student 7, class 1!"
# class1_student7 = User.create({
#                           first_name: "Luke",
#                           last_name: "Skywalker",
#                           user_name: "theforce",
#                           email: "i@i.i",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })

# puts "Creating student 8, class 1!"
# class1_student8 = User.create({
#                           first_name: "Doug",
#                           last_name: "Judy",
#                           user_name: "pontiacbandit",
#                           email: "j@j.j",
#                           password: "aaa111",
#                           teacher: false,
#                           classroom: class1
#                         })







# teacher2 = User.create({
                        first_name: "Hugo",
                        last_name: "Professorman",
                        user_name: "hugoproff",
                        email: "b@b.b",
                        password: "aaa111",
                        teacher: true,
                        classroom: class2
                      })
