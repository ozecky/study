class Study2Controller
  chap_1: ->
    $('#button-chap-1').on 'click', ->
      console.log('button-chap-1 click')
      return
    return


















  chap_2_1: ->
    $('#button-chap-2-1').on 'click', ->
      $(@).trigger('ata.click')
      return
    $('#button-chap-2-1').on 'ata.click', ->
      console.log('button-chap-2-1 ata.click')
      return
    return













  chap_2_2: ->
    $('#button-chap-2-2').on 'click', ->
      $('#content-chap-2-2').trigger('ata.click')
      return
    $('#content-chap-2-2').on 'ata.click', ->
      console.log('content-chap-2-2 ata.click')
      return
    return















  chap_3_1: ->
    $('#button-chap-3-1').on 'click', ->
      $(@).trigger('ata.click', $(@).prev('input').val())
      return
    $('#button-chap-3-1').on 'ata.click', (e, args) ->
      console.log('button-chap-3-1 ata.click args=' + args)
      return
    return












  chap_3_2: ->
    $('#button-chap-3-2').on 'click', ->
      firstName = $(@).prevAll('input.input-first').val()
      familyName = $(@).prevAll('input.input-family').val()
      $(@).trigger('ata.click', [firstName, familyName])
      return
    $('#button-chap-3-2').on 'ata.click', (e, firstName, familyName) ->
      console.log('button-chap-3-2 ata.click first=' + firstName + ' family=' + familyName)
      return
    return





  chap_3_3: ->
    $('#button-chap-3-3').on 'click', ->
      firstName = $(@).prevAll('input.input-first').val()
      familyName = $(@).prevAll('input.input-family').val()
      name = {first: firstName, family: familyName}
      $(@).trigger('ata.click', name)
      return
    $('#button-chap-3-3').on 'ata.click', (e, name) ->
      console.log('button-chap-3-3 ata.click first=' + name.first + ' family=' + name.family)
      return
    return












  chap_4: ->
    $('#common-modal').on 'ata.click', '.link-copy', (e, answer) ->
      $('#input-chap-4').val(answer)
      $('#common-modal').modal('hide')
      return
    return



  chap_4_modal: ->
    $('.link-copy').on 'click', ->
      answer = $(@).closest('tr').find('th').text()
      $(@).trigger('ata.click', answer)
      false
    return















this.Study.study_2 = new Study2Controller