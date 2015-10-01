m = require 'mithril'

class SixTeenNotes
  constructor : (score) ->
    return m.prop score

class SixTeenViewModel
  init : (score) =>
    @score = new SixTeenNotes score
    @judge = m.prop ""
    audio = new Audio score.audio
    audio.play()
    @time = m.prop audio.currentTime
    do update = =>
      @time audio.currentTime
      m.redraw()
      window.requestAnimationFrame update

   onTouch : (note, event) =>
     note.clearTime = @time()
     judge = if note.time - 0.1 < note.clearTime < note.time + 0.1
       "great"
     else if note.time - 0.2 < note.clearTime < note.time + 0.2
       "good"
     else "bad"
     @judge judge

class SixTeen
  constructor : ->
    @_vm = new SixTeenViewModel()
    return {
      controller : (score) => @_vm.init score
      view : @_view
    }

  _view : (ctrl) =>
    getNoteClass = (note) =>
      if note.clearTime?
        if note.clearTime + 0.2 < @_vm.time() then return "note-delete"
        else return "note-hit"
      if @_vm.time() >= note.time + 0.6 then return "note-delete"
      if @_vm.time() >= note.time + 0.4 then return "note-hide"
      if @_vm.time() >= note.time - 0.2 then return "note-show"

    addTouchEvent = (note, element, initialized, context) ->
      unless initialized
        element.addEventListener 'touchstart', @_vm.onTouch.bind(this, note), false
    m "div#game", [
      m "span#judge", @_vm.judge()
      m "div#notes", @_vm.score().notes.map (note) =>
        m "img.note.row-#{note.row}.column-#{note.column}", {
          src : "./image/dest.png"
          class : getNoteClass note
          config : addTouchEvent.bind this, note
        }
    ]

module.exports = SixTeen
