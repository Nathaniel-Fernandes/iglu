% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/above_percent.R
\name{above_percent}
\alias{above_percent}
\title{Calculate percentage of values above target thresholds}
\usage{
above_percent(data, targets_above = c(140, 180, 250))
}
\arguments{
\item{data}{DataFrame object with column names "id", "time", and "gl",
or numeric vector of glucose values.}

\item{targets_above}{\strong{Default: (140, 180, 250).} Numeric vector of glucose thresholds. Glucose values from
data argument will be compared to each value in the targets_above vector.}
}
\value{
If a DataFrame object is passed, then a tibble object with
a column for subject id and then a column for each target value is returned. If a vector of glucose
values is passed, then a tibble object without the subject id is returned. Wrap
`as.numeric()` around the latter to output a numeric vector.
}
\description{
The function \code{above_percent} produces a tibble object with values equal to
the percentage of glucose measurements above target values. The output columns
correspond to the subject id followed by the target values, and the
output rows correspond to the subjects. The values will be between 0
(no measurements) and 100 (all measurements).
}
\details{
A tibble object with 1 row for each subject, a column for subject id and
column for each target value is returned. NA's will be omitted from the glucose
values in calculation of percent.
}
\examples{

data(example_data_1_subject)

above_percent(example_data_1_subject)
above_percent(example_data_1_subject, targets_above = c(100, 150, 180))

data(example_data_5_subject)

above_percent(example_data_5_subject)
above_percent(example_data_5_subject, targets_above = c(70, 170))

}
\references{
Rodbard (2009) Interpretation of continuous glucose monitoring data:
glycemic variability and quality of glycemic control,
\emph{Diabetes Technology and Therapeutics} \strong{11} .55-67,
\doi{10.1089/dia.2008.0132}.
}
\seealso{
plot_ranges()
}
