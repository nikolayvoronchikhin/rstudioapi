\name{versionInfo}
\alias{versionInfo}
\title{
RStudio Version Information
}
\description{
Provides information about the currently running version of RStudio, including it's specific version number and whether it is running in desktop or server mode.
}
\note{
The \code{versionInfo} function was added in version 0.97.124 of RStudio.
}
\usage{
versionInfo()
}

\value{

Returns a list with the following elements:

\tabular{ll}{
   \code{version} \tab A package version object that can be used in comparisons. This is the same value which would be returned from \code{packageVersion("rstudio")} \cr
   \code{mode} \tab Current program mode (either "desktop" or "server")\cr
   \code{citation} \tab An object inheriting from class \code{bibentry}\cr
}


}

\examples{
\dontrun{
require(rstudioapi)
ver <- versionInfo()

# Test specific version constraint
if (ver$version >= "0.97") {
   # do some 0.97 dependent stuff
}

# Check current mode
desktopMode <- ver$mode == "desktop"
serverMode <- ver$mode == "server"

# Get the citation
ver$citation

}

}
