# _Snowflake Scheduler_

#### _Implementing Snowflake Scheduler in Ruby, 10.05.2017_

#### By _Margaret Berry, Michael Brooks, Dan Kiss, and Dan Garcia_

## Description

_This app allows users to create a profile with a group and a group role. Users can put in their availability, and the app will show which days most members are available in any given week._

## User Stories

* _As a user, I want to create a group._
* _As a user, I want to create a member._
* _As a user, I want to be able to view all groups and members._
* _As a user, I want to be able to edit a group._
* _As a user, I want to be able to delete a group._
* _As a user, I want to be able to edit a member._
* _As a user, I want to be able to delete a member._
* _As a user, I want to be able to view all members in a group._
* _As a user, I want to be able to view a member's group._
* _As a user, I want to be able to add members to a group._
* _As a user, I want to be able to add a group to a member._
* _As a user, I want to be able to add my availability._
* _As a user, I want to be able to see the group's availability._

## Specs

| Spec                       | Input                                                                                                | Output                          |
|----------------------------|------------------------------------------------------------------------------------------------------|---------------------------------|
| Create a group             | One Way Train                                                                                        | Groups: One Way Train           |
| Create a member            | Margaret                                                                                             | Members: Margaret               |
| Edit a group               | One Way Train -> One Way Plane                                                                                    | Members: Maggie                 |
| Edit a member              | Margaret -> Maggie                                                                        | One Way Plane                   |
| Delete a group             | One Way Plane - > Delete                                                                             | Groups:                         |
| Delete a member            | Maggie -> Delete                                                                                     | Members:                        |
| Add a group to a member    | Maggie -> Add group -> One Way Plane                                                                 | Maggie's groups: One Way Plane  |
| Add a member to a group    | One Way Plane -> Maggie                                                                              | One Way Plane's members: Maggie |
| Add availability to member | Maggie: Monday, Thursday, Saturday                                                                   | Maggie's availability: M W S    |
| See group availability     | Maggie's availability: Monday, Wednesday, Saturday  Steve's availability: Tuesday, Wednesday, Friday | Group availability: Wednesday   |

## Setup/Installation Requirements

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Open terminal on your computer,
Navigate to the folder you would like to clone the project into:
```
cd desktop
```
and run:

```
git clone https://github.com/margaret85/snowflake_scheduler
```
Navigate into project folder with:
```
cd snowflake_scheduler
```
Run:
```
bundle
```
```
rake db:create
```
```
rake db:migrate
```
If you have Atom installed and want to see the project structure run:
```
atom .
```
Otherwise...
```
ruby app.rb
```
Nativate in your browser to http://localhost:4567/

![Database Architecture](https://github.com/margaret85/snowflake_scheduler/blob/master/public/DatabaseArchitecture.png)

## Known Bugs

_The create button on the create member and edit member pages is not visible when no group has been created._
_On the group page, the member availability for all groups is visible._

## Future Features

* Build in a function to show available day by highest count
* Build a user account system (user profile)
* Integrate a database server
* Allow different roles for users and schedule built to handle these roles

## Thanks to...

_Nicky Christensen for the [snow animation](https://codepen.io/NickyCDK/pen/AIonk)_

## Support and contact details

_If you have any updates or suggestions please contact [Margaret] & [Michael] & [Dan K] & [Dan G] or make a contribution yourself._

[Margaret]: mailto:margaretshelaghmcgovern@gmail.com
[Michael]: mailto:mikealphabravo1982@gmail.com
[Dan K]: mailto:flowfast47@gmail.com
[Dan G]: mailto:danny.garcia80@hotmail.com

### License

MIT License

Copyright (c) 2017 Margaret Berry, Michael Brooks, Dan Kiss, and Dan Garcia
