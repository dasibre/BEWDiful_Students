![GeneralAssemb.ly](http://studio.generalassemb.ly/GA_Slide_Assets/Exercise_icon_md.png)

Time to review. You now have all the necessary knowledge to build a small Rails app. Let's build!

#Ritly

We are going to build an app similar to [Bitly](https://bitly.com), called Ritly. The challenge is going to be understanding the flow of control in a Rails app.
 
Instructors demo the app for students.


Here is a brief overview of the app. 

* 	Visitors to Ritly will be able to request a randomly generated code for their URL link and save it to the database.
*	Visitors to Ritly can go to ```localhost:3000/random_generated_code``` and the application will redirect them to the  matched link in the database. 
*	Visitors to Ritly can go to ```localhost:3000/random_generated_code/preview``` and preview the matching URL link from the database. 


###Task Instructions

We are going to challenge your understanding of a Rails app. With the description and demo above build Ritly.
Use the hints below to help you build.

Here are a few hints. 

####The URLs Table

|id|link |hash code|created at|updated at|
|:---|:----|:--------|:---------|:---------|
|1|http://www.generalassemb.ly|516396|Wed, 19 Jun 2013 21:23:30 UTC +00:00|Wed, 19 Jun 2013 21:23:30 UTC +00:00|
|2|http://www.google.com|234687|Wed, 19 Jun 2013 21:25:32 UTC +00:00|Wed, 19 Jun 2013 21:25:32 UTC +00:00|
|3|http://www.bustedtees.com|093674|Wed, 19 Jun 2013 21:23:30 UTC +00:00|Wed, 19 Jun 2013 21:23:30 UTC +00:00|


####The routes.rb file

```ruby
		Ritly::Application.routes.draw do
  			root "home#index" 
  			resources :urls #only using create, new and show.
  			get '/:some_totally_random_value', to: 'urls#redirectors'
  			get '/:some_totally_random_value/preview', to: 'urls#preview'
		end
```

####The Views

*	show.html.erb 
	*	Visitors are redirected to the show page after they request a randomly generated code for their URL link.
	*	This view will display the random code that was generated: "Your code is: random_code" Go to localhost:3000/random_code to visit your URL.
	

####Generating a Random Number or Hash

*	To generate a random number in Ruby ```rand(10000)```.
*	__Bonus__ Use SecureRandom.urlsafe_base64(8) to generate a random hash code.

Remember, Google is your friend!

####Bonus

* Track the number of times the shortened links are visited in the database.
