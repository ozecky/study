class StudyController
  chap_1_1: ->
    $('tr.tr td').on 'click', ->
      console.log('tr.tr td')
      return
    $('tr.tr').on 'click', ->
      console.log('tr.tr')
      return
    $('tbody.tbody').on 'click', ->
      console.log('tbody.tbody')
      return
    $('table.table').on 'click', ->
      console.log('table.table')
      return
    $('div.table-content').on 'click', ->
      console.log('div.table-content')
      return
    $('div.table-container').on 'click', ->
      console.log('div.table-container')
      return
    $('body').on 'click', ->
      console.log('body')
      return
    $('html').on 'click', ->
      console.log('html')
      return
    $(document).on 'click', ->
      console.log('document')
      return
    $(window).on 'click', ->
      console.log('window')
      return
    return






















  chap_1_2: ->
    $('tbody.tbody .link-delete').on 'click', ->
      $(@).closest('tr').remove()
      false
    $('.link-add').on 'click', ->
      $tr = $('tbody.tbody-dummy>tr').clone(true)
      $('tbody.tbody').append($tr)
      false
    return


















  chap_1_2_re_call: ->
    $('tbody.tbody .link-delete').on 'click', ->
      $(@).closest('tr').remove()
      false
    $('.link-add').off 'click'
    $('.link-add').on 'click', ->
      $tr = $('tbody.tbody-dummy>tr').clone(true)
      $('tbody.tbody').append($tr)
      Study.study_1.chap_1_2_re_call()
      false
    return












  # delegete
  chap_1_3: ->
    $(document).on 'click', ->
      console.log(@)
      return
    $(document).on 'click', 'td.td-item', ->
      console.log(@)
      return
    return











  chap_1_3_small: ->
    $(document).on 'click', 'td.td-item', ->
      console.log("document:")
      console.log(@)
      return
    $('tbody.tbody').on 'click', 'td.td-item', ->
      console.log("tbody.tbody:")
      console.log(@)
      return
    return














  chap_1_4: ->
    $(document).on 'click', 'tbody.tbody .link-delete', ->
      $(@).closest('tr').remove()
      false
    $('.link-add').on 'click', ->
      $tr = $('tbody.tbody-dummy>tr').clone(true)
      $('tbody.tbody').append($tr)
      false
    return

















  chap_1_4_block: ->
    $('div.table-content').on 'click', (e) ->
      e.stopPropagation()
      return
    return

















  chap_1_5: ->
    $('table.table').on 'click', 'tbody.tbody .link-delete', ->
      $(@).closest('tr').remove()
      false
    $('.link-add').on 'click', ->
      $tr = $('tbody.tbody-dummy>tr').clone(true)
      $('tbody.tbody').append($tr)
      false
    return



















this.Study.study_1 = new StudyController