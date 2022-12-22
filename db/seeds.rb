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
Badge.destroy_all
UserResponse.destroy_all
User.destroy_all
Classroom.destroy_all
ActivityQuestion.destroy_all
Activity.destroy_all

puts "Creating General Theater activity!"

general_theater = Activity.create({
  title: "General Theater",
  activity_type: "Quiz",
  question_amount: 10,
  description: "Testing Testing!"
  })

puts "Creating General Theater questions!"

gen_theater_ques1 = ActivityQuestion.create({
                                          question_text: "This type of theatre was developed after the abolition of the existing theaters during the French Revolution.",
                                          response_text: "Melodrama",
                                          activity: general_theater,
                                          choices: ["Melodrama","Absurdist","Musical Theatre","Realism"]
                                        })
gen_theater_ques2 = ActivityQuestion.create({
                                          question_text: "The playwright of Tartuffe",
                                          response_text: "Moliere",
                                          activity: general_theater,
                                          choices: ["Bejart","Shakespeare","Milton","Moliere"]
                                        })
gen_theater_ques3 = ActivityQuestion.create({
                                          question_text: "This type of theatre emerged from Europe as a reaction to modernist theatre in the
                                          middle of the twentieth century",
                                          response_text: "Postmodern theatre",
                                          activity: general_theater,
                                          choices: ["The Meisner Technique","Postmodern theatre","The Stanislavski Method","Elizabethan Theatre"]
                                        })
gen_theater_ques4 = ActivityQuestion.create({
                                          question_text: "She was English an playwright, poet, prose writer and translator from the Restoration Era.",
                                          response_text: "Aphra Behn",
                                          activity: general_theater,
                                          choices: ["Sarah Bernhardt","Aphra Behn","Ada Lovelace","Jane Fonda"]
                                        })
gen_theater_ques5 = ActivityQuestion.create({
                                          question_text: "African American playwright who wrote ten plays known as the Century Cycle:",
                                          response_text: "August Wilson",
                                          activity: general_theater,
                                          choices: ["Lionel Richie","Lawrence Fishburn","August Wilson","Benny Goodman"]
                                        })
gen_theater_ques6 = ActivityQuestion.create({
                                          question_text: "This person’s job is to call the cues of a theatre performance.",
                                          response_text: "General Manager",
                                          activity: general_theater,
                                          choices: ["Technical Director","Front Of House","General Manager","Stage Manager"]
                                        })
gen_theater_ques7 = ActivityQuestion.create({
                                          question_text: "The term describing how equipment on stage is suspended and/or moved.",
                                          response_text: "Stage Rigging",
                                          activity: general_theater,
                                          choices: ["Stage Rigging","Stage Propping","Stage Prepping","Stage Croping"]
                                        })
gen_theater_ques8 = ActivityQuestion.create({
                                          question_text: "A person who learns another's role in order to be able to act as a replacement at short notice.",
                                          response_text: "Understudy",
                                          activity: general_theater,
                                          choices: ["First Responder","Second Lead","Understudy","Study Guide"]
                                        })
gen_theater_ques9 = ActivityQuestion.create({
                                          question_text: "This person manages all aspects of a theatre production.",
                                          response_text: "Producer",
                                          activity: general_theater,
                                          choices: ["Director","Producer","Stage Manager","Swing"]
                                        })
gen_theater_ques10 = ActivityQuestion.create({
                                          question_text: "To choose actors to play particular parts in a play.",
                                          response_text: "cast",
                                          activity: general_theater,
                                          choices: ["wrap","draw","prop","cast"]
                                        })


puts "Creating Post Show Activity!"
post_show = Activity.create({
                              title: "Post Show",
                              activity_type: "quiz",
                              question_amount: 10,
                              description: "Testing Testing!"
                            })

puts "creating post show activity questions!"
post_show_question1 = ActivityQuestion.create({
                                      question_text: "Japan has a strong tradition of women",
                                      response_text: "Being housewives after marriage",
                                      activity: post_show,
                                      choices: ["Being housewives after marriage","Becoming Geishas after marriage","Serving as government officials","Serving as nurses in the armed forces"]
                                     })
post_show_question2 = ActivityQuestion.create({
                                      question_text: "The first Japanese immigrants came to San Francisco, or 'Soko' as they called it,
                                      in 1869. Originally, these immigrants were predominantly",
                                      response_text: "young men searching for new economic opportunities",
                                      activity: post_show,
                                      choices: ["children who were sent by their parents to work in factories","elderly widowed women with a small wealth to invest","Young women eager to marry an American man","young men searching for new economic opportunities"]
                                     })
post_show_question3 = ActivityQuestion.create({
                                      question_text: "The state or quality of being worthy of honor or respect is",
                                      response_text: "Dignity",
                                      activity: post_show,
                                      choices: ["Allowance","Dignity","Freedom","Trust"]
                                     })
post_show_question4 = ActivityQuestion.create({
                                      question_text: "The Japanese word geisha literally means",
                                      response_text: "Art person",
                                      activity: post_show,
                                      choices: ["Woman who greets","Likable one","Master of tea ceremony","Art person"]
                                     })
post_show_question5 = ActivityQuestion.create({
                                      question_text: "In the play, Mizushobai, characters are referred to as",
                                      response_text: "Earth elements",
                                      activity: post_show,
                                      choices: ["Earth Elements","War criminals","Sand patterns","Ageless entities"]
                                     })
post_show_question6 = ActivityQuestion.create({
                                      question_text: "The character KIYOKO decides to go America to",
                                      response_text: "Mke enough money to buy back the mountain of mikan",
                                      activity: post_show,
                                      choices: ["Make enough money to buy back the mountain of mikan","Restore honor to her family","Allow for the passage of the rest of her family to America","Start a brothel"]
                                     })
post_show_question7 = ActivityQuestion.create({
                                      question_text: "In which city does KI arrive when she travels from Japan?",
                                      response_text: "Victoria",
                                      activity: post_show,
                                      choices: ["Kamloops","Vancouver","Kamloops","Nanaimo"]
                                     })
post_show_question8 = ActivityQuestion.create({
                                      question_text: "MAMA K is displaced and loses everything due to the racial backlashes of World War II. What happens to her?",
                                      response_text: "She labors in jail",
                                      activity: post_show,
                                      choices: ["She flees back to Japan","She builds another brothel","She marries a poor sailor","She labors in jail"]
                                     })
post_show_question9 = ActivityQuestion.create({
                                      question_text: "ENEMY ALIEN KIYO can be described as angry, forceful and driving.",
                                      response_text: "True",
                                      activity: post_show,
                                      choices: ["True","False"]
                                     })
post_show_question10 = ActivityQuestion.create({
                                      question_text: "A “Beppinsan” is a euphemism for a",
                                      response_text: "Prostitute",
                                      activity: post_show,
                                      choices: ["Judge","Prostitute","Cobbler","Priest"]
                                     })

puts "Creating Pre Show Activity!"
pre_show = Activity.create({
                            title: "Pre Show",
                            activity_type: "Review",
                            question_amount: 1,
                            description: "Testing Testing!"
                          })

puts "Creating pre show activity questions!"
pre_show_question = ActivityQuestion.create({
                                          question_text: "In your own words, explain the title of the play MIZUSHOBAI (The Water Trade).
                                          Research the title of the play, Mizushōbai, and explain in your own words its meaning. Include the possible etymology of the word, some historical context, and any modern uses. 500 words.",
                                          response_text: "",
                                          activity: pre_show,
                                          choices: []
                                        })

puts "Creating activity 1!"
activity1 = Activity.create({
                              title: "Quiz 1",
                              activity_type: "Quiz",
                              question_amount: 8,
                              description: "Testing Testing!"
                            })

puts "Creating activity 1 questions!"
act1_question1 = ActivityQuestion.create({
                                          question_text: "What is the lead's name?",
                                          response_text: "Marky Mark",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question2 = ActivityQuestion.create({
                                          question_text: "What is the villain's name?",
                                          response_text: "Evil Tom",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question3 = ActivityQuestion.create({
                                          question_text: "What is the love's name?",
                                          response_text: "Travissimo",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question4 = ActivityQuestion.create({
                                          question_text: "What is the setting?",
                                          response_text: "Los Angeles",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question5 = ActivityQuestion.create({
                                          question_text: "What year does it take place?",
                                          response_text: "2095",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question6 = ActivityQuestion.create({
                                          question_text: "Who framed Timmy the Turtle?",
                                          response_text: "Limo",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question7 = ActivityQuestion.create({
                                          question_text: "Who hates the children?",
                                          response_text: "The boss",
                                          activity: activity1,
                                          choices: []
                                        })
act1_question8 = ActivityQuestion.create({
                                          question_text: "Where did the characters end up?",
                                          response_text: "Barcelona",
                                          activity: activity1,
                                          choices: []
                                        })

puts "Creating activity 2!"
activity2 = Activity.create({
                              title: "Quiz 2",
                              activity_type: "Quiz",
                              question_amount: 8,
                              description: "Testing Testing!"
                            })

puts "Creating activity 2 questions!"
act2_question1 = ActivityQuestion.create({
                                          question_text: "Who played the lead?",
                                          response_text: "Harrison Ford",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question2 = ActivityQuestion.create({
                                          question_text: "Who played the villain?",
                                          response_text: "Brad Garrett",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question3 = ActivityQuestion.create({
                                          question_text: "Who played the love?",
                                          response_text: "Julie Lewis",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question4 = ActivityQuestion.create({
                                          question_text: "What country was the setting?",
                                          response_text: "USA",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question5 = ActivityQuestion.create({
                                          question_text: "What car does the lead drive?",
                                          response_text: "Ford Focus",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question6 = ActivityQuestion.create({
                                          question_text: "Who played Timmy the Turtle?",
                                          response_text: "Dana Carvey",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question7 = ActivityQuestion.create({
                                          question_text: "Who played The Boss?",
                                          response_text: "David Hayter",
                                          activity: activity2,
                                          choices: []
                                        })
act2_question8 = ActivityQuestion.create({
                                          question_text: "What color was the boat?",
                                          response_text: "Gun Metal Grey",
                                          activity: activity2,
                                          choices: []
                                        })

puts "Creating activity 3!"
activity3 = Activity.create({
                              title: "Match 1",
                              activity_type: "Match",
                              question_amount: 4,
                              description: "Testing Testing!"
                            })

puts "Createing activity 3 questions!"
act3_question1 = ActivityQuestion.create({
                                          question_text: "Match 1",
                                          response_text: "Match 2",
                                          activity: activity3,
                                          choices: []
                                        })
act3_question2 = ActivityQuestion.create({
                                          question_text: "Match 3",
                                          response_text: "Match 4",
                                          activity: activity3,
                                          choices: []
                                        })
act3_question3 = ActivityQuestion.create({
                                          question_text: "Match 5",
                                          response_text: "Match 6",
                                          activity: activity3,
                                          choices: []
                                        })
act3_question4 = ActivityQuestion.create({
                                          question_text: "Match 7",
                                          response_text: "Match 8",
                                          activity: activity3,
                                          choices: []
                                        })

puts "Creating activity 4!"
activity4 = Activity.create({
                              title: "Art 1",
                              activity_type: "Art",
                              question_amount: 1,
                              description: "Testing Testing!"
                            })

puts "Creating activity 4 question!"
act4_question1 = ActivityQuestion.create({
                                          question_text: "Draw the final showdown!",
                                          response_text: "Looks good!",
                                          activity: activity4,
                                          choices: []
                                        })

puts "Creating activity 5!"
activity5 = Activity.create({
                              title: "Quiz 3",
                              activity_type: "Quiz",
                              question_amount: 8,
                              description: "Testing Testing!"
                            })

puts "Creating activity 5 questions!"
act5_question1 = ActivityQuestion.create({
                                          question_text: "What theatre were we in?",
                                          response_text: "Tableau D'Hôte Theatre",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question2 = ActivityQuestion.create({
                                          question_text: "What city is the theatre in?",
                                          response_text: "Montreal",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question3 = ActivityQuestion.create({
                                          question_text: "How old is the theatre?",
                                          response_text: "136 years old",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question4 = ActivityQuestion.create({
                                          question_text: "Who founded the theatre?",
                                          response_text: "Thompson Theatreman",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question5 = ActivityQuestion.create({
                                          question_text: "How many different shows are put on each year?",
                                          response_text: "6, but 7 is also an acceptable answer",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question6 = ActivityQuestion.create({
                                          question_text: "How many different sets were used in the show?",
                                          response_text: "6",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question7 = ActivityQuestion.create({
                                          question_text: "What song played during the love scene?",
                                          response_text: "All The Small Things - blink-182",
                                          activity: activity5,
                                          choices: []
                                        })
act5_question8 = ActivityQuestion.create({
                                          question_text: "Who directed the play?",
                                          response_text: "Arnold Schwarzenegger",
                                          activity: activity5,
                                          choices: []
                                        })

puts "Creating activity 6!"
activity6 = Activity.create({
                              title: "Match 2",
                              activity_type: "Match",
                              question_amount: 4,
                              description: "Testing Testing!"
                            })

puts "Createing activity 6 questions!"
act6_question1 = ActivityQuestion.create({
                                          question_text: "Match 1",
                                          response_text: "Match 2",
                                          activity: activity6,
                                          choices: []
                                        })
act6_question2 = ActivityQuestion.create({
                                          question_text: "Match 3",
                                          response_text: "Match 4",
                                          activity: activity6,
                                          choices: []
                                        })
act6_question3 = ActivityQuestion.create({
                                          question_text: "Match 5",
                                          response_text: "Match 6",
                                          activity: activity6,
                                          choices: []
                                        })
act6_question4 = ActivityQuestion.create({
                                          question_text: "Match 7",
                                          response_text: "Match 8",
                                          activity: activity6,
                                          choices: []
                                        })

puts "Creating activity 7!"
activity7 = Activity.create({
                              title: "Art 2",
                              activity_type: "Art",
                              question_amount: 1,
                              description: "Testing Testing!"
                            })

puts "Creating activity 7 question!"
act7_question1 = ActivityQuestion.create({
                                          question_text: "Draw the death scene, in full graphic detail.",
                                          response_text: "Fantastic!",
                                          activity: activity7,
                                          choices: []
                                        })

puts "Creating activity 8!"
activity8 = Activity.create({
                              title: "Show Review",
                              activity_type: "Review",
                              question_amount: 1,
                              description: "Testing Testing!"
                            })

puts "Creating activity 8 question!"
act8_question1 = ActivityQuestion.create({
                                          question_text: "Please leave a review of the show.",
                                          response_text: "Thank you!",
                                          activity: activity8,
                                          choices: []
                                        })

puts "Crearting Admin Classroom"
class0 = Classroom.create({name: "Class 0", date: DateTime.new(2022, 12, 14, 5, 30)})

puts "Creating Admin 1"
admin1 = User.create({
                          first_name: "Ann",
                          last_name: "Perkins",
                          user_name: "fixthepit",
                          email: "a@admin.com",
                          password: "aaa111",
                          teacher: true,
                          classroom: class0,
                          admin: true
                        })

puts "Creating classroom 1!"
class1 = Classroom.create({ name: "Class 1", date: DateTime.new(2023, 2, 21, 19, 30) })

puts "Creating teacher, class 1!"
teacher1 = User.create!({
                          first_name: "John",
                          last_name: "Teacherman",
                          user_name: "johnteach",
                          email: "a@a.a",
                          password: "aaa111",
                          teacher: true,
                          classroom: class1,
                          # access_code: "placeholderTC"
                        })

puts "Creating student 1, class 1!"
class1_student1 = User.create!({
                          first_name: "Jim",
                          last_name: "Halpert",
                          user_name: "jimhalpert",
                          email: "c@c.c",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 1, class 1, pre show activity badge!"
c1s1_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student1
                      })
puts "Creating student 1, class 1, post show activity badge!"
c1s1_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student1
})
puts "Creating student 1, class 1, general theater 1 badge!"
c1s1_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student1
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
puts "Creating student 2, class 1, pre showactivity  badge!"
c1s2_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student2
                      })
puts "Creating student 2, class 1, post show activity badge!"
c1s2_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student2
                      })
puts "Creating student 2, class 1, general theater activity badge!"
c1s2_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student2
                      })
puts "Creating student 2, class 1, activity 1 badge!"
c1s2_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student2
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

puts "Creating student 3, class 1!"
class1_student3 = User.create({
                          first_name: "Jake",
                          last_name: "Peralta",
                          user_name: "jakemcclane",
                          email: "e@e.e",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 3, class 1, pre show activity badge!"
c1s3_pre_show_badge = Badge.create({
                            status: 1,
                            activity: pre_show,
                            user: class1_student3
                          })
puts "Creating student 3, class 1, post show activity badge!"
c1s3_post_show_badge = Badge.create({
                            status: 1,
                            activity: post_show,
                            user: class1_student3
                          })
puts "Creating student 3, class 1, general theater activity badge!"
c1s3_general_theater_badge = Badge.create({
                            status: 1,
                            activity: general_theater,
                            user: class1_student3
                          })
puts "Creating student 3, class 1, activity 1 badge!"
c1s3_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student3
                      })


puts "Creating student 3, class 1, activity 1 answers!"
c1s3a1r1 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s3a1r2 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s3a1r3 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s3a1r4 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s3a1r5 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s3a1r6 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s3a1r7 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s3a1r8 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 3, class 1, activity 1 teacher comments!"
c1s3a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r1,
                                  teacher: teacher1
                                })
c1s3a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r2,
                                  teacher: teacher1
                                })
c1s3a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r3,
                                  teacher: teacher1
                                })
c1s3a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r4,
                                  teacher: teacher1
                                })
c1s3a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r5,
                                  teacher: teacher1
                                })
c1s3a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r6,
                                  teacher: teacher1
                                })
c1s3a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r7,
                                  teacher: teacher1
                                })
c1s3a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 3, class 1, activity 2 badge!"
c1s3_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 2 answers!"
c1s3a2r1 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s3a2r2 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s3a2r3 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s3a2r4 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s3a2r5 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s3a2r6 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s3a2r7 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s3a2r8 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 3, class 1, activity 2 teacher comments!"
c1s3a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r1,
                                  teacher: teacher1
                                })
c1s3a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r2,
                                  teacher: teacher1
                                })
c1s3a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r3,
                                  teacher: teacher1
                                })
c1s3a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r4,
                                  teacher: teacher1
                                })
c1s3a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r5,
                                  teacher: teacher1
                                })
c1s3a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r6,
                                  teacher: teacher1
                                })
c1s3a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r7,
                                  teacher: teacher1
                                })
c1s3a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 3, class 1, activity 3 badge!"
c1s3_badge3 = Badge.create({
                        status: 3,
                        activity: activity3,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 3 answers!"
c1s3a3r1 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s3a3r2 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s3a3r3 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c1s3a3r4 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act3_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 3, class 1, activity 3 teacher comments!"
c1s3a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a3r1,
                                  teacher: teacher1
                                })
c1s3a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a3r2,
                                  teacher: teacher1
                                })
c1s3a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s3a3r3,
                                  teacher: teacher1
                                })
c1s3a3t4 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c1s3a3r4,
                                  teacher: teacher1
                                })

puts "Creating student 3, class 1, activity 4 badge!"
c1s3_badge4 = Badge.create({
                        status: 3,
                        activity: activity4,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 4 answer!"
c1s3a4r1 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: false
                                  })

puts "Creating student 3, class 1, activity 4 teacher comments!"
c1s3a4t1 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c1s3a4r1,
                                  teacher: teacher1
                                })

puts "Creating student 3, class 1, activity 5 badge!"
c1s3_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 6 badge!"
c1s3_badge6 = Badge.create({
                        status: 2,
                        activity: activity6,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 6 answers!"
c1s3a6r1 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s3a6r2 = UserResponse.create({
                                  user: class1_student3,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })

puts "Creating student 3, class 1, activity 7 badge!"
c1s3_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student3
                      })

puts "Creating student 3, class 1, activity 8 badge!"
c1s3_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student3
                      })

puts "Creating student 4, class 1!"
class1_student4 = User.create({
                          first_name: "Charles",
                          last_name: "Boyle",
                          user_name: "chuckboyle",
                          email: "f@f.f",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 4, class 1, pre show activity badge!"
c1s4_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student4
                      })
puts "Creating student 4, class 1, post show activity badge!"
c1s4_post_show_badge = Badge.create({
                        status: 1,
                        activity:post_show,
                        user: class1_student4
                      })
puts "Creating student 4, class 1, general theater activity  badge!"
c1s4_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student4
                      })
puts "Creating student 4, class 1, activity 1 badge!"
c1s4_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 1 answers!"
c1s4a1r1 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s4a1r2 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s4a1r3 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s4a1r4 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s4a1r5 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s4a1r6 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s4a1r7 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s4a1r8 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 4, class 1, activity 1 teacher comments!"
c1s4a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r1,
                                  teacher: teacher1
                                })
c1s4a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r2,
                                  teacher: teacher1
                                })
c1s4a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r3,
                                  teacher: teacher1
                                })
c1s4a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r4,
                                  teacher: teacher1
                                })
c1s4a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r5,
                                  teacher: teacher1
                                })
c1s4a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r6,
                                  teacher: teacher1
                                })
c1s4a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r7,
                                  teacher: teacher1
                                })
c1s4a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 4, class 1, activity 2 badge!"
c1s4_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 2 answers!"
c1s4a2r1 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s4a2r2 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s4a2r3 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s4a2r4 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s4a2r5 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s4a2r6 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s4a2r7 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s4a2r8 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 4, class 1, activity 2 teacher comments!"
c1s4a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r1,
                                  teacher: teacher1
                                })
c1s4a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r2,
                                  teacher: teacher1
                                })
c1s4a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r3,
                                  teacher: teacher1
                                })
c1s4a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r4,
                                  teacher: teacher1
                                })
c1s4a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r5,
                                  teacher: teacher1
                                })
c1s4a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r6,
                                  teacher: teacher1
                                })
c1s4a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s4a2r7,
                                  teacher: teacher1
                                })
c1s4a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c1s4a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 4, class 1, activity 3 badge!"
c1s4_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 3 answers!"
c1s4a3r1 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s4a3r2 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s4a3r3 = UserResponse.create({
                                  user: class1_student4,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 4, class 1, activity 4 badge!"
c1s4_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 5 badge!"
c1s4_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 6 badge!"
c1s4_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 7 badge!"
c1s4_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student4
                      })

puts "Creating student 4, class 1, activity 8 badge!"
c1s4_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student4
                      })

puts "Creating student 5, class 1!"
class1_student5 = User.create({
                          first_name: "Terry",
                          last_name: "Crews",
                          user_name: "terrycrews",
                          email: "g@g.g",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 5, class 1, pre show activity  badge!"
c1s5_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student5
                      })
puts "Creating student 5, class 1, post show activity badge!"
c1s5_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student5
                      })
puts "Creating student 5, class 1, general theater activity badge!"
c1s5_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student5
                      })
puts "Creating student 5, class 1, activity 1 badge!"
c1s5_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 1 answers!"
c1s5a1r1 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s5a1r2 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s5a1r3 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s5a1r4 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s5a1r5 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s5a1r6 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s5a1r7 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s5a1r8 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 5, class 1, activity 1 teacher comments!"
c1s5a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r1,
                                  teacher: teacher1
                                })
c1s5a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r2,
                                  teacher: teacher1
                                })
c1s5a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r3,
                                  teacher: teacher1
                                })
c1s5a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r4,
                                  teacher: teacher1
                                })
c1s5a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r5,
                                  teacher: teacher1
                                })
c1s5a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r6,
                                  teacher: teacher1
                                })
c1s5a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r7,
                                  teacher: teacher1
                                })
c1s5a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 5, class 1, activity 2 badge!"
c1s5_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 2 answers!"
c1s5a2r1 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s5a2r2 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s5a2r3 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s5a2r4 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s5a2r5 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s5a2r6 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s5a2r7 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s5a2r8 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 5, class 1, activity 2 teacher comments!"
c1s5a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r1,
                                  teacher: teacher1
                                })
c1s5a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r2,
                                  teacher: teacher1
                                })
c1s5a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r3,
                                  teacher: teacher1
                                })
c1s5a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r4,
                                  teacher: teacher1
                                })
c1s5a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r5,
                                  teacher: teacher1
                                })
c1s5a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r6,
                                  teacher: teacher1
                                })
c1s5a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s5a2r7,
                                  teacher: teacher1
                                })
c1s5a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c1s5a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 5, class 1, activity 3 badge!"
c1s5_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 3 answers!"
c1s5a3r1 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s5a3r2 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s5a3r3 = UserResponse.create({
                                  user: class1_student5,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 5, class 1, activity 4 badge!"
c1s5_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 5 badge!"
c1s5_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 6 badge!"
c1s5_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 7 badge!"
c1s5_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student5
                      })

puts "Creating student 5, class 1, activity 8 badge!"
c1s5_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student5
                      })



puts "Creating student 6, class 1!"
class1_student6 = User.create({
                          first_name: "Ron",
                          last_name: "Burgundy",
                          user_name: "imronburgundy",
                          email: "h@h.h",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 6, class 1, pre show activity badge!"
c1s6_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student6
                      })
puts "Creating student 6, class 1, post show activity badge!"
c1s6_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student6
                      })
puts "Creating student 6, class 1, general theater activity badge!"
c1s6_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student6
                      })
puts "Creating student 6, class 1, activity 1 badge!"
c1s6_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 1 answers!"
c1s6a1r1 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s6a1r2 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s6a1r3 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s6a1r4 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s6a1r5 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s6a1r6 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s6a1r7 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s6a1r8 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 6, class 1, activity 1 teacher comments!"
c1s6a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r1,
                                  teacher: teacher1
                                })
c1s6a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r2,
                                  teacher: teacher1
                                })
c1s6a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r3,
                                  teacher: teacher1
                                })
c1s6a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r4,
                                  teacher: teacher1
                                })
c1s6a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r5,
                                  teacher: teacher1
                                })
c1s6a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r6,
                                  teacher: teacher1
                                })
c1s6a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r7,
                                  teacher: teacher1
                                })
c1s6a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 6, class 1, activity 2 badge!"
c1s6_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 2 answers!"
c1s6a2r1 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s6a2r2 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s6a2r3 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s6a2r4 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s6a2r5 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s6a2r6 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s6a2r7 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s6a2r8 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 6, class 1, activity 2 teacher comments!"
c1s6a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r1,
                                  teacher: teacher1
                                })
c1s6a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r2,
                                  teacher: teacher1
                                })
c1s6a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r3,
                                  teacher: teacher1
                                })
c1s6a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r4,
                                  teacher: teacher1
                                })
c1s6a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r5,
                                  teacher: teacher1
                                })
c1s6a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r6,
                                  teacher: teacher1
                                })
c1s6a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s6a2r7,
                                  teacher: teacher1
                                })
c1s6a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c1s6a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 6, class 1, activity 3 badge!"
c1s6_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 3 answers!"
c1s6a3r1 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s6a3r2 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s6a3r3 = UserResponse.create({
                                  user: class1_student6,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 6, class 1, activity 4 badge!"
c1s6_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 5 badge!"
c1s6_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 6 badge!"
c1s6_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 7 badge!"
c1s6_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student6
                      })

puts "Creating student 6, class 1, activity 8 badge!"
c1s6_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student6
                      })

puts "Creating student 7, class 1!"
class1_student7 = User.create({
                          first_name: "Luke",
                          last_name: "Skywalker",
                          user_name: "theforce",
                          email: "i@i.i",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })
puts "Creating student 7, class 1, pre show activity badge!"
c1s7_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student7
                      })
puts "Creating student 7, class 1, post show activity badge!"
c1s7_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student7
                      })
puts "Creating student 7, class 1, general theater activity badge!"
c1s7_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student7
                      })
puts "Creating student 7, class 1, activity 1 badge!"
c1s7_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 1 answers!"
c1s7a1r1 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c1s7a1r2 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c1s7a1r3 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c1s7a1r4 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c1s7a1r5 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c1s7a1r6 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c1s7a1r7 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c1s7a1r8 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 7, class 1, activity 1 teacher comments!"
c1s7a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r1,
                                  teacher: teacher1
                                })
c1s7a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r2,
                                  teacher: teacher1
                                })
c1s7a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r3,
                                  teacher: teacher1
                                })
c1s7a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r4,
                                  teacher: teacher1
                                })
c1s7a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r5,
                                  teacher: teacher1
                                })
c1s7a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r6,
                                  teacher: teacher1
                                })
c1s7a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r7,
                                  teacher: teacher1
                                })
c1s7a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a1r8,
                                  teacher: teacher1
                                })

puts "Creating student 7, class 1, activity 2 badge!"
c1s7_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 2 answers!"
c1s7a2r1 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c1s7a2r2 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c1s7a2r3 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c1s7a2r4 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c1s7a2r5 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c1s7a2r6 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c1s7a2r7 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c1s7a2r8 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 7, class 1, activity 2 teacher comments!"
c1s7a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r1,
                                  teacher: teacher1
                                })
c1s7a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r2,
                                  teacher: teacher1
                                })
c1s7a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r3,
                                  teacher: teacher1
                                })
c1s7a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r4,
                                  teacher: teacher1
                                })
c1s7a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r5,
                                  teacher: teacher1
                                })
c1s7a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r6,
                                  teacher: teacher1
                                })
c1s7a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c1s7a2r7,
                                  teacher: teacher1
                                })
c1s7a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c1s7a2r8,
                                  teacher: teacher1
                                })

puts "Creating student 7, class 1, activity 3 badge!"
c1s7_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 3 answers!"
c1s7a3r1 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c1s7a3r2 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c1s7a3r3 = UserResponse.create({
                                  user: class1_student7,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 7, class 1, activity 4 badge!"
c1s7_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 5 badge!"
c1s7_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 6 badge!"
c1s7_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 7 badge!"
c1s7_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class1_student7
                      })

puts "Creating student 7, class 1, activity 8 badge!"
c1s7_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student7
                      })

puts "Creating student 8, class 1!"
class1_student8 = User.create({
                          first_name: "Doug",
                          last_name: "Judy",
                          user_name: "pontiacbandit",
                          email: "j@j.j",
                          password: "aaa111",
                          teacher: false,
                          classroom: class1
                        })

puts "Creating student 8, class 1, pre show activity badge!"
c1s8_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class1_student8
                      })
puts "Creating student 8, class 1, post show activity badge!"
c1s8_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class1_student8
                      })
puts "Creating student 8, class 1, general theater activity badge!"
c1s8_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class1_student8
                      })
puts "Creating student 8, class 1, activity 1 badge!"
c1s8_badge1 = Badge.create({
                        status: 1,
                        activity: activity1,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 2 badge!"
c1s8_badge2 = Badge.create({
                        status: 0,
                        activity: activity2,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 3 badge!"
c1s8_badge3 = Badge.create({
                        status: 0,
                        activity: activity3,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 4 badge!"
c1s8_badge4 = Badge.create({
                        status: 0,
                        activity: activity4,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 5 badge!"
c1s8_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 6 badge!"
c1s8_badge6 = Badge.create({
                        status: 0,
                        activity: activity6,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 7 badge!"
c1s8_badge7 = Badge.create({
                        status: 0,
                        activity: activity7,
                        user: class1_student8
                      })

puts "Creating student 8, class 1, activity 8 badge!"
c1s8_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class1_student8
                      })

puts "Creating classroom 2!"
class2 = Classroom.create({ name: "Class 2", date: DateTime.new(2023, 2, 22, 19, 30) })

puts "Creating teacher, class 2!"
teacher2 = User.create({
                          first_name: "Hugo",
                          last_name: "Professorman",
                          user_name: "hugoproff",
                          email: "s@s.s",
                          password: "aaa111",
                          teacher: true,
                          classroom: class2,
                          access_code: "placeholderTC"
                        })

puts "Creating student 1, class 2!"
class2_student1 = User.create({
                          first_name: "Norm",
                          last_name: "Skully",
                          user_name: "skullynorm",
                          email: "r@r.r",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 1, class 2, pre show activity badge!"
c2s1_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student1
                      })
puts "Creating student 1, class 2, post show activity badge!"
c2s1_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student1
                      })
puts "Creating student 1, class 2, general theater activity badge!"
c2s1_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student1
                      })
puts "Creating student 1, class 2, activity 1 badge!"
c2s1_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 1 answers!"
c2s1a1r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s1a1r2 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s1a1r3 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s1a1r4 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s1a1r5 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s1a1r6 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s1a1r7 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s1a1r8 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 1 teacher comments!"
c2s1a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r1,
                                  teacher: teacher2
                                })
c2s1a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r2,
                                  teacher: teacher2
                                })
c2s1a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r3,
                                  teacher: teacher2
                                })
c2s1a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r4,
                                  teacher: teacher2
                                })
c2s1a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r5,
                                  teacher: teacher2
                                })
c2s1a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r6,
                                  teacher: teacher2
                                })
c2s1a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r7,
                                  teacher: teacher2
                                })
c2s1a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 2 badge!"
c2s1_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 2 answers!"
c2s1a2r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s1a2r2 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s1a2r3 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s1a2r4 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s1a2r5 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s1a2r6 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s1a2r7 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s1a2r8 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 2 teacher comments!"
c2s1a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r1,
                                  teacher: teacher2
                                })
c2s1a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r2,
                                  teacher: teacher2
                                })
c2s1a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r3,
                                  teacher: teacher2
                                })
c2s1a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r4,
                                  teacher: teacher2
                                })
c2s1a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r5,
                                  teacher: teacher2
                                })
c2s1a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r6,
                                  teacher: teacher2
                                })
c2s1a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r7,
                                  teacher: teacher2
                                })
c2s1a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 3 badge!"
c2s1_badge3 = Badge.create({
                        status: 4,
                        activity: activity3,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 3 answers!"
c2s1a3r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s1a3r2 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s1a3r3 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c2s1a3r4 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act3_question4,
                                  text: "Match 8",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 3 teacher comments!"
c2s1a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a3r1,
                                  teacher: teacher2
                                })
c2s1a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a3r2,
                                  teacher: teacher2
                                })
c2s1a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a3r3,
                                  teacher: teacher2
                                })
c2s1a3t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a3r4,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 4 badge!"
c2s1_badge4 = Badge.create({
                        status: 4,
                        activity: activity4,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 4 answer!"
c2s1a4r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 4 teacher comments!"
c2s1a4t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a4r1,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 5 badge!"
c2s1_badge5 = Badge.create({
                        status: 4,
                        activity: activity5,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 5 answers!"
c2s1a5r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question1,
                                  text: "Tableau D'Hôte Theatre",
                                  correct: true
                                  })
c2s1a5r2 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question2,
                                  text: "Montreal",
                                  correct: true
                                  })
c2s1a5r3 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question3,
                                  text: "136 years old",
                                  correct: true
                                  })
c2s1a5r4 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question4,
                                  text: "Thompson Theatreman",
                                  correct: true
                                  })
c2s1a5r5 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question5,
                                  text: "6",
                                  correct: true
                                  })
c2s1a5r6 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s1a5r7 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question7,
                                  text: "All The Small Things",
                                  correct: true
                                  })
c2s1a5r8 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act5_question8,
                                  text: "Schwarzenegger",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 5 teacher comments!"
c2s1a5t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r1,
                                  teacher: teacher2
                                })
c2s1a5t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r2,
                                  teacher: teacher2
                                })
c2s1a5t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r3,
                                  teacher: teacher2
                                })
c2s1a5t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r4,
                                  teacher: teacher2
                                })
c2s1a5t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r5,
                                  teacher: teacher2
                                })
c2s1a5t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r6,
                                  teacher: teacher2
                                })
c2s1a5t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r7,
                                  teacher: teacher2
                                })
c2s1a5t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a5r8,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 6 badge!"
c2s1_badge6 = Badge.create({
                        status: 3,
                        activity: activity6,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 6 answers!"
c2s1a6r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s1a6r2 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s1a6r3 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act6_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c2s1a6r4 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act6_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 1, class 2, activity 6 teacher comments!"
c2s1a6t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a6r1,
                                  teacher: teacher2
                                })
c2s1a6t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a6r2,
                                  teacher: teacher2
                                })
c2s1a6t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s1a6r3,
                                  teacher: teacher2
                                })
c2s1a6t4 = TeacherComment.create({
                                  text: "This one needs work!",
                                  user_response: c2s1a6r4,
                                  teacher: teacher2
                                })

puts "Creating student 1, class 2, activity 7 badge!"
c2s1_badge7 = Badge.create({
                        status: 2,
                        activity: activity7,
                        user: class2_student1
                      })

puts "Creating student 1, class 2, activity 7 answer!"
c2s1a7r1 = UserResponse.create({
                                  user: class2_student1,
                                  activity_question: act7_question1,
                                  text: "Link to art",
                                  correct: true
                                  })

puts "Creating student 1, class 2, activity 8 badge!"
c2s1_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student1
                      })

puts "Creating student 2, class 2!"
class2_student2 = User.create({
                          first_name: "Michael",
                          last_name: "Scott",
                          user_name: "littlekidlover",
                          email: "k@k.k",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })

puts "Creating student 2, class 2, pre show activity badge!"
c2s2_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student2
                      })
puts "Creating student 2, class 2, post show activity badge!"
c2s2_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student2
                      })
puts "Creating student 2, class 2, general theater activity badge!"
c2s2_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student2
                      })
puts "Creating student 2, class 2, activity 1 badge!"
c2s2_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 1 answers!"
c2s2a1r1 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s2a1r2 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s2a1r3 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s2a1r4 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s2a1r5 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s2a1r6 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s2a1r7 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s2a1r8 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 2, class 2, activity 1 teacher comments!"
c2s2a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r1,
                                  teacher: teacher2
                                })
c2s2a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r2,
                                  teacher: teacher2
                                })
c2s2a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r3,
                                  teacher: teacher2
                                })
c2s2a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r4,
                                  teacher: teacher2
                                })
c2s2a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r5,
                                  teacher: teacher2
                                })
c2s2a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r6,
                                  teacher: teacher2
                                })
c2s2a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r7,
                                  teacher: teacher2
                                })
c2s2a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 2, class 2, activity 2 badge!"
c2s2_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 2 answers!"
c2s2a2r1 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s2a2r2 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s2a2r3 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s2a2r4 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s2a2r5 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s2a2r6 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s2a2r7 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s2a2r8 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 2, class 2, activity 2 teacher comments!"
c2s2a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r1,
                                  teacher: teacher2
                                })
c2s2a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r2,
                                  teacher: teacher2
                                })
c2s2a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r3,
                                  teacher: teacher2
                                })
c2s2a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r4,
                                  teacher: teacher2
                                })
c2s2a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r5,
                                  teacher: teacher2
                                })
c2s2a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r6,
                                  teacher: teacher2
                                })
c2s2a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r7,
                                  teacher: teacher2
                                })
c2s2a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 2, class 2, activity 3 badge!"
c2s2_badge3 = Badge.create({
                        status: 3,
                        activity: activity3,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 3 answers!"
c2s2a3r1 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s2a3r2 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s2a3r3 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c2s2a3r4 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act3_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 2, class 2, activity 3 teacher comments!"
c2s2a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a3r1,
                                  teacher: teacher2
                                })
c2s2a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a3r2,
                                  teacher: teacher2
                                })
c2s2a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s2a3r3,
                                  teacher: teacher2
                                })
c2s2a3t4 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c2s2a3r4,
                                  teacher: teacher2
                                })

puts "Creating student 2, class 2, activity 4 badge!"
c2s2_badge4 = Badge.create({
                        status: 3,
                        activity: activity4,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 4 answer!"
c2s2a4r1 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: false
                                  })

puts "Creating student 2, class 2, activity 4 teacher comments!"
c2s2a4t1 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c2s2a4r1,
                                  teacher: teacher2
                                })

puts "Creating student 2, class 2, activity 5 badge!"
c2s2_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 6 badge!"
c2s2_badge6 = Badge.create({
                        status: 2,
                        activity: activity6,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 6 answers!"
c2s2a6r1 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s2a6r2 = UserResponse.create({
                                  user: class2_student2,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })

puts "Creating student 2, class 2, activity 7 badge!"
c2s2_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student2
                      })

puts "Creating student 2, class 2, activity 8 badge!"
c2s2_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student2
                      })

puts "Creating student 3, class 2!"
class2_student3 = User.create({
                          first_name: "Andy",
                          last_name: "Dwyer",
                          user_name: "mouseratratmouse",
                          email: "l@l.l",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 3, class 2, pre show activity badge!"
c2s3_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student3
                      })
puts "Creating student 3, class 2, post show activity badge!"
c2s3_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student3
                      })
puts "Creating student 3, class 2, general theater activity badge!"
c2s3_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student3
                      })
puts "Creating student 3, class 2, activity 1 badge!"
c2s3_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 1 answers!"
c2s3a1r1 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s3a1r2 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s3a1r3 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s3a1r4 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s3a1r5 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s3a1r6 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s3a1r7 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s3a1r8 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 3, class 2, activity 1 teacher comments!"
c2s3a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r1,
                                  teacher: teacher2
                                })
c2s3a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r2,
                                  teacher: teacher2
                                })
c2s3a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r3,
                                  teacher: teacher2
                                })
c2s3a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r4,
                                  teacher: teacher2
                                })
c2s3a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r5,
                                  teacher: teacher2
                                })
c2s3a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r6,
                                  teacher: teacher2
                                })
c2s3a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r7,
                                  teacher: teacher2
                                })
c2s3a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 3, class 2, activity 2 badge!"
c2s3_badge2 = Badge.create({
                        status: 4,
                        activity: activity2,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 2 answers!"
c2s3a2r1 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s3a2r2 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s3a2r3 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s3a2r4 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s3a2r5 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s3a2r6 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s3a2r7 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s3a2r8 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act2_question8,
                                  text: "Gun Metal Grey",
                                  correct: true
                                  })

puts "Creating student 3, class 2, activity 2 teacher comments!"
c2s3a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r1,
                                  teacher: teacher2
                                })
c2s3a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r2,
                                  teacher: teacher2
                                })
c2s3a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r3,
                                  teacher: teacher2
                                })
c2s3a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r4,
                                  teacher: teacher2
                                })
c2s3a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r5,
                                  teacher: teacher2
                                })
c2s3a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r6,
                                  teacher: teacher2
                                })
c2s3a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r7,
                                  teacher: teacher2
                                })
c2s3a2t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 3, class 2, activity 3 badge!"
c2s3_badge3 = Badge.create({
                        status: 3,
                        activity: activity3,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 3 answers!"
c2s3a3r1 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s3a3r2 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s3a3r3 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })
c2s3a3r4 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act3_question4,
                                  text: "Match 7",
                                  correct: false
                                  })

puts "Creating student 3, class 2, activity 3 teacher comments!"
c2s3a3t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a3r1,
                                  teacher: teacher2
                                })
c2s3a3t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a3r2,
                                  teacher: teacher2
                                })
c2s3a3t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s3a3r3,
                                  teacher: teacher2
                                })
c2s3a3t4 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c2s3a3r4,
                                  teacher: teacher2
                                })

puts "Creating student 3, class 2, activity 4 badge!"
c2s3_badge4 = Badge.create({
                        status: 3,
                        activity: activity4,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 4 answer!"
c2s3a4r1 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act4_question1,
                                  text: "Link to saved art",
                                  correct: false
                                  })

puts "Creating student 3, class 2, activity 4 teacher comments!"
c2s3a4t1 = TeacherComment.create({
                                  text: "Needs work!",
                                  user_response: c2s3a4r1,
                                  teacher: teacher2
                                })

puts "Creating student 3, class 2, activity 5 badge!"
c2s3_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 6 badge!"
c2s3_badge6 = Badge.create({
                        status: 2,
                        activity: activity6,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 6 answers!"
c2s3a6r1 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act6_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s3a6r2 = UserResponse.create({
                                  user: class2_student3,
                                  activity_question: act6_question2,
                                  text: "Match 4",
                                  correct: true
                                  })

puts "Creating student 3, class 2, activity 7 badge!"
c2s3_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student3
                      })

puts "Creating student 3, class 2, activity 8 badge!"
c2s3_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student3
                      })

puts "Creating student 4, class 2!"
class2_student4 = User.create({
                          first_name: "Leslie",
                          last_name: "Knope",
                          user_name: "pawnieparksknope",
                          email: "m@m.m",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 4, class 2, pre show activity badge!"
c2s4_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student4
                      })
puts "Creating student 4, class 2, post show activity badge!"
c2s4_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student4
                      })
puts "Creating student 4, class 2, general theater activity badge!"
c2s4_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student4
                      })
puts "Creating student 4, class 2, activity 1 badge!"
c2s4_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 1 answers!"
c2s4a1r1 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s4a1r2 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s4a1r3 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s4a1r4 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s4a1r5 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s4a1r6 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s4a1r7 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s4a1r8 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 4, class 2, activity 1 teacher comments!"
c2s4a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r1,
                                  teacher: teacher2
                                })
c2s4a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r2,
                                  teacher: teacher2
                                })
c2s4a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r3,
                                  teacher: teacher2
                                })
c2s4a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r4,
                                  teacher: teacher2
                                })
c2s4a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r5,
                                  teacher: teacher2
                                })
c2s4a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r6,
                                  teacher: teacher2
                                })
c2s4a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r7,
                                  teacher: teacher2
                                })
c2s4a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 4, class 2, activity 2 badge!"
c2s4_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 2 answers!"
c2s4a2r1 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s4a2r2 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s4a2r3 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s4a2r4 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s4a2r5 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s4a2r6 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s4a2r7 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s4a2r8 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 4, class 2, activity 2 teacher comments!"
c2s4a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r1,
                                  teacher: teacher2
                                })
c2s4a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r2,
                                  teacher: teacher2
                                })
c2s4a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r3,
                                  teacher: teacher2
                                })
c2s4a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r4,
                                  teacher: teacher2
                                })
c2s4a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r5,
                                  teacher: teacher2
                                })
c2s4a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r6,
                                  teacher: teacher2
                                })
c2s4a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s4a2r7,
                                  teacher: teacher2
                                })
c2s4a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c2s4a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 4, class 2, activity 3 badge!"
c2s4_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 3 answers!"
c2s4a3r1 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s4a3r2 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s4a3r3 = UserResponse.create({
                                  user: class2_student4,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 4, class 2, activity 4 badge!"
c2s4_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 5 badge!"
c2s4_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 6 badge!"
c2s4_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 7 badge!"
c2s4_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student4
                      })

puts "Creating student 4, class 2, activity 8 badge!"
c2s4_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student4
                      })

puts "Creating student 5, class 2!"
class2_student5 = User.create({
                          first_name: "Tiny",
                          last_name: "Terry",
                          user_name: "tinyterror",
                          email: "n@n.n",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 5, class 2, pre show activity badge!"
c2s5_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student5
                      })
puts "Creating student 5, class 2, post show activity badge!"
c2s5_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student5
                      })
puts "Creating student 5, class 2, general theater activity badge!"
c2s5_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student5
                      })
puts "Creating student 5, class 2, activity 1 badge!"
c2s5_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 1 answers!"
c2s5a1r1 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s5a1r2 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s5a1r3 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s5a1r4 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s5a1r5 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s5a1r6 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s5a1r7 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s5a1r8 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 5, class 2, activity 1 teacher comments!"
c2s5a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r1,
                                  teacher: teacher2
                                })
c2s5a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r2,
                                  teacher: teacher2
                                })
c2s5a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r3,
                                  teacher: teacher2
                                })
c2s5a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r4,
                                  teacher: teacher2
                                })
c2s5a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r5,
                                  teacher: teacher2
                                })
c2s5a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r6,
                                  teacher: teacher2
                                })
c2s5a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r7,
                                  teacher: teacher2
                                })
c2s5a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 5, class 2, activity 2 badge!"
c2s5_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 2 answers!"
c2s5a2r1 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s5a2r2 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s5a2r3 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s5a2r4 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s5a2r5 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s5a2r6 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s5a2r7 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s5a2r8 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 5, class 2, activity 2 teacher comments!"
c2s5a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r1,
                                  teacher: teacher2
                                })
c2s5a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r2,
                                  teacher: teacher2
                                })
c2s5a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r3,
                                  teacher: teacher2
                                })
c2s5a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r4,
                                  teacher: teacher2
                                })
c2s5a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r5,
                                  teacher: teacher2
                                })
c2s5a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r6,
                                  teacher: teacher2
                                })
c2s5a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s5a2r7,
                                  teacher: teacher2
                                })
c2s5a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c2s5a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 5, class 2, activity 3 badge!"
c2s5_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 3 answers!"
c2s5a3r1 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s5a3r2 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s5a3r3 = UserResponse.create({
                                  user: class2_student5,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 5, class 2, activity 4 badge!"
c2s5_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 5 badge!"
c2s5_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 6 badge!"
c2s5_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 7 badge!"
c2s5_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student5
                      })

puts "Creating student 5, class 2, activity 8 badge!"
c2s5_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student5
                      })



puts "Creating student 6, class 2!"
class2_student6 = User.create({
                          first_name: "Tom",
                          last_name: "Haverford",
                          user_name: "thesnakebite",
                          email: "o@o.o",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 6, class 2, pre show activity badge!"
c2s6_pre_show_badge = Badge.create({
                        status:1,
                        activity: pre_show,
                        user: class2_student6
                      })
puts "Creating student 6, class 2, post show activity badge!"
c2s6_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student6
                      })
puts "Creating student 6, class 2, general theater activity badge!"
c2s6_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student6
                      })
puts "Creating student 6, class 2, activity 1 badge!"
c2s6_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 1 answers!"
c2s6a1r1 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s6a1r2 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s6a1r3 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s6a1r4 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s6a1r5 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s6a1r6 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s6a1r7 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s6a1r8 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 6, class 2, activity 1 teacher comments!"
c2s6a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r1,
                                  teacher: teacher2
                                })
c2s6a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r2,
                                  teacher: teacher2
                                })
c2s6a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r3,
                                  teacher: teacher2
                                })
c2s6a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r4,
                                  teacher: teacher2
                                })
c2s6a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r5,
                                  teacher: teacher2
                                })
c2s6a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r6,
                                  teacher: teacher2
                                })
c2s6a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r7,
                                  teacher: teacher2
                                })
c2s6a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 6, class 2, activity 2 badge!"
c2s6_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 2 answers!"
c2s6a2r1 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s6a2r2 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s6a2r3 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s6a2r4 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s6a2r5 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s6a2r6 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s6a2r7 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s6a2r8 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 6, class 2, activity 2 teacher comments!"
c2s6a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r1,
                                  teacher: teacher2
                                })
c2s6a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r2,
                                  teacher: teacher2
                                })
c2s6a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r3,
                                  teacher: teacher2
                                })
c2s6a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r4,
                                  teacher: teacher2
                                })
c2s6a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r5,
                                  teacher: teacher2
                                })
c2s6a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r6,
                                  teacher: teacher2
                                })
c2s6a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s6a2r7,
                                  teacher: teacher2
                                })
c2s6a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c2s6a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 6, class 2, activity 3 badge!"
c2s6_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 3 answers!"
c2s6a3r1 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s6a3r2 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s6a3r3 = UserResponse.create({
                                  user: class2_student6,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 6, class 2, activity 4 badge!"
c2s6_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 5 badge!"
c2s6_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 6 badge!"
c2s6_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 7 badge!"
c2s6_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student6
                      })

puts "Creating student 6, class 2, activity 8 badge!"
c2s6_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student6
                      })

puts "Creating student 7, class 2!"
class2_student7 = User.create({
                          first_name: "Hank",
                          last_name: "Hill",
                          user_name: "hankhillpropane",
                          email: "p@p.",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 7, class 2, pre show activity badge!"
c2s7_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student7
                      })
puts "Creating student 7, class 2, post show activity badge!"
c2s7_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student7
                      })
puts "Creating student 7, class 2, general theater activity badge!"
c2s7_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student7
                      })
puts "Creating student 7, class 2, activity 1 badge!"
c2s7_badge1 = Badge.create({
                        status: 4,
                        activity: activity1,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 1 answers!"
c2s7a1r1 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question1,
                                  text: "Marky Mark",
                                  correct: true
                                  })
c2s7a1r2 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question2,
                                  text: "Evil Tom",
                                  correct: true
                                  })
c2s7a1r3 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question3,
                                  text: "Travissimo",
                                  correct: true
                                  })
c2s7a1r4 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question4,
                                  text: "Los Angeles",
                                  correct: true
                                  })
c2s7a1r5 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question5,
                                  text: "2095",
                                  correct: true
                                  })
c2s7a1r6 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question6,
                                  text: "Limo",
                                  correct: true
                                  })
c2s7a1r7 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question7,
                                  text: "The Boss",
                                  correct: true
                                  })
c2s7a1r8 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act1_question8,
                                  text: "Barcelona",
                                  correct: true
                                  })

puts "Creating student 7, class 2, activity 1 teacher comments!"
c2s7a1t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r1,
                                  teacher: teacher2
                                })
c2s7a1t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r2,
                                  teacher: teacher2
                                })
c2s7a1t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r3,
                                  teacher: teacher2
                                })
c2s7a1t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r4,
                                  teacher: teacher2
                                })
c2s7a1t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r5,
                                  teacher: teacher2
                                })
c2s7a1t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r6,
                                  teacher: teacher2
                                })
c2s7a1t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r7,
                                  teacher: teacher2
                                })
c2s7a1t8 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a1r8,
                                  teacher: teacher2
                                })

puts "Creating student 7, class 2, activity 2 badge!"
c2s7_badge2 = Badge.create({
                        status: 3,
                        activity: activity2,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 2 answers!"
c2s7a2r1 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question1,
                                  text: "Harrison Ford",
                                  correct: true
                                  })
c2s7a2r2 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question2,
                                  text: "Brad Garrett",
                                  correct: true
                                  })
c2s7a2r3 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question3,
                                  text: "Julie Lewis",
                                  correct: true
                                  })
c2s7a2r4 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question4,
                                  text: "USA",
                                  correct: true
                                  })
c2s7a2r5 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question5,
                                  text: "Ford Focus",
                                  correct: true
                                  })
c2s7a2r6 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question6,
                                  text: "Dana Carvey",
                                  correct: true
                                  })
c2s7a2r7 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question7,
                                  text: "David Hayter",
                                  correct: true
                                  })
c2s7a2r8 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act2_question8,
                                  text: "Macbook Air Light Grey",
                                  correct: false
                                  })

puts "Creating student 7, class 2, activity 2 teacher comments!"
c2s7a2t1 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r1,
                                  teacher: teacher2
                                })
c2s7a2t2 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r2,
                                  teacher: teacher2
                                })
c2s7a2t3 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r3,
                                  teacher: teacher2
                                })
c2s7a2t4 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r4,
                                  teacher: teacher2
                                })
c2s7a2t5 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r5,
                                  teacher: teacher2
                                })
c2s7a2t6 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r6,
                                  teacher: teacher2
                                })
c2s7a2t7 = TeacherComment.create({
                                  text: "Very good!",
                                  user_response: c2s7a2r7,
                                  teacher: teacher2
                                })
c2s7a2t8 = TeacherComment.create({
                                  text: "Almost! This one needs work.",
                                  user_response: c2s7a2r8,
                                  teacher: teacher2
                                })

puts "Creating student 7, class 2, activity 3 badge!"
c2s7_badge3 = Badge.create({
                        status: 2,
                        activity: activity3,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 3 answers!"
c2s7a3r1 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act3_question1,
                                  text: "Match 2",
                                  correct: true
                                  })
c2s7a3r2 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act3_question2,
                                  text: "Match 4",
                                  correct: true
                                  })
c2s7a3r3 = UserResponse.create({
                                  user: class2_student7,
                                  activity_question: act3_question3,
                                  text: "Match 6",
                                  correct: true
                                  })

puts "Creating student 7, class 2, activity 4 badge!"
c2s7_badge4 = Badge.create({
                        status: 1,
                        activity: activity4,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 5 badge!"
c2s7_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 6 badge!"
c2s7_badge6 = Badge.create({
                        status: 1,
                        activity: activity6,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 7 badge!"
c2s7_badge7 = Badge.create({
                        status: 1,
                        activity: activity7,
                        user: class2_student7
                      })

puts "Creating student 7, class 2, activity 8 badge!"
c2s7_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student7
                      })

puts "Creating student 8, class 2!"
class2_student8 = User.create({
                          first_name: "Bob",
                          last_name: "Belcher",
                          user_name: "burgerbob",
                          email: "q@q.q",
                          password: "aaa111",
                          teacher: false,
                          classroom: class2
                        })
puts "Creating student 8, class 2, pre show activity badge!"
c2s8_pre_show_badge = Badge.create({
                        status: 1,
                        activity: pre_show,
                        user: class2_student8
                      })
puts "Creating student 8, class 2, post show activity badge!"
c2s8_post_show_badge = Badge.create({
                        status: 1,
                        activity: post_show,
                        user: class2_student8
                      })
puts "Creating student 8, class 2, general theater activity badge!"
c2s8_general_theater_badge = Badge.create({
                        status: 1,
                        activity: general_theater,
                        user: class2_student8
                      })
puts "Creating student 8, class 2, activity 1 badge!"
c2s8_badge1 = Badge.create({
                        status: 1,
                        activity: activity1,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 2 badge!"
c2s8_badge2 = Badge.create({
                        status: 0,
                        activity: activity2,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 3 badge!"
c2s8_badge3 = Badge.create({
                        status: 0,
                        activity: activity3,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 4 badge!"
c2s8_badge4 = Badge.create({
                        status: 0,
                        activity: activity4,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 5 badge!"
c2s8_badge5 = Badge.create({
                        status: 0,
                        activity: activity5,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 6 badge!"
c2s8_badge6 = Badge.create({
                        status: 0,
                        activity: activity6,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 7 badge!"
c2s8_badge7 = Badge.create({
                        status: 0,
                        activity: activity7,
                        user: class2_student8
                      })

puts "Creating student 8, class 2, activity 8 badge!"
c2s8_badge8 = Badge.create({
                        status: 0,
                        activity: activity8,
                        user: class2_student8
                      })
