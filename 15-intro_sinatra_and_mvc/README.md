## Recap Mod 1:
Some of the things we Learned last Mod
* **Ruby** - Programming language
* **Objects** - conceptualize real life concept
* **Domain Modeling** - How our objects interact
* **SQL** - querying language for databases
* **ORM** - mapping data from class to database 
* **Active Record** - ORM && how we write our SQL
* **CRUD** - CREATE READE UPDATE DELETE



## Overview Of Mod 2:
By the end of this Mod you should be able to create a fullstack web application!!!
* HTTP 
  * Request & Response
  * REST 

* Sinatra
  * MVC
    - Models
    - Views
    - Controllers
  * ERB
  * How CRUD actions map to RESTful routes

* Rails
  * Routes 
  * Rails helpers

* HTML/CSS

<!-- ------------------------------------------------------------------ -->

# Intro to Sinatra & MVC
===

# GOALS (general):
* MVC
* ERB
* Params
* REST <=> CRUD

# GOALS (Detail):
- Explain the Model View Controller (MVC) pattern and give an example
  - Explain how web frameworks (like Sinatra/Rails) use the MVC pattern and why
- Define 'convention over configuration'
- Implement one model that inherit from ActiveRecord
- Implement one controller to route and process requests
- Params
  - Demonstrate how the params hash changes and where the data comes from
- Implement ERB template and get it to render data from controller and model
- Practice file structure in Sinatra
- Identify the connection between REST and CRUD
  - http://www.restular.com/


## Outline

- [✅] How and why we use the MVC pattern
- [✅] Define _"convention over configuration"_
- [ ] How to create a new Sinatra application with `corneal`
- [ ] How CRUD actions map to RESTful Routing
- [ ] How Sinatra serves up data in response to web requests

## Important Definitions

### Important from yesterday

- *Request Response*
  - Request: 
    - URL and HTTP type
    - body
    - headers 
  - Response 
    - Status Code
    - body
    - headers 

### New

- *MVC*: 
  - Model =>
  - View => 
  - Controller => 
  
  - Why MVC?

- *convention over configuration*
  - 

- *RESTful Routing (REST)*
  - 


## Deliverables

For each deliverable what is the route? What CRUD action does it correspond to?

- view information on an individual *thing*
- view all *things*

<!-- ------------ Tomorrow (CRUD) ---------- -->
- create a new *thing*
- edit an existing *thing*
- delete an existing *thing*









<!-- ------------- Extra Resources on Topic -------------------- -->

### MVC/REST Slides
- https://docs.google.com/presentation/d/1_elK-0OTxI-zFGUSme5JeN-c4Il30Q023RaVxvexwfg/edit#slide=id.g378a2b8862_0_22

### MVC Architecture

In a typical application you will find these three fundamental parts:

* Data \(Model\)

  An interface to view and modify the data

* \(View\)

  Operations that can be performed on the data

* \(Controller\)

The MVC pattern, in a nutshell, is this:

* The model represents the data, and does nothing else. The model does NOT depend on the controller or the view.
* The view displays the data through the controller, and sends user actions \(e.g. button clicks\) to the controller. The view is independent of both the model and the controller.
* The controller provides model data to the view, and interprets user actions such as button clicks. The controller depends on the view and the model.

Rule 1 is the golden rule of MVC:

The model represents the data, and does nothing else. The model does NOT depend on the controller or the view. In other words, _THE MODEL DOES NOT INTERACT WITH THE VIEW, AND THE CONTROLLER DOES ALL THE_ WORK_!_

_Note: an easy analogy to help students with this rule is to think of your MVC app as a restaurant. The model is the food being made in the kitchen, this is the_ meat _of the experience/app. The controller is the restaurant's staff, they handle the experience, prepare the food, and are your first contact if you need anything. The view is you, and your experience. You do not see inside the kitchen, nor do you have visibility on what happens to give you the experience you get. If you want more information, you can always talk to the staff, but they have rules about how much or how little you get to do or see._


* security and access control
* logging
* giving specific users specific content while making views less complex

![](m2_sinatra_request.jpg)

### CRUD, URLs, and REST

Give an introduction of RESTful Routing and how it connects to CRUD. This diagram will prove helpful:

![](m2_sinatra_crud.jpg)

Talk about how each route specifically maps to a particular resource/model, and can also represent a "method" being passed to that resource's controller. This allows each action on each resource to be unique. Just like CRUD offers both structure and consistency through its rules, REST does the same. Let the students see how `GET`, `PUT`, `POST`/`PATCH`, and `DELETE` map to "Read", "Create", "Update", and "Delete" respectively.

![](m2_sinatra_rest.png)

_Note: One thing that helps justify why things are the way they are, is that REST methods try their best to minimize the number of URLs but maximizing functionality. This is why we overload on the same URLs._

It's not necessary that all of this functionality exists, we just choose to expose which things we find important/want our users to be able to do. Reiterate that web requests are stateless, which means that at the default, there is no relationship between any two requests to the server.

Controller:

* Params in requests

  ![](m2_sinatra_routing_code.jpg)

* Nested erb naming \(with directories\)


View:

* `<%= %>` vs `<% %>`