Day 38 - Modals, AutoComplete, REST API
============

Quiz:
-----

Assume you have the rails app in `validately`. It has a form to submit stock
purchases (symbol, price, and quantity). Stock Brokers are fiddly and prone to
errors, and frequently forget to fill in one of the fields. Waiting for the
server to return a new page-load with a form tends to take time. AND TIME MEANS
MONEY MONEY DOLLAR BILLS YALL.

Your goal: use JavaScript to prevent form submission unless all three inputs
have a value. You should add some visual feedback like "Field is Required" if it
is missing.

Some code for you:

```js

$(window).ready(function(){

  $("#stock-form").on("submit", function(submitEvent) {

    var symbol = $("#symbol_field_id").val(); // gets the value from the field

    submitEvent.preventDefault(); // Stops the form from submitting
  });

});

```


Today
----

1. Quiz
2. Modals
3. Remote form in Modals
4. Text Autocomplete (typeahead.js)
5. REST APIs


Homework
--------

1. Implement Autocomplete in a Rails app
2. Import the CSV in `assets/academy_awards.csv` into a `Nomination` model
3. It should let you search, optionally using `pg_search` for Academy Awards Nominee
4. Use `https://github.com/yourabi/twitter-typeahead-rails` to get the assets
   loaded
5. Use http://twitter.github.io/typeahead.js/ and the Remote example to load
   from a JSON api (http://twitter.github.io/typeahead.js/examples/)

notes: 

* Refer to the modally (/states)
* The import is best done in a Rake task, but could also be in seeds
* Custom Templates would be very cool, but completely optional
