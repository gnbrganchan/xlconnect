\name{getReferenceFormula-methods}
\docType{methods}
\alias{getReferenceFormula}
\alias{getReferenceFormula-methods}
\alias{getReferenceFormula,workbook,character-method}
\title{Querying reference formulas of Excel names}
\description{
Queries the reference formula of an Excel name in a \code{\linkS4class{workbook}} object.
}
\section{Methods}{
\describe{

\item{\code{signature(object = "workbook", name = "character")}}{
Queries the reference formula of the specified \code{name}. This argument is vectorized such that multiple names can be
queried with one method call.
}
}}
\author{
Martin Studer\cr
Mirai Solutions GmbH \url{http://www.mirai-solutions.com}
}
\seealso{
\code{\linkS4class{workbook}}, \code{\link[=createName-methods]{createName}}, \code{\link[=existsName-methods]{existsName}},
\code{\link[=removeName-methods]{removeName}}
}
\examples{
# mtcars xlsx file from demoFiles subfolder of package XLConnect
demoExcelFile <- system.file("demoFiles/mtcars.xlsx", package = "XLConnect")

# Load workbook
wb <- loadWorkbook(demoExcelFile)

# Query reference formula for name 'mtcars'
print(getReferenceFormula(wb, name = "mtcars"))
}
\keyword{methods}
\keyword{utilities}