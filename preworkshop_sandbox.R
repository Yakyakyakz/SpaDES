#preworkshop sandbox that follow the book (https://predictiveecology.org/training/_book/NewModuleIntro.html)

#packages/loading
repos <- c("predictiveecology.r-universe.dev", getOption("repos"))
install.packages(c("Require", "SpaDES.project"), repos = repos)

library(SpaDES.project)
library(here)
# 
# out <- setupProject(
#   packages = "PredictiveEcology/PredictiveEcology.org@training-book/training/R/pkgList.R",
#   options = list(repos = repos),
#   name = "Introduction",
#   modules = "PredictiveEcology/Biomass_core@main"
# )
# sessionInfo()
# 
# 
# ###
# 
# modulePath <- here()
# SpaDES.core::newModule(name = "My_linear_model", 
#                        path = modulePath, 
#                        open = FALSE,
#                        events = list(
#                          init = {
#                            x <- rnorm(10)
#                            y <- x + rnorm(10)
#                            # fit a linear model
#                            sim$model <- lm(y ~ x)
#                          }
#                        ))
# 
# out2 <- simInitAndSpades(module = "My_linear_model", 
#                          paths = list(modulePath = modulePath))
# 
# out <- SpaDES.core::simInit(modules = "My_linear_model", 
#                paths = list(modulePath = modulePath))
# out <- SpaDES.core::spades(out)
# 
# SpaDES.core::completed(out)
# 
# SpaDES.core::newModule("visualize", path = modulePath, open = FALSE,
#                        events = list(
#                          init = {
#                            plot(sim$model)
#                          }
#                        )
# )
# 
# 
# out2 <- SpaDES.core::simInitAndSpades(module = c("My_linear_model", "visualize"), 
#                          paths = list(modulePath = modulePath))
# 
# SpaDES.core::completed(out2)

###Module Files Section
#edited the model in its R file. 

out <- SpaDES.core::simInitAndSpades(modules = "My_linear_model", paths = list(modulePath = modulePath))

out$model 
SpaDES.core::completed(out)


sim <- SpaDES.core::simInit()
sim$a <- 1
sim$b <- sim$a + 2
sim$b
SpaDES.core::envir(sim)
globalenv()
environment()
slotNames(sim)
getSlots("simList")
str(sim)
?'simList-class'
ww

SpaDES.core::modules(out2)
SpaDES.core::depends(out2)
SpaDES.core::packages(out2)
SpaDES.core::outputPath(out2)

mySimOut <- reproducible::Copy(out2) # make a deep copy of the simList
mySimOut <- SpaDES.core::spades(mySimOut)

