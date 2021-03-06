% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ci.R
\name{ci.contr}
\alias{ci.contr}
\title{Compute confidence interval for contrast d}
\usage{
ci.contr(cont, d, n, scale = "g", conf.level = 0.95)
}
\arguments{
\item{cont}{vector of contrast weights.}

\item{d}{standardized mean differences.}

\item{n}{cell size (for each group)}

\item{scale}{method to scale d.}

\item{conf.level}{width of the confidence interval, default=.95}
}
\value{
confidence intervals of class "conf.intervals".
}
\description{
Return the confidence intervals computed by scaling the confidence intervals of the noncentrality parameter.
The confidence intervals are computed based on selected function in \code{MBESS}.
}
\details{
Compute the confidence interval based on the Steiger and Fouladi (1997) method


     The parameter \code{scale} controls the method used to scale the effect size d.
     \enumerate{
    \item    \code{scale="g"} assumes scaling by dividing 2*d by the sum of absolute coefficients
    \item    \code{scale="z"} assumes scaling by dividing d by the square-root of the sum of squares of the coefficients
    \item    \code{numeric} any constant that multiplies the unscaled d to obtain the scaled d
   }
     The confidence intervals are computed based on selected function in \code{MBESS}:
     in particular \code{\link[MBESS]{conf.limits.nct}} and \code{\link[MBESS]{ci.sc}}. Results are scaled to the
     standardized effect size required.
}
\examples{

cont<-c(-3,-1,1,3)
means<-c(10,12,10,12)
d<-d.contr(cont,means = means,sd=2,scale = "g")
ci.contr(cont,d=d,scale = "g",n=100)

}
\references{
Kelley, K. (2007). Confidence intervals for standardized effect sizes: Theory, application, and implementation. Journal of Statistical Software, 20 (8), 1–24.
}
\author{
Marcello Gallucci, \email{mcfanda@gmail.com}
}
\keyword{comparisons}
\keyword{contrasts,}
\keyword{planned}
\keyword{power,}
