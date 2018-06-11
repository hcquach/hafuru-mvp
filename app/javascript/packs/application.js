import "bootstrap";
import { loadDynamicBannerText } from '../components/banner';
// initUpdateNavbarOnScroll();
// import { initUpdateNavbarOnScroll } from '../components/navbar';
loadDynamicBannerText();

// Wrap all the code in a IIFE to prevent the global scope pollution;
;(function() {
  "use strict";

  // Quotes Collection
  var quotes = [{
      "quote": "A grateful heart is a magnet for miracles."
    }, {
      "quote": "Grateful turns what we have into enough."
    }, {
      "quote": "Today I'm counting my blessings, not my problems"
    }],

    // Colors Collection
    colors = ["#E0D144", "#E4A629", "#F39040", "#E66751", "#CA83A5", "#A39BCB", "#8EB7BF", "#6DC4A6", "#8AA651"],

    // Random number Constructor
    // Generate a random number within a provided
    // range a stores the last value, so the next value
    // doesn't macth the previous
    Random = function Random(max) {
      var prev, next;
      this.max = max;
      this.generate = function generate() {
        while(prev === next)
          next = Math.floor(Math.random() * this.max);
        prev = next;
        return next;
      };
    },

    randomQuote = new Random(quotes.length),  // Random instance for quote
    randomColor = new Random(colors.length),  // Random instance for colors

    // Main app function
    // Generates Quotes and app themes
    newQuote = function newQuote(e) {
      var
        // Get a quote and a theme
        quote = quotes[randomQuote.generate()],
        color = colors[randomColor.generate()],

        // Cache some DOM Elements
        $page = $('.page'),
        $button = $page.find('.new-quote'),
        $quote = $page.find('.quote'),
        $quoteFooter = $quote.find('.quote__footer'),
        $footerLinks = $('.page-footer a'),

        // Test if the quote has an author
        hasAuthor = !!quote.author;

      // Replace the old quote with a new one
      $quote
        .find('.quote__body')
        .html( quote.quote );

      // Change  the theme
      $page.css('background-color', color);
      $button.css('color', color);
      $footerLinks.css('color', color);

      // Some quotes have author
      // others not
      if ( hasAuthor ) {
        // Put the text and
        // show the footer
        $quoteFooter
          .find('.quote__cite')
          .text( '– ' + quote.author + ' –')
          .end()
          .show();

      } else {
        // hide the footer
        $quoteFooter.hide()
      }

    },

    // Buttons functionality
    registerHandlers = function registerHandlers() {
      $(document)
        .on('click', '.new-quote', newQuote);
    },

    // Initialization using IIFE
    // https://en.wikipedia.org/wiki/Immediately-invoked_function_expression
    init = function init(){
      registerHandlers();
      newQuote();
    }(); // <- look at this!

})();
