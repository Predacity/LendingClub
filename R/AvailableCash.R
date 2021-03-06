#' Return investor's available cash
#'
#' Uses Lending Club's API to access the user's account and return the available
#' cash. Committed cash is excluded from the total.
#'
#' @inheritParams AccountSummary
#' @export
AvailableCash<- function(LC_CRED=NULL){

    LC_CRED<-CheckCred(LC_CRED)

    searchURL<- MakeURL(LC_CRED$investorID, "availablecash")

    LC_GET(searchURL, LC_CRED$key, margin=T)


    }
