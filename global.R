## use shiny::runApp() in console or click right top button
## '>Run App' in Rstudio to start app,
## but do not write `shiny::runApp()` in script, type it in console
# Last modification 2022-10-21
time_start <- Sys.time()
library(systemPipeShiny)
library(magrittr) # load pipes
# load additional libraries that you want to use below
## Workflow module
requireNamespace("pushbar"); requireNamespace("callr")
requireNamespace("readr"); requireNamespace("rhandsontable")
requireNamespace("systemPipeR"); requireNamespace("systemPipeRdata"); requireNamespace("zip")

## RNA-Seq module
requireNamespace("DESeq2"); requireNamespace("Rtsne"); requireNamespace("SummarizedExperiment")
requireNamespace("UpSetR"); requireNamespace("ape")
requireNamespace("glmpca"); requireNamespace("pheatmap"); requireNamespace("systemPipeR")

## Quick ggplot module
requireNamespace("esquisse")


## SPS options to configure the app
# read "https://systempipe.org/sps/adv_features/config/#app-options" for details
spsOption(.list = list(
    title = "systemPipeShiny",
    title_logo = "img/sps_small.png",
    mode = "server",
    warning_toast = FALSE,
    login_screen = FALSE,
    login_theme = "random",
    use_crayon = TRUE,
    verbose = FALSE,
    admin_page = TRUE,
    admin_url = "admin",
    note_url = 'https://raw.githubusercontent.com/systemPipeR/systemPipeShiny/master/inst/remote_resource/notifications_internal.yaml',
    tab_welcome = TRUE,
    tab_vs_main = TRUE,
    tab_canvas = TRUE,
    tab_about = TRUE,
    module_wf = TRUE,
    module_rnaseq = TRUE,
    module_ggplot = TRUE,
    traceback = FALSE,
    is_demo = TRUE,
    welcome_guide = TRUE
))

## An alternative is to comment above and use `spsOption` to overwrite **single** options, eg:
# spsOption("mode", "server")

## use `spsOptions` to check current settings
# spsOptions()


## other useful shiny options
## max upload size, 30Mb here
options(shiny.maxRequestSize = 30*1e6)

## for debugging
# options(shiny.reactlog = TRUE)
# options(shiny.trace = TRUE)
# options(shiny.fullstacktrace = TRUE)
# options(shiny.error = browser)
# options(shiny.autoreload = FALSE) # takes some computer power, you may consider turn it off

##  account information
## PLEASE use following to add your own accounts and remove the default accounts for deployment
# mydb <- spsAccount$new()
# mydb$accList()
# mydb$accAdd(acc_name = "XXX", acc_pass = "$xxxx", role = "admin")
# mydb$accRemove("admin")
# mydb$accRemove("user")

####### SPS Main App Function Starts #########

sps_app <- sps(
    tabs = c("vs_example"),
    server_expr = {
        # add you own server functions below
        msg("Custom expression runs -- Hello World", "GREETING", "green")
    }
)
