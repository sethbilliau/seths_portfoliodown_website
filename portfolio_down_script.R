# Install devtools if necessary
if (!require('devtools')) install.packages('devtools')

# Install portfoliodown from GitHub
devtools::install_github("business-science/portfoliodown")

# Import porfolio down
library(portfoliodown)

# Define project directory, create the directory if necessary, and set as wd 
pathToDirectory = '/Users/sethbilliau/Desktop/portfoliodown'
dir.create(file.path(pathToDirectory))
setwd(pathToDirectory)

# Create a new portfolio site
portfoliodown::new_portfolio_site()

# Serve the site locally (at localhost:1234)
portfoliodown::serve_site(port = 1234)
??serve_site
