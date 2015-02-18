$(window).ready(function(){


  var states = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.obj.whitespace('value'),
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    remote: '/states?search=%QUERY'
  });

  states.initialize();

  $('#the-basics .typeahead').typeahead(null, {
    displayKey: 'name',
    source: states.ttAdapter()
  });
})
