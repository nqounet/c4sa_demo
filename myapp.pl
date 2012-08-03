use utf8;
use Mojolicious::Lite;

get '/' => 'index';

app->start;

__DATA__

@@ index.html.ep
% layout 'default';
% title 'たいとる';
<div class="container">
  <div class="hero-unit">
    <h1>はろーわーるど！</h1>
    <p>こんにちは！</p>
    <p><%= scalar localtime %></p>
  </div>
</div>

@@ layouts/default.html.ep
<!DOCTYPE html>
<html lang="ja-JP">
<head>
  <meta charset="<%= app->renderer->encoding %>">
  <title><%= title %></title>
  %= stylesheet '/tb/css/bootstrap.min.css'
  %= stylesheet '/tb/css/bootstrap-responsive.min.css'
  %= stylesheet '/css/app.css'
  %= javascript '/js/jquery.js'
  %= javascript '/tb/js/bootstrap.min.js'
  %= javascript '/js/app.js'
</head>
<body>
  %= content
</body>
</html>
