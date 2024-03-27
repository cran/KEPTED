## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(KEPTED)

## -----------------------------------------------------------------------------
n=200
d=3

## test under a null distribution
X=matrix(rnorm(d*n),nrow=n,ncol=d)
EllKEPT(X,kerU="Gaussian",kerTheta="Gaussian")
EllKEPT(X,kerU="PIQ",kerTheta="PIQ")

## test under an alternative distribution
X=matrix(rchisq(d*n,2),nrow=n,ncol=d)
EllKEPT(X,kerU="Gaussian",kerTheta="Gaussian")
EllKEPT(X,kerU="PIQ",kerTheta="PIQ")

