#' ShinyGadgetWizard
#' @name wizard
#' @import shiny miniUI
#' @export

wizard <- function() {

  # ui
  ui <- miniPage(
    gadgetTitleBar('Step 1'),
    miniContentPanel()
  )

  # server
  server <- function(input, output, session) {
    if(FALSE)
      stopApp()
  }

  # run app
  runGadget(ui, server, viewer = dialogViewer("Wizard"))

}
