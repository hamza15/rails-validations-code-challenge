# Rails Validations

## Part 1: Conceptual questions
1. Why do we use validation?
To stop users from saving incorrect data in database


2. What are the [two] general types of "bad user data"?
Users who are not savy. End up submitting missing fields, duplicates, etc
Malicious data.

3. When do validations get triggered?
Validations are triggered before these methods: save, update, create.
.valid? cdoes validation without saving.

4. How can we see if and why a record failed validation?
Use Errors object to see errors for that record. Re-render that page to show validation errors on that page.

## Part 2: Expand your boat rental app to include model validations
* You were contracted to build a rental platform used by internal employees of a boat rental store. Last week's task was to build as much of the CRUD functionality as possible. This week, you will be adding validations to your main model.
* IF YOU HAVEN'T ALREADY:
1. Create a new Rails app skeleton.
2. Create necessary DB table, model, controller for a `Rental` model. Rentals should have a date & time, customer name, and boat name.
3. Build out the routes, actions, and views to create full CRUD functionality for the `Rental` model, in whatever order you want. You have creative freedom for how each view will look. Fulfilling CRUD functionality is the only requirement.
4. Seed the database with a few rentals and test out your app so far.
* BUILD SOME VALIDATIONS (these will either be default ActiveRecord or custom validations) to fulfill these requirements on the `Rental` model:
1. The customer name, date/time, and boat name can not be blank or nil.
2. The date/time needs to be an actual date/time
3. The date/time can not be in the past.
4. The customer name must be capitalized.
5. The customer name can not be Jeff (Jeff is banned from the rental shop for prior boat damage)
* BONUS
1. After proving your validations work in the Rails console, display your validation errors in the views