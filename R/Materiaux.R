#' @title List of materials used for piping
#' @description
#' This dataset contains technical information on materials used
#' for the design of piping for domestic or industrial use
#'
#' @format
#' A data frame with 7 rows and 8 columns
#'
#' \describe{
#'   \item{Material}{Name of the material}
#'   \item{Application domain}{Domain in which this type of material is used}
#'   \item{Max pressure (bar)}{Maximum pressure that the fluid can support}
#'   \item{Max temperature (degrees Celsius)}{Maximum temperature that the material can withstand}
#'   \item{Max shear (Pa)}{Maximum shear stress that the material can undergo}
#'   \item{Roughness (mm)}{Roughness of the material}
#'   \item{Corrosion resistance}{Level of resistance of the material to corrosion}
#'   \item{Advantages}{Advantages of using this material}
#'   \item{Limits/Constraints}{Limits or constraints related to the use of this material}
#' }
#'
#' @source Internal data constructed for the package
#'
#' @examples
#'
#' data(Materials_df)
#'
#' @keywords datasets
"materials_df"
