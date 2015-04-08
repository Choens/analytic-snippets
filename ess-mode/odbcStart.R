# -*- mode: snippet -*-
# name : odbcStart.R
# key: odbcStart.R
# group: templates
# contributor : Andy Choens andy.choens@gmail.com
# --
#' odbcStart
#' Creates an ODBC connection, witout required a user to put their user
#'
#' @param odbc_con The name of the ODBC connection.
#' @return con The connection object opened by this function.
#'
odbcStart <- function(odbc_con) {

    ## Some rudimentary error checking.
    if(length(getOption(odbc_con)) < 3) {
        stop("Error Opening Secure ODBC Connection. No such connection defined.")
    }

    ## Assuming we have passed the above, open up the connection.
    con <- odbcConnect(odbc_con
                       ,uid = getOption(odbc_con)$uid
                       ,pwd = getOption(odbc_con)$pwd
                       ,believeNRows = FALSE  ## Prevents errors with Oracle.
                       )
    return(con)
}
