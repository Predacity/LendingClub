% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PendingTransfers.R
\name{PendingTransfers}
\alias{PendingTransfers}
\title{Return investor's pending transfers}
\usage{
PendingTransfers(LC_CRED = NULL)
}
\arguments{
\item{LC_CRED}{Credential object having class LendingClub_credential. This object can be created using the \code{MakeCredential()} function. You can pass the object directly as an argument to the function or alternatively, it can be read from the global environment if it was stored as "LC_CRED".}
}
\description{
Uses Lending Club's API to access the user's account and return the summary
}
