# Welcome to Your Personal Music Management System!
 
  This command-line application allows users to manage personal music data.

  ## Features

  - See a user's lists of songs, artists, albums, and playlists after logging in.
  - Retrieve information such as the artist, album, and the duration of the song based on song selection.
  - Play the selected song. Currently only Spotify is supported. Spotify app installation required.
  - See stats about your music collection such as the total number of your songs and albums.
  - Know interesting facts about the entire database. You can get answers to questions such as:
    - Who is the person with most songs?
    - Who is the person with most albums?
    - In this database, which song is the longest song? Who has the longest song?
    - In this database, which playlist is the playlist with most songs?

---

  ## Getting Started

- Please `fork` this github folder first, then `clone and download` it to your own computer.
- Open your terminal, type `bundle install` to install all Ruby gems required for this application, and then type `ruby run/run.rb`. This should give you a menu of options.
- Use the arrow keys to navigate between options.

---

  ## Instruction for new users

- The first menu allows for you to create a new user. Input a username and password to create the account. 
- As a new user, you may add your data to the currently available `.csv` data file under the folder `/db`. You may have to edit your `.csv` file so that our application can get and retrieve your data. (Please see the following section for how to prepare your `.csv` file.)
- After you import your data, in your terminal, please type `rake db:seed`, if successful, your data should be already in our database `development.db` under `/db` folder. 
---

  ## For New Users: How to create and prepare your .CSV file?
  
- We recommend new users to generate .csv files via [Exportify](https://rawgit.com/watsonbox/exportify/master/exportify.html), a free app that automatically generates .csv file for each Spotify playlist.

- The sample data included here is a combination of several playlists for two users. After we retrieve data from [Exportify](https://rawgit.com/watsonbox/exportify/master/exportify.html), we also included account information (username and password) in the sample data file. 

- **Additional Tips**: If you are not familiar with .csv file format, please check out [Excel to CSV](https://knowledgebase.constantcontact.com/articles/KnowledgeBase/6409-saving-an-excel-file-as-a-csv-file?lang=en_US).

- **Additional Tips**: If you want to get data from other music and video sources, please check out the [Payed option for many sources](https://freeyourmusic.com/) for details. 

---
  ## The structure of our menu choices

```
Welcome
  1. Log In
      * log in
          1. Your Music
              - What would you like to see?
              1. Your Songs
                  - What song would you like to choose?
                  - Choose a song
                      - What information would you like to see for this song?
                      1. Artist
                      2. Album
                      3. Duration of the song
                      4. Play Song
                          - only works with Spotify app
              2. Your Playlists
                 - Lists your playlists by name.
              3. Your Artists
                  - Which artist would you like to choose?
                  - choose artist
                    - What information would you like to know for this artist?
                  1. Songs
                  2. Albums
              4. Your Albums
                  - Which album would you like to choose?
                  - Choose album
                    - What information would you like to know for this album?
                  1. Songs
                  2. Artists
              5. No. I don't want anything. take me back to the main menu.
          2. Your Statistics
              - Which statistics would you like to see?
              1. Total number of songs
                  - You have (number) songs
              2. Total number of albums
                  - You have (number) albums
          3. Suggestion
              - currently in production
          4. Intersting facts
              - What fact would you like to see?
              1. Person with most songs
              2. Person with most albums
              3. The longest song in this database
                  - Gives the song and user information
                  - Asks if you want to play the song
              4. the biggest playlist in this database
                  - Gives playlist name, user, and number of songs.
          5. Nothing. Back to Welcome menu.
  2. Create a New Account
      - Create account
  3. Exit. I don't want to do anything today. :(
```

---
  ## Authors

- [Trey Beauchamp](https://github.com/tbeau5595)
- [Jing Chen](https://github.com/jcjc2019)

---
  ## Built with

- [Ruby](http://ruby-doc.org/)
- [ActiveRecord](https://api.rubyonrails.org/classes/ActiveRecord.html)
- [Rake](https://ruby.github.io/rake/)
- [TTY::Prompt](https://github.com/piotrmurach/tty-prompt#ttyprompt-)
- [SQLite3](https://rubygems.org/gems/sqlite3/versions/1.3.11)
---
  ## Version
    
- 0.1. (March 8, 2019)


      
---
  ## Acknowledgements
- All instructors at the Flatiron School Houston campus. 
- All classmates in the Flatiron School Houston campus 021819 cohort.
- Comments and advice are always appreciated! :)
---