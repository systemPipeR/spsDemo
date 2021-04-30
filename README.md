# systemPipeShiny for Shiny Contest <img src="https://github.com/systemPipeR/systemPipeShiny-book/blob/master/img/sps.png?raw=true" align="right" height="139" />

This is the repository for Shiny Contest submission. This repository contains 
code for the default deployment of systemPipeShiny. 

To deploy the same app, first [install systemPipeShiny](https://systempipe.org/sps/install/).
Then, it should be ready to go. If you need to change some app options and settings, 
all you need is to modify the `global.R` file and read our [manual](https://systempipe.org/sps/adv_features/config/)  
for details. 

## What is systemPipeShiny 
_systemPipeShiny_ (SPS) is an R/Bioconductor package that provides a Shiny 
application for interactive data analysis workflow 
management and downstream data visualization. SPS allows non-R users, 
such as experimentalists, to design, control, execute and visualize data analysis 
workflows interactively without requiring knowledge of R. Moreover, SPS has 
been designed as a general purpose framework to allow users perform deep customization 
and add their own components.

## Key features

![design](https://systempipe.org/sps/img/sps_structure.png)

- Three powerful default modules:
    - [Workflow](https://systempipe.org/sps/modules/workflow/): 
      use [systemPipeR](https://systempipe.org/sp/) (SPR) as backend to 
      interactively generate, design, and run workflows. Current templates 
      are biological-centric, but as a workflow environment, SPR can adapt to any 
      type of data analysis workflows.
    - [RNAseq](https://systempipe.org/sps/modules/rnaseq/): 
      Interactive conduct downstream analysis of RNA sequencing raw counts, including 
      different ways of data normalization, deferentially expressed gene analysis 
      and more than 10 types of clustering or summary plotting methods. 
    - [Quick ggplot](https://systempipe.org/sps/modules/ggplot/): 
      To make a ggplot within a few mouse clicks with any kind of 
      tabular data you upload. 
    - More modules in the future...
- [Extendable](https://systempipe.org/sps/adv_features/tabs/): 
  users are able to add their own components to the dashboard as individual "tabs". 
    - Different templates that satisfy both beginners and advanced developers
        - Simple: high level wrappers, you only need to focus on plotting code, no Shiny 
          development knowledge is required.
        - Full: full Shiny code, for advanced users, customize everything of the tab.
- [Canvas](https://systempipe.org/sps/canvas/): A workbench for interactive quick image editing
    - Communicates with all plot options on other tabs, take screenshots of them and 
      send to this tool for further image editing.
    - Combine/compare different plots, add annotations and make a scientific figure.
    - Drag to upload your own images. 
- Fully customizable: change almost everything of the default app
    - [Load/unload certain tabs](https://systempipe.org/sps/adv_features/displaytabs/)
    - [Overwrite default tabs](https://systempipe.org/sps/adv_features/overwritetabs/)
    - [App title/ logo](https://systempipe.org/sps/adv_features/other_customizations/)
    - and more...
- [Security and admin](https://systempipe.org/sps/adv_features/login/):
    - Options to turn on login feature with interactive loading screens that users can play with
    - User defined secret url for admin page
        - View real-time app analytics
        - Control app accounts interactively
- [Notification](https://systempipe.org/sps/adv_features/notification/):
  a simple way to broadcast messages to your users without redeploying the app everytime. 
- [User defined interactive tutorials](https://systempipe.org/sps/adv_features/guide/):
  Easy-to-user methods and templates to create your own interactive tutorials
- [Detailed debugging](https://systempipe.org/sps/adv_features/debug/):
  options to turn on verbose logging and traceback messages.
    - [Duel-end logging](https://systempipe.org/sps/dev/spscomps/server/#shinycatch): 
      Exceptions handling with logging on both user-end and server-end. 
- [Deploy-ready](https://systempipe.org/sps/deploy/):
  When you initialize a SPS project, the app is deploy-ready. You can deploy it 
  to Shiny servers like _shinyapps.io_ as soon as the project is created. 
- [Developer tools](https://systempipe.org/sps/dev/): If you see any good features 
  from SPS, you can use it in your own apps. Core features of SPS has 
  been split into smaller supporting packages {spsComps}, {drawer} and {spsUtil} for
  you to use in your own Shiny apps or Rmarkdowns.


Current examples, templates, workflows, and visualizations are 
biological/bioinformatic focused. However, with the proper configuration, 
one can apply SPS as framework on any type of data analysis and visualization.


## About this submission
The submission demo link is only a **small part** of what SPS can do (defaults). To view
how the app differs under different options, try these additional demos:

| Type and link| option changed | notes |
| --- | --- | --- |
| [Default full installation](https://tgirke.shinyapps.io/systemPipeShiny/) | [See installation](#installation) | default full app, may take longer (~15s) to load |
| [Minimum installation](https://tgirke.shinyapps.io/systemPipeShiny_min/) | [See installation](#installation) | no modules installed |
| [Login enabled](https://tgirke.shinyapps.io/systemPipeShiny_loading/) | `login_screen = TRUE; login_theme = "empty"` | no modules installed |
| [Login and login themes](https://tgirke.shinyapps.io/systemPipeShiny_loading_theme/) | `login_screen = TRUE; login_theme = "random"` | no modules installed |
| [App admin page](https://tgirke.shinyapps.io/systemPipeShiny_loading/?admin) | `admin_page = TRUE` | use the link or simply add "?admin" to the end of URL of any demos |

For the login required demos, the app account name is **"user"** password **"user"**.

For the admin login, account name **"admin"**, password **"admin"**.

**Please DO NOT delete or change password when you are trying the admin features.**
Although _shinyapps.io_ will reset the app once a while, this will affect other people 
who are viewing the demo simultaneously. 

## Installation
Conduct our [Github README](https://github.com/systemPipeR/systemPipeShiny) 
or [website](https://systempipe.org/sps/install/) for details.

SPS is under heavy development, we recommend you to install the Github version 
for the latest features. 

## Important Links:

- [Website and user manual](https://systempipe.org/sps/)
- [Github and package source code](https://github.com/systemPipeR/systemPipeShiny)
- [Bioconductor](http://bioconductor.org/packages/release/bioc/html/systemPipeShiny.html)
- [Deploy Example](https://github.com/systemPipeR/spsDemo)

## About the RStudio Cloud project
The RStudio Cloud project associated with this submission does not have Workflow 
and RNAseq module installed. These two modules depend heavily on some Bioconductor 
packages that require more than 1GB of RAM to install and to load, which is not 
available for a typical free account. If you have an advanced account and want to 
try these two modules. Follow the app start-up message to install packages and restart 
the app to load the modules. 

## Screenshots of SPS

##### Loading screens
![loading screens](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/loading_theme.gif?raw=true)

##### Workflow module

![WF](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/wf_main.png?raw=true)

##### Workflow Execution
![WF run](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/wf_run.png?raw=true)

##### RNASeq module
![RNASeq module](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/rnaseq_deg.png?raw=true)

![RNASeq module](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/rnaseq_heatmap.png?raw=true)

##### Canvas 
![canvas](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/canvas.png?raw=true)

##### Canvas 
![canvas](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/canvas.png?raw=true)

##### Admin
![Admin](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/admin_login.png?raw=true)

![Admin](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/admin_server_info.png?raw=true)

![Admin](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/admin_user_control.png?raw=true)

##### Debugging
![Debugging](https://github.com/systemPipeR/systemPipeR.github.io/blob/main/static/sps/img/logging.png?raw=true)

## Contributors
Le Zhang, Daniela Cassol, Ponmathi Ramasamy, Jianhai Zhang, Gordon Mosher & Thomas Girke



