// Wrap all the code in a IIFE to prevent the global scope pollution;
;(function() {
  "use strict";

  // Quotes Collection
  var quotes = [{
      "quote": "It's a good week<br>to have a good week."
    }, {
      "quote": "Will it be easy? Nope.<br>Worth it? Absolutely."
    }, {
      "quote": "Be so good<br>they can't<br>ignore you.",
      "author": "Steve Martin"
    }, {
      "quote": "Life begins<br>after coffee."
    }, {
      "quote": "Make today<br>so awesome<br>that yesterday<br>gets jealous."
    }, {
      "quote": "You can't be both<br>awesome and negative.<br>Choose one.",
      "author": "Karen Salmansohn"
    }, {
      "quote": "Don't wait for<br>opportunity.<br>Create it."
    }, {
      "quote": "Life is like<br>a cup of tea.<br>It's all in how<br>you make it."
    }, {
      "quote": "Wake up with<br>determination.<br>Go to bed with<br>satisfaction."
    }, {
      "quote": "The grass is<br>greener where<br>you water it."
    }, {
      "quote": "Dear Monday. I want to break up. I'm seeing Tuesday and dreaming about Friday. It's not me, It's you."
    }, {
      "quote": "Everything It's hard<br>before It is easy.",
      "author": "Goethe J.W."
    }, {
      "quote": "Wake up.<br>Kick ass.<br>Be kind.<br>Repeat."
    }, {
      "quote": "Either you run the day<br>or the day runs you."
    }, {
      "quote": "Every morning<br>you have two choices:<br>Continue to sleep<br>with your dreams,<br>or wake up<br>and chase them."
    }, {
      "quote": "The dream is Free.<br>Hustle sold separately."
    }, {
      "quote": "Some succeed because they are destined to but most succeed because they are detemined to.",
      "author": "Henry Van Dyke"
    }, {
      "quote": "Quit slacking and<br>make it happen."
    }, {
      "quote": "Put your<br>positive<br>pants on."
    }, {
      "quote": "You don't have to be great to start, but you have to start to be great.",
      "author": "Zig Ziglar"
    }, {
      "quote": "Punch today<br>in the face."
    }, {
      "quote": "Get up,dress up,<br>show up and<br>never give up."
    }, {
      "quote": "Do what you have to do until you can do what you want to do.",
      "author": "Oprah Winfrey"
    }, {
      "quote": "Stay humble.<br>Hustle hard."
    }, {
      "quote": "Better days are coming:<br>They are called<br>Saturday &amp; Sunday."
    }, {
      "quote": "Self-confindence<br>is the best outfit.<br>Rock It and own It."
    }, {
      "quote": "I can.<br>I will."
    }, {
      "quote": "May your coffee<br>be strong and your<br>Monday productive."
    }, {
      "quote": "I'm in charge of how I feel, and today I'm choosing happiness."
    }, {
      "quote": "Suck it up<br>Buttercup"
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

    // Opens a new tweet window with the quote shown on
    // screen and some other parameters.
    // https://dev.twitter.com/web/intents
    composeTweet = function composeTweet(text) {
      // My tweet object
      var tweet = {
        url: "https://twitter.com/intent/tweet?",
        via: "via=AlexisReina&",
        hashtags: "hashtags=freecodeamp,quotemachine&",
        related: "related=@CreativeMarket&",
        text: "text=" + $('.quote__body').html().replace(/<br>|\s/g, '+')
      };

      // Open the tweet window
      // https://developer.mozilla.org/en-US/docs/Web/API/Window/open#Examples
      return window.open(
        tweet.url + tweet.hashtags + tweet.via + tweet.related + tweet.text,
        "Tweet This Quote",
        "resizable,scrollbars,status,width=550px,height=420px"
      );
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
        .on('click', '.new-quote', newQuote)
        .on('click', '.tweet', composeTweet);
    },

    // Initialization using IIFE
    // https://en.wikipedia.org/wiki/Immediately-invoked_function_expression
    init = function init(){
      registerHandlers();
      newQuote();
    }(); // <- look at this!

})();
