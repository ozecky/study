# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
class StudyItemsController
  hide_message: ->
    setTimeout ->
      $('#flash-message-container').hide()
    , 2000
    return
  show_message: ->
    if $('#flash-message-container .alert-success').length > 0
      $('#flash-message-container').slideDown(1000, @hide_message)
    else if $('#flash-message-container .alert-danger').length > 0
      $('#flash-message-container').slideDown(1000)
    $('#flash-message-container .alert-danger .button-close').on 'click', ()->
      $('#flash-message-container').hide()
      return
    return
this.Study.study_items = new StudyItemsController