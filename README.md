# Project_1
# Trash or Treasure

Very basic CRUD with simple entity relationships.
Allows a user to sign up or log in.
Once logged in, the user can post an image to which other users can comment.


### TODOs (marked if implemented):

- [ ]  Further styling.
- [ ]  Ability to edit a comment or post.
- [ ]  Ability to upload more than one image.
- [ ]  AWS for uploads (currently cloudinary).

#### Built with:

 - Ruby 2.7.3
 - Rails 5.2.5
 - HTML
 - CSS

#### Entity Relationships:

 ![relationship diagram](/trash_erd.png)

##

## Installation

Clone Repo and the change directory into crudbud folder,
then, from the command line..

```
$ git clone https://github.com/PaulCalnan/project1.git
$ cd crudbud
$ rails db:create
$ rails db:seed
$ rails server
```

## Live version on Heroku

[Try it here!.. ](https://trash-treasure.herokuapp.com/login)

## Screen shots

Log In screen..

![Log in screen](/trash_login.png)

Post page with comments..

![Post screen](/trash_show1.png)
