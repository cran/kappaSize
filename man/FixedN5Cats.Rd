\name{FixedN5Cats}
\alias{FixedN5Cats}
\alias{print.FixedN5Cats}
\alias{summary.FixedN5Cats}
\title{Calculation of the Lowest Expected Value, kappaL, for a fixed sample
size in a Study of Interobserver Agreement with a Multinomial Outcome (5 Levels)}

\description{
This function provides the potential lower bound for a 100(1 - \eqn{\alpha}) \% confidence interval
that can be calculated for a fixed sample size, n, and an anticipated
value of \eqn{\kappa}, kappa0.  This version assumes that the outcome of interest has five levels.}

\usage{FixedN5Cats(kappa0, n, props, raters=2, alpha=0.05)}


\arguments{
\item{kappa0}{The anticipated preliminary value of \eqn{\kappa}.}
\item{n}{The total number of available subjects.}
\item{props}{The anticipated prevalence of the desired traits.  Note that the elements
of the five element vector must be non-negative and sum to one.}
\item{raters}{The number of raters that are available.  This function allows between
2 and 6 raters.}
\item{alpha}{The desired type I error rate.}
}

\details{
This function calculates the expected lower bound of a one-sided
confidence interval for a fixed sample size, n, and an anticipated
value of \eqn{\kappa}, kappa0.  This function can illustrate the amount of precision
available in the estimation of kappa for a fixed sample size.  Note that a warning message is provided if any of the expected cell counts are less than 5.
}

\value{
\item{n}{The specified sample size.}
\item{kappa0}{The specified anticipated value of \eqn{\kappa}.}
\item{kappaL}{The calculated expected lower limit.}
\item{props}{The anticipated proportion of individuals with the outcome.}
\item{raters}{The number of raters.}
\item{alpha}{The desired type I error rate.}
\item{ChiCrit}{The critical value that is required for sample size estimation.  It is
typically not required and is not displayed in the summary output.}
}

\references{
Rotondi MA, Donner A.  (2012).  A Confidence Interval Approach to Sample Size Estimation for Interobserver Agreement Studies with Multiple Raters and Outcomes.  Journal of Clinical Epidemiology, 65:778-784.

Donner A, Rotondi MA.  (2010).  Sample Size Requirements for Interval Estimation of the Kappa Statistic for Interobserver Agreement Studies with a Binary Outcome and Multiple Raters.  International Journal of Biostatistics 6:31. 

Altaye M, Donner A, Klar N.  (2001). Procedures for Assessing Interobserver Agreement among Multiple Raters.  Biometrics 57:584-588.

Donner A.  (1999).  Sample Size Requirements for Interval Estimation of the Intraclass Kappa Statistic.  Communication in Statistics 28:415-429.

Bartfay E, Donner A. (2001).  Statistical Inferences for Interobserver Agreement Studies with Nominal Outcome Data.  The Statistician 50:135-146.

Donner A, Eliasziw M. (1987) Sample size requirements for reliability studies. Statistics in Medicine 6:441-448.

}

\author{Michael Rotondi, \email{mrotondi@yorku.ca}}

\examples{
\dontrun{Suppose an investigator would like to determine the expected lower bound for
kappa0=0.6 assuming he has access to 150 subjects and 2 raters.  Further suppose that 
the prevalence of the traits of interest are 0.4, 0.2, 0.2, 0.1, 0.1.}
FixedN5Cats(kappa0=0.6, n=150, props=c(0.4, 0.2, 0.2, 0.1, 0.1), alpha=0.05, raters=2);
}

\keyword{design}
