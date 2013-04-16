##App Description

The app is targeted in  maintaining a directory of doctors, department/specialization and hospitals. The users can come to the site, search for doctors or departments/specializations or hospitals. Currently there are four user roles which have been maintained in the website:

1.	Site-wide Admin : The user is created during lunching of website itself and he/she can make any changes to the website.

2.	Hospital Admin  : This role is targeted for hospital administrators / people in IT Department. The users who sign-up with this role have full authority for managing the details of one hospital which they have created.

3.	Doctor	  : This role is targeted for doctors. The users who sign-up with this role have full authority for managing the details of one doctor which they have created.

4.	Normal User	: This role is for normal user. Currently this user has no authority, but later I am planning on:
  * adding of "Make an appointment" feature such that these users can take an appointment from a doctor.
  * adding of discussion group / forum for various diseases (eg. diabetes, heart-attack---) where these users will be able to ask questions or make comments on those groups/forums.  

##Configuration to be added:

Add file config/dropbox.yml with the dropbox credentials:

	app_key: ---your data---
	app_secret: ---your data---
	access_token: ---your data---
	access_token_secret: ---your data---
	user_id: ---your data---
	access_type: app_folder


Links for app setup and accessing the credentials:
* https://github.com/janko-m/paperclip-dropbox
* https://www.dropbox.com/developers/apps

##Demo Page:
The project can be visited at the link: http://doctor-search.herokuapp.com/