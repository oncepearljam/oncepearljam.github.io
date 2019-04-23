<!DOCTYPE html>
<html class="uk-height-1-1 home">

<head>
  <title>Once (a Pearl Jam tribute)</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="uikit.css" />
  <link rel="stylesheet" href="css/components/sticky.min.css" />
  <link rel="stylesheet" href="css/components/slideshow.min.css" />

  <link rel="stylesheet" href="custom.css" />

  <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

  <!--
        <script src="js/jquery.js"></script>
		-->
  <script src="js/uikit.min.js"></script>
  <script src="js/components/sticky.min.js"></script>
  <script src="js/components/slideshow.js"></script>
  <script src="js/components/parallax.min.js"></script>
  <style>

  </style>

</head>

<body class="uk-height-1-1">

  <div class="uk-flex" data-uk-scrollspy="{ target:'.section', repeat:true }">

    <div class="uk-flex-item-1"></div>

    <!-- block vertical aligned middle -->
    <div class="block-alpha">

      <!-- Navbar -->

      <div class="uk-flex uk-flex-center" data-uk-sticky="{top:20}" accesskey>
        <ul class="uk-navbar-nav">
          <li><a href="#home" data-uk-smooth-scroll autofocus>Home</a></li>
          <li><a href="#agenda" data-uk-smooth-scroll>Agenda</a></li>
          <li><a href="#media" data-uk-smooth-scroll>Media</a></li>
          <li><a href="#contact" data-uk-smooth-scroll>Contact</a></li>
        </ul>
      </div>

      <!-- Main -->

      <div id="home" class="uk-text-center section">
        <img src="images/logo-all.png" class="logo">

        <div class="fb-follow" data-href="https://www.facebook.com/once.apearljamtribute" data-layout="standard" data-show-faces="false"></div>

      </div>

      <!-- Agenda -->
      <jsp:include page="agenda.jsp" />

      <!-- Media -->
      <jsp:include page="media.jsp" />

      <!-- Contact -->
      <jsp:include page="contact.jsp" />

    </div>
    <!-- block -->

    <div class="uk-flex-item-1"></div>

  </div>

  <script>
    var current = '';
    //$('.uk-navbar-nav > * > *')[0].focus();
    $('[data-uk-scrollspy]').on('inview.uk.scrollspy', function(e) {
      console.log('change bg', e.target.id);
      $('html').removeClass(current);
      current = e.target.id;
      $('html').addClass(e.target.id);

    });
  </script>
</body>

</html>
