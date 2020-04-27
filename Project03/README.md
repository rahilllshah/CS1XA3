# CS 1XA3 Project03 - shahr39

## Usage 

See  https://docs.anaconda.com/anaconda/install/  for details on how to install conda environment. Once installed, create a new conda environment with *conda create -n djangoenv python=3.7*. Then activate your conda environment with *conda activate djangoenv*.

Run locally with 
> python manage.py runserver localhost:8000

Run on mac1xa3.ca server with 
> python manage.py runserver localhost:100888

Access at
> https://mac1xa3.ca/e/shahr39/

### Logging in (Log in with User One)
**User One:** Username: User1 | Password: Soccer_#123
**User Two:** Username: User2 | Password: Hockey_#123
**User Three:** Username: User3 | Password: Basketball_#123
**User Four:** Username: User4 | Password: Football_#123

## Objective One 

**Description**
- By default, the URL /e/shahr39 will route to the login page
- First implemented a manual UserInfo entry
- This feature is displayed in signup.djhtml which is rendered by signup_view
- Used UserCreationForm in signup_view function
- It handles a POST sent by the form to create a new user and save it as a UserInfo object
- The user is then redirected to the social/messages page

**Exceptions**
- If the /e/macid/signup.djhtml is called without arguments, it redirects to login.djhtml

## Objective Two 

**Description**
- This feature is displayed in social_base.djhtml which is rendered by messages_view, people_view and account_view
- Used user_info.user to find username of user
- Loop through all interests in user_info 

**Exceptions**
- None

## Objective Three 

**Description**
- This feature is displayed in account.djhtml rendered by account_view
- Used Django PasswordChangeForm to handle POST, check if it's valid and save
- Created user info form by myself and on the page, there are two buttons. Depending on which one they press, the user info will be saved for that section (i.e. passwords or user info)

**Exceptions**
- Passwords must meet the requirements, if a successful form submission is performed, user will be redirected to login page
- Will only take one interest at a time
- Birthdays must be in right format as specified
- If the above don't meet the specifications, page will reload with them still in the box
- If they do meet the specifications, the data will be added to the user_info and forms will be cleared

## Objective Four 

**Description**
- This feature is displayed in people.djhtml rendered by people_view and using javascript code
- Used a session variable, to keep count. Amount of people resets each reload
- Iterated through loop in people.html to get all user_info
- Displays only users who are not friends by using only_strangers variable, one at a time
- AJAX POST and more button are already linked along with more_ppl_view

**Exceptions**
- Nothing will be in the middle column besides the more button if there is only one user registered

## Objective Five 

**Description**
- This feature is displayed in people.djhtml rendered by friend_request_view and people_view and a JQuery event in people.js
- Iterated through friend_requests in people.djhtml to get respective user name
- Iterate through all users in userInfo
- User models to create from_user and to_user respective entries objective 6

**Exceptions**
- None

## Objective Six 

**Description**
- 
- Parse through the ID that started with "A-", 
- If it does, get the UserInfo object like we did in Objective Five
- If you accepted, add that person as a friend to request.user using models.ManyToManyField
- If they decline, delete the friend request and also delete once they accept

## Objective Seven 

**Description**
- Iterate through friends model for the respective user and print out user name

