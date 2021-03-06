#' @rdname FolioSell
#' @name SecondaryMarket
#' @export

FolioBuy<- function(loanId, orderId, noteId, Price= NULL, LC_CRED=NULL){
    LC_CRED<-CheckCred(LC_CRED)

    postURL<- MakeURL(LC_CRED$investorID, "trades/buy")

    params<- list("aid"=LC_CRED$investorID,
                  "notes"= data.frame(
                      "loanId"= loanId,
                      "orderId"= orderId,
                      "noteId"= noteId,
                      "bidPrice"= Price,
                      stringsAsFactors = F))


    LC_POST(postURL,params, LC_CRED$key)
}
