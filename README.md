
# CONTROLLER(S)
| Controller | Description | Status |
|----------- | ------------ | ----- |
| Analytics |  Collects timestamps when a user clicks on the 'Download brochures' or 'Request callback' button|  Placeholder |
| Developments | A simple dashboard that for developments to be displayed on main page | Placeholder |
| Home | For root / home page | Placeholder |
| Onboarding | For onboarding questions (if any) | Placeholder |
| Pages | For static pages ie: privacy policy etc | Placeholder |
| users/confirmation | Devise confirmation controller | Placeholder |
| users/onmniauth_callbacks | Devise omniauth controller | Placeholder |
| users/password | Devise password controller | Placeholder |
| users/registrations | Devise registration controller | Placeholder |
| users/sessions | Devise sessions controller | Placeholder |
| users/unlocks | Devise unlock controller | Placeholder |

# ASSET PIPELINE

Place all assets in the `assets` folder
  
| Foldername | Description |
|----------- | ------------|
| downloads | files to be downloaded by users |
| fonts | custom fonts |
| images | images for webpage |
| javascript | custom javascript |
| stylesheets | custom stylesheets |
| stylesheets/_custom | custom sass |
| stylesheets/_customVariables | custom sass variables |

# SETUP INSTRUCTIONS FOR CONFIRMATION EMAIL

1. sign up with [SendGrid](https://app.sendgrid.com/)
2. note your username and password on signup at SendGrid
3. verify your account details with SendGrid
4. run `cp .env.example .env'
5. update your .env variables with username and password in step 2
6. [placeholder]  

# OUTSTANDING ISSUES / TO BE COMPLETED

1. validation on form fields to be implemented
2. to remove CRUD from controllers where necessary
3. remove downloads controller
4. remove accounts controller
5. remove users controller
6. remove visitors controller
7. contact form for each new developments
8. look for development dashboard

# What does the analytics controller do ?

1. Collect timestamps when the "Download brochure" or "Request Callback" is clicked.
2. If a user clicks on the "Download brochure", the timestamp is noted and brochure will be downloaded by the user. 
