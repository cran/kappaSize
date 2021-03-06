\name{Power4Cats}
\alias{Power4Cats}
\alias{print.Power4Cats}
\alias{summary.Power4Cats}
\title{Power-Based Approach for the Number of Subjects Required for a Study of Interobserver Agreement with Four Outcome Categories}

\description{
This function provides detailed sample size estimation information to determine
the number of subjects that are required to test the hypothesis \eqn{H_0: \kappa = \kappa_0} vs. \eqn{H_1: \kappa = \kappa_1}, at two-sided 
significance level \eqn{\alpha}, with power, \eqn{1 - \beta}.  This version assumes that the outcome is multinomial with four levels.}

\usage{Power4Cats(kappa0, kappa1, props, raters=2, alpha=0.05, power=0.80)}


\arguments{
\item{kappa0}{The null hypothesis for the \eqn{\kappa} hypothesis test.}
\item{kappa1}{The alternate hypothesis for the \eqn{\kappa} hypothesis test.}
\item{props}{The anticipated prevalence of the desired traits.  Note that this four element vector must sum to one.}
\item{raters}{The number of raters that are available.  This function allows between
2 and 6 raters.}
\item{alpha}{The desired type I error rate.}
\item{power}{The desired level of power, recall power = 1 - type II error.}
}

\details{
This function provides detailed sample size estimation tools for studies
of interobserver agreement with four levels.  This function employs the
power approach, rejecting \eqn{\kappa_0} in favour of \eqn{\kappa_1} for a pre-specified significance
level and power.  Note that a warning message is provided if any of the expected cell counts are less than 5.
}

\value{
\item{N}{The calculated sample size.}
\item{kappa0}{The specified null hypothesis.}
\item{kappa1}{The specified alternative hypothesis.}
\item{props}{The anticipated proportion of individuals with the outcome.}
\item{raters}{The number of raters.}
\item{alpha}{The desired type I error rate.}
\item{power}{The desired level of power, recall power = 1 - type II error.}
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

\seealso{\code{\link{CI4Cats}}}

\examples{
\dontrun{Suppose an investigator would like to determine the required sample size to test 
kappa0=0.4 vs. kappa1=0.6 with alpha=0.05 and power=0.80 in a study of 
interobserver agreement.  Further suppose that the prevalence of the categories is 
0.30, 0.30, 0.30 and 0.10.}
Power4Cats(kappa0=0.4, kappa1=0.6, props=c(0.30, 0.30, 0.30, 0.10), alpha=0.05, power=0.80);
}

\keyword{design}
