import "bootstrap";
import { deleteSweetAlertButton, userUpdatedSweetAlertButton, matchSweetAlertCheckButton, categoryError, matchSweetAlertButton, signInSweetAlertButton, signOutSweetAlertButton, matchSweetAlertButtonSuccess, gratitudeSweetAlertButtonError,gratitudeSweetAlertButtonSuccess, gratitudeSweetAlertButtonUpdateSuccess,gratitudeSweetAlertButtonUpdateError, collaborationItemSweetAlertButtonUpdateSuccess, collaborationItemSweetAlertButtonUpdateError } from '../components/sweetalerts';
deleteSweetAlertButton();
matchSweetAlertCheckButton();
userUpdatedSweetAlertButton();
categoryError();
matchSweetAlertButton();
signInSweetAlertButton();
signOutSweetAlertButton();
matchSweetAlertButtonSuccess();
gratitudeSweetAlertButtonError();
gratitudeSweetAlertButtonSuccess();
gratitudeSweetAlertButtonUpdateSuccess();
gratitudeSweetAlertButtonUpdateError();
collaborationItemSweetAlertButtonUpdateSuccess();
collaborationItemSweetAlertButtonUpdateError();

import { loadDynamicBannerText } from '../components/banner';
loadDynamicBannerText();

// import '../components/select2';
import '../components/category_choice';

// Navbar on scroll
import { initUpdateNavbarOnScroll } from '../components/navbar';
initUpdateNavbarOnScroll();


function scrollLastMessageIntoView() {
  var messages = document.querySelectorAll('.message');
  var lastMessage = messages[messages.length - 1];
  console.log("Are we in there");
  console.log(messages);
  console.log(lastMessage);

  if (lastMessage !== undefined) {
    lastMessage.scrollIntoView();
  }
}

window.scrollLastMessageIntoView = scrollLastMessageIntoView;

// Wrap all the code in a IIFE to prevent the global scope pollution;
;(function() {
  "use strict";

  // Quotes Collection
  var quotes = [{
      "quote": "A grateful heart is a magnet for miracles."
    }, {
      "quote": "Grateful turns what we have into enough."
    }, {
      "quote": "Happiness is the spiritual experience of living every minute with love, grace, and gratitude."
    }, {
      "quote": "There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle."
    }, {
      "quote": "You simply will not be the same person two months from now after consciously giving thanks each day for the abundance that exists in your life."
    }, {
      "quote": "The more you use gratitude every day, the greater the good you will bring into your life."
    }, {
      "quote": "When we focus on our gratitude, the tide of disappointment goes out and the tide of love rushes in."
    }, {
      "quote": "To speak gratitude is courteous and pleasant, to enact gratitude is generous and noble, but to live gratitude is to touch heaven."
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
