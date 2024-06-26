% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_daily.R
\name{plot_daily}
\alias{plot_daily}
\title{Plot daily glucose profiles}
\usage{
plot_daily(data, maxd = 14, LLTR = 70, ULTR = 180, inter_gap = 45, tz = "")
}
\arguments{
\item{data}{DataFrame with column names ("id", "time", and "gl").}

\item{maxd}{\strong{Default: 14.} Number of days to plot. If less than `maxd` days of data are available, all days are plotted.}

\item{LLTR}{\strong{Default: 70.} Lower Limit of Target Range in mg/dL.}

\item{ULTR}{\strong{Default: 180.} Upper Limit of Target Range in mg/dL.}

\item{inter_gap}{\strong{Default: 45}. The maximum allowable gap (in minutes). Gaps larger than this will not be connected in the time series plot.}

\item{tz}{A character string specifying the time zone to be used. System-specific (see \code{\link{as.POSIXct}}), but " " is the current time zone, and "GMT" is UTC (Universal Time, Coordinated). Invalid values are most commonly treated as UTC, on some platforms with a warning.}
}
\value{
Daily glucose time series plots for a single subject
}
\description{
The function `plot_daily` plots daily glucose time series profiles for a single subject.
}
\details{
Only a single subject's data may be plotted. The black line shows the glucose values.
The shaded gray area shows the target range, default 70-180 mg/dL. Areas of the curve
above the ULTR are shaded yellow, while areas below the LLTR are shaded red.
}
\examples{

data(example_data_1_subject)
plot_daily(example_data_1_subject)
plot_daily(example_data_1_subject, LLTR = 100, ULTR = 140)

}
\references{
Johnson et al. (2019) Utilizing the Ambulatory Glucose Profile to Standardize and
Implement Continuous Glucose Monitoring in Clinical Practice,
\emph{Diabetes Technology and Therapeutics} \strong{21:S2} S2-17-S2-25,
\doi{10.1089/dia.2019.0034}.
}
\author{
Elizabeth Chun
}
