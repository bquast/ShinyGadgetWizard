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

    observeEvent(input$done, {
      stopApp( ShinyGadgetWizard:::wizard2() )
    })

  }

  # run app
  runGadget(ui, server, viewer = dialogViewer("Wizard"))

}
