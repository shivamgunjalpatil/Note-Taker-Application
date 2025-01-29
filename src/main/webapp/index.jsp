<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Note Taker: Home Page</title>
    <%@include file="all_js_css.jsp"%>
    <style>
      body {
        font-family: 'Roboto', sans-serif;
        background: linear-gradient(135deg, #ff8a00, #e52e71); /* Colorful gradient */
        color: #fff;
        margin: 0;
        padding: 0;
      }

      .hero-section {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        min-height: 90vh;
        text-align: center;
        padding: 20px;
      }

      .hero-title {
        font-size: 3rem;
        font-weight: bold;
        color: #fff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
      }

      .hero-subtitle {
        font-size: 1.5rem;
        color: #f1c40f;
        margin: 10px 0;
        text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
      }

      .hero-button {
        margin-top: 20px;
        font-size: 1.2rem;
        padding: 12px 35px;
        border: none;
        border-radius: 50px;
        background: #3498db;
        color: #fff;
        text-transform: uppercase;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        transition: background 0.3s, transform 0.2s;
      }

      .hero-button:hover {
        background: #2980b9;
        transform: translateY(-5px);
      }

      .hero-image {
        max-width: 400px;
        margin-top: 20px;
        transition: transform 0.3s ease-in-out;
      }

      .hero-image:hover {
        transform: scale(1.1);
      }
    </style>
  </head>
  <body>
    <div class="container">
      <%@include file="navbar.jsp"%>

      <!-- Hero Section -->
      <div class="hero-section">
        <h1 class="hero-title">Welcome to NoteTaker</h1>
        <p class="hero-subtitle">Your personal assistant for organizing ideas and managing tasks!</p>
        <a href="add_notes.jsp" class="hero-button">Start Taking Notes</a>
        <img src="img/notepad.png" alt="NoteTaker" class="hero-image img-fluid">
      </div>
    </div>
  </body>
</html>
