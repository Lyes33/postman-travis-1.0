Feature: I am a user, I want to find a book, I can use the google books api. 

#--------------------------------------------- ----------
#                      scenario keyWord
#--------------------------------------------------------
Scenario: keyWord is empty
Given a request with an empty keyword
When we execute the request
Then we must have an respense with a status error 400

Scenario: keyWord is a number 
Given a request with an keyword of type number and maxResult valide
When we execute the request
Then we must have an respense with a status ok 200
And display result 

Scenario: keyWord is a string  
Given a request with an keyword of type string and maxResult valide 
When we execute the request
Then we must have an respense with a status ok 200
And display result 

#------------------------------------------------------------
#                      scenario maxresult
#------------------------------------------------------------
Scenario: maxResult is less then 0
Given a request with an maxResult less then 0
When we execute the request
Then we must have an arespense with a status error 400
 
Scenario: maxResult is great then 40
Given a request with an maxResult greater then 40
When we execute the request
Then we must have an arespense with a status error 400

Scenario: maxResult is between 1 and 40
Given a request with an maxResult is between 1 and 40
When we execute the request
Then we must have an respense with a status ok 200
And display result

Scenario: maxResult is empty 1 
Given a request with an maxResult empty
When we execute the request
Then we must have an arespense with a status error 400

#--------------------------------------------------------------
#                     scenario content
#--------------------------------------------------------------
Scenario: the respense includ the keyWord
Given a request with an keyword and maxResult
When we execute the request
Then we must have an respense with a status ok 200
And the respense include the keyWord

Scenario: the volume has a title
Given a request with an volumeId
When we execute the request
Then we must have the respense of the volumes with their titles 

Scenario: the authors field is an array 
Given a request with an volumeId params 
When we execute the request 
Then we must have an author result in the form of an array

Scenario: the books is co-written 
Given a request with an volumeId params
When twe execute the request 
Then we must have tow authors in the array of authors

Scenario: the volume is an Ebooks 
Given a request with an volumeId params
When we execute the request
Then we must have the prepriety of Ebooks for true

Scenario: the volume have a property width 
Given a request with an volumeId params
When we execute the request
Then we must have the volume with prepriety width  

Scenario: the webReder is an url 
Given a request with an volumeId params
When we execute the request
Then we must have the volume with prepriety webReder an url that starts with http