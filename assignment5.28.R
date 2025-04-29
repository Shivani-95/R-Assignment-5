# Develop an R function that saves plots in 
# both JPEG and PDF formats automatically.

save_plot_both_formats <- function(plot, filename, width = 7, height = 5, dpi = 300) {
  # Save as PDF
  ggsave(
    paste0(filename, ".pdf"),
    plot = plot,
    width = width,
    height = height,
    units = "in"
  )
  
  # Save as JPEG
  ggsave(
    paste0(filename, ".jpg"),
    plot = plot,
    width = width,
    height = height,
    dpi = dpi,
    units = "in",
    device = "jpeg"
  )
  
  message("Plot saved as both PDF and JPEG.")
}
