// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import EditAjaxController from "./edit_ajax_controller"
application.register("edit-ajax", EditAjaxController)

import ClassroomActivityController from "./classroom_activity_controller"
application.register("classroom-activity", ClassroomActivityController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)

import ScrollTo from 'stimulus-scroll-to'
application.register("scroll-to", ScrollTo)
