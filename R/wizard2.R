#' ShinyGadgetWizard2
#' @name wizard2
#' @import shiny miniUI

wizard2 <- function() {

  # ui
  ui <- miniPage(
    gadgetTitleBar('Step 2'),
    miniContentPanel()
  )

  # server
  server <- function(input, output, session) {

    observeEvent(input$done, {
      stopApp()
    })

  }

  # run app
  runGadget(ui, server, viewer = dialogViewer("Wizard"))

}
