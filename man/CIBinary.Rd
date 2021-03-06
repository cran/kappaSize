\name{CIBinary}
\alias{CIBinary}
\alias{print.CIBinary}
\alias{summary.CIBinary}
\title{Confidence Interval Approach for the Number of Subjects Required for a Study of Interobserver Agreement with a Binary Outcome}

\description{
This function provides detailed sample size estimation information to determine
the number of subjects required using the confidence interval perspective to sample 
size estimation for \eqn{\kappa}.   This version assumes that the outcome has two categories.}

\usage{CIBinary(kappa0, kappaL, kappaU=NA, props, raters=2, alpha=0.05)}


\arguments{
\item{kappa0}{The preliminary value of \eqn{\kappa}.}
\item{kappaL}{The desired expected lower bound for a two-sided 100(1 - \eqn{\alpha}) \% confidence interval for kappa.  Alternatively, if kappaU is set to NA, the procedure produces the number of required subjects 
for a one-sided confidence interval.}
\item{kappaU}{The desired expected upper confidence limit for kappa.}
\item{props}{The anticipated prevalence of the desired trait.  Note that specifying
props as either a single value, or two values that sum to one provides the same result.}
\item{raters}{The number of raters that are available.  This function allows between
2 and 6 raters.}
\item{alpha}{The desired type I error rate.}
}

\details{
This function provides detailed sample size estimation computation for studies
of interobserver agreement with a binary outcome.  This function employs the
confidence interval perspective, determining the correct sample size that provides
the specified expected confidence limits.  Sample
size estimation is based on the precision of the estimate, instead of a simple hypothesis
testing perspective.  Note that a warning message is provided if any of the expected cell counts are less than 5.
}

\value{
\item{N}{The calculated sample size.}
\item{kappa0}{The specified anticipated value of \eqn{\kappa}.}
\item{kappaL}{The specified expected lower limit.}
\item{kappaU}{The specified expected upper limit.}
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

\seealso{\code{\link{PowerBinary}}}

\examples{
\dontrun{Suppose an investigator would like to determine the required sample size to test
kappa0=0.4 with precision of 0.1 on each side, in a study of interobserver agreement. 
Further suppose that the prevalence of the trait of interest is 0.30.}
CIBinary(kappa0=0.4, kappaL=0.3, kappaU=0.5, props=0.30, alpha=0.05);
}

\keyword{design}
