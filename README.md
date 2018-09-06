# quarter_to_many
Money exchanges between many people, but how often do we think about the many hands that a dollar, a coin, a penny, even a nickel passes through? And who do those hands belong to exactly???

A VC fund heard about your interest in this and are willing to put down many quarters in seed money on a project that will be able to track money by its users.

A piece of currency (let's say a quarter in this case since that's how you got this GREAT many to many problem in the first place and that's what this silicon valley vc will be funding you in) has a list of all its owners and a owner has many quarters.

A user has a name and an age and location. No two users can have the same name in the same location and an age has to be at least 18.
A quarter has a year as an integer and a degree of rust. A quarter has to be at least from 1900 and we don't want anything to rusty in our db.



There's an index page for owners that lists of all the quarters owned by each person with links to those specific quarters.
A quarter has a list to all of its past owners with links to those owners.

An owner can be deleted as well as a quarter.

New users and new quarters can be added, but when a quarter is added it has to be from the past 5 years.
