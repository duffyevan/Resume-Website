<!DOCTYPE html>
<html>
<head>
    <title>Evan Duffy</title>

<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"
  integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="
  crossorigin="anonymous"></script>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript-->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <!-- My customizations -->
    <link rel="stylesheet" type="text/css" href="/css/evan.css">
</head>


<body>
    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header">
            <img alt="Brand" src="http://pokemoncreed.net/img/icon/Bidoof.gif">
            <a class="navbar-brand hvr-shutter-out-horizontal " href="#" id="nav-name">Evan Duffy</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
           <li class="hvr-underline-reveal active"><a href="/">Home<span class="sr-only">(current)</span></a></li>
           <li class="hvr-underline-reveal"><a href="/projects">Projects<span class="sr-only"></span></a></li>
           <li class="hvr-underline-reveal"><a href="/resume.php">Resume<span class="sr-only"></span></a></li>
           <li class="hvr-underline-reveal"><a href="/contact.php">Contact<span class="sr-only"></span></a></li>
       </div><!-- /.navbar-collapse -->
   </div><!-- /.container-fluid -->
</nav>



<div class="container" style="padding: 0px;">
    <center>    
        <div class="hib" style="padding: 50px;">
            <img src="resources/fish.gif" class="avatar" style="width: 150px;">
            <br>
            <h1 class="myname hvr-shutter-out-horizontal" style="border-radius: 8px;">Evan L. Duffy</h1>
        </div> 
    </center>
    <div class="text-box">
        <h1>Hey!</h1>
        <p>I'm Evan Duffy, and I am a recent Computer Science graduate from Worcester Polytechnic Institute who is soon to start working at VMware full time! I have school and work experience using agile software development and scrum. Two of my summers in college were spent interning at VMware (which was awesome) where I worked on adding new features to SAAS applications. My other summer was spent at Cynosure Inc. updating legacy code. I'm a big fan of hobby electronics, 3D printing, music, camping and frisbee (not necessarily in that order!).</p>
        <p>This site is intended to act as an extension of my resume, feel free to look around and even <a href="/contact.php">reach out to me</a> if you'd like!</p>
    </div>
    
</div>
<div class="myfooter">
    <p>Evan Duffy <br> 
        <?php echo date('F Y') ?></p>
    </div>
</body>
</html>
