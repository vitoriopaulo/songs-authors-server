This is the first full-stack (front-end and back-end) project developed in
the scope of the program of the WDI (Web Development Immersive) 020 Fall
class Boston.

The back-end of the web-application was designed as a custom built API.

Technologies used to build the server-side engine of the web application:
Ruby, Rails, PostgreSql, Sql, GIT, GITHUB, HEROKU.

Concept: The API, as part of a full-stack web application, was inspired in
the universe of the music. In it's first release, the server-side engine was
thought to allow registered users to build and manipulate their own list of
songs (data) by interaction with a SQL database through CRUD (create, read,
update, and delete) actions.

Simple in essence, the API is thought on top of a relationship of One to Many:
A (registered) user has many songs; a song belongs to an (registered) user.
In this context, ownership of the element song is established by the user when
creating his (her) own songs: the API engine only allows an (registered) user
to execute CRUD actions to its own list of songs then.

Problem solving approach and development process: the web application as a
whole was thought to be designed as an integrated product. In this way of
thinking, both importance was given to the front-end and back-end of the
web application: they were conceptualized, developed, tested, debugged and
released togheter, as an integrated product.

The following url display the skecthed wireframe of the ERD of the custom built
API of the web application:
https://78.media.tumblr.com/7dcdec912628131544afa0a64119659e/tumblr_oxizr7HQX51wvd0d5o1_1280.jpg

The client-side of the web application is also hosted in Github:
https://github.com/vitoriopaulo/songs-authors-client

Bellow follows the deployed urls of both front-end and back-end of the
full-stack web application:
https://vitoriopaulo.github.io/songs-authors-client/
https://songs-and-authors.herokuapp.com/

By: Vitorio Paulo :: Made with much love for General Assembly.
Boston, MA. USA. WDI 020 Fall Class 2017.
