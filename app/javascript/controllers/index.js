// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CharacterCounterController from "./character_counter_controller"
application.register("character-counter", CharacterCounterController)

import ClassroomActivityController from "./classroom_activity_controller"
application.register("classroom-activity", ClassroomActivityController)

import EditAjaxController from "./edit_ajax_controller"
application.register("edit-ajax", EditAjaxController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import RegexController from "./regex_controller"
application.register("regex", RegexController)

import SignupController from "./signup_controller"
application.register("signup", SignupController)

import VideoQuestionsController from "./video_questions_controller"
application.register("video-questions", VideoQuestionsController)
