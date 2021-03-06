# -*- mode: snippet -*-
# name : config.r
# key: config.r
# group: templates
# contributor : Andy Choens andy.choens@gmail.com
# --
## #############################################################################
## Config
##
## - Project configuration and variables.
## - Source this file at the beginning of your scripts to load packages and
##   functions needed for your analysis.
##
## #############################################################################



## ==============================================================================
## Session Config
## ==============================================================================

##options(tab.width = 4)
##options(width = 80)
##options(graphics.record=TRUE)



## ==============================================================================
## Sourced Files
## ==============================================================================

## Packages --------------------------------------------------------------------
## Uncomment any / all necessary packages in the packages.R file.
if( "packages.R" %in% dir()) source("packages.R")

## Passwords -------------------------------------------------------------------
## Place database or other passwords that are needed, but do not belong in
## your analytic repository.
if("passwords.R" %in% dir("~")) source("~/passwords.R")

## Project functions -----------------------------------------------------------
## Loads all files ending in .R in the R folder.
functions = dir("R", ".R", full.names=TRUE)
functions = functions[!grepl("#", functions)] ## Removes Emacs temp files.
functions = functions[!grepl("~", functions)] ## Removes Vim/Sublime temp files.
if(length(functions) > 0) {
    for(i in 1:length(functions)) {
        source(functions[i])
        message(paste(functions[i], "' sourced.", sep=""))
    }
}
rm(functions)



## ==============================================================================
## Variables
##
## Variables that should be present in all scripts in this project.
## For example, date ranges for queries, etc.
##
## =============================================================================

## User Editable ---------------------------------------------------------------
## End users are expected to edit / alter the following global variables.
## Includes user-specific variables, dates, etc.

## If these get lengthy or complex, create a file called variables.R and
## source it from here.
## source(variables.R)

## Package Config --------------------------------------------------------------
## Package variables and other vars that should not be edited by end users.

