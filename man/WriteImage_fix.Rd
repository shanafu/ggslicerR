% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WriteImage_fix.R
\name{WriteImage_fix}
\alias{WriteImage_fix}
\title{Write out an image file and when MINC image, flip image orientation while preserving all image data}
\usage{
WriteImage_fix(image, output_file)
}
\arguments{
\item{image}{An image object from ReadImage() or ReadImage_fix()}

\item{output_file}{Name of export file.}
}
\value{
An exported image file.
}
\description{
Write out an image file and when MINC image, flip image orientation while preserving all image data
}
\examples{
 \dontrun{
# Write out MINC file
file <- "path/to/image"
image <- ReadImage_fix(file)
WriteImage_fix(image, "output.mnc")

#Write out Nifti file
file <- "path/to/image"
image <- ReadImage_fix(file)
WriteImage_fix(image, "output.nii")
}

}
