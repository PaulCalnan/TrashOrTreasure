# Project_1
# Trash or Treasure

Very basic Rails CRUD with simple entity relationships.  
Allows a user to sign up or log in.  
Once logged in, the user can post an image to which other users can comment.


### TODOs (marked if implemented):

- [ ]  Further styling.
- [ ]  Ability to edit a comment or post.
- [ ]  Ability to upload more than one image per post.
- [ ]  Implement AWS for uploads (currently cloudinary).

#### Built with:

 - Ruby 2.7.3
 - Rails 5.2.5
 - HTML
 - CSS

#### Entity Relationships:

A User HAS_MANY Comments  
A User HAS_MANY Posts  
A Post HAS_MANY Comments  


 ![relationship diagram](/trash-erd.png)

##

## Installation

Clone Repo then change directory into folder.  
(Assuming you have Ruby and Rails versions above)  
Then from your command line..  

```
$ git clone https://github.com/PaulCalnan/project1.git
$ cd (your_folder_name)
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails bundle
$ rails server
```

## Live version on Heroku

[Try Trash or Treasure here!.. ](https://trash-treasure.herokuapp.com/login)

## Screen shots

Log In screen..

![Log in screen](/trash_login.png)

Post page with comments..

![Post screen](/trash_show1.png)
