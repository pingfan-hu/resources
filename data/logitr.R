library(logitr)

data(package = 'logitr')

head(yogurt)
View(yogurt)

############################
# Multinomial Logit Models #
############################

# 1. Preference Space Model (Default)
mnl_pref <- logitr(data = yogurt,
                   outcome = 'choice',
                   obsID = 'obsID',
                   pars = c('price', 'feat', 'brand'))

summary(mnl_pref) # Model summary
coef(mnl_pref)    # Estimated coefficients
se(mnl_pref)      # Coefficient standard errors
logLik(mnl_pref)  # Log-likelihood
vcov(mnl_pref)    # Var-Cov matrix

# 2. WTP Space Model

# 2.1 Pref transformed to WTP
wtp(mnl_pref, scalePar = 'price')

# 2.2 Direct WTP
set.seed(123) # Set pseudo RNG to be reproducible for any seed of 123.
mnl_wtp <- logitr(data = yogurt,
                  outcome = 'choice',
                  obsID = 'obsID',
                  pars = c('feat', 'brand'),
                  scalePar = 'price',
                  numMultiStarts = 10,
                  numCores = 1)

summary(mnl_wtp)

# 3. Comparison of the 2 WTPs from each model.
wtpCompare(model_pref = mnl_pref,
           model_wtp = mnl_wtp,
           scalePar = 'price')

######################
# Mixed Logit Models #
######################

# 1. Preference Space Model
set.seed(132)
mxl_pref <- logitr(data = yogurt,
                   outcome = 'choice',
                   obsID = 'obsID',
                   panelID = 'id',
                   pars = c('price', 'feat', 'brand'),
                   randPars = c(feat = 'n', brand = 'n'),
                   numMultiStarts = 50,
                   numCores = 1)

summary(mxl_pref)

# 2. WTP Space Model
set.seed(132)
mxl_wtp <- logitr(data = yogurt,
                  outcome = 'choice',
                  obsID = 'obsID',
                  panelID = 'id',
                  pars = c('feat', 'brand'),
                  scalePar = 'price',
                  randPars = c(feat = 'n', brand = 'n'),
                  numMultiStarts = 50,
                  numCores = 1)

summary(mxl_wtp)

# 3. Comparison of the 2 WTPs from each model
wtpCompare(model_pref = mxl_pref,
           model_wtp = mxl_wtp,
           scalePar = 'price')

###################
# Weighted Models #
###################

head(cars_us)
View(cars_us)

# Unweighted data set
set.seed(234)
mnl_wtp_unweighted <- logitr(data = cars_us,
                             outcome = 'choice',
                             obsID = 'obsnum',
                             pars = c('hev', 'phev10', 'phev20', 'phev40', 'bev75', 'bev100', 'bev150', 'american', 'japanese', 'chinese', 'skorean', 'phevFastcharge', 'bevFastcharge', 'opCost', 'accelTime'),
                             scalePar = 'price',
                             robust = TRUE,
                             numMultiStarts = 10,
                             numCores = 1)

summary(mnl_wtp_unweighted)

# Weighted data set
set.seed(234)
mnl_wtp_weighted <- logitr(data = cars_us,
                           outcome = 'choice',
                           obsID = 'obsnum',
                           pars = c('hev', 'phev10', 'phev20', 'phev40', 'bev75', 'bev100', 'bev150', 'american', 'japanese', 'chinese', 'skorean', 'phevFastcharge', 'bevFastcharge', 'opCost', 'accelTime'),
                           scalePar = 'price',
                           weights = 'weights',
                           robust = TRUE,
                           numMultiStarts = 10,
                           numCores = 1)

summary(mnl_wtp_weighted)

# Comparison of these 2 data sets
data.frame(Unweighted = coef(mnl_wtp_unweighted),
           Weighted = coef(mnl_wtp_weighted))

############################
# Predicting Probabilities #
############################

# 1. Preference Space
# 1.1 Without original data
probs <- predict(mnl_pref)
head(probs)
View(probs)

# 1.2 With original data - the 'returnData' argument
probs_original <- predict(mnl_pref,
                          returnData = TRUE)
head(probs_original)
View(probs_original)

# 1.3 New set of alternatives - the 'newdata' argument
data <- subset(yogurt,
               obsID %in% c(42, 13),
               select = c('obsID', 'alt', 'price', 'feat', 'brand'))
probs_mnl_pref <- predict(mnl_pref,
                          newdata = data,
                          obsID = 'obsID')
probs_mnl_pref

# 1.4 Confidence Interval - the 'level' and 'interval' argument
set.seed(321)
probs_mnl_pref <- predict(mnl_pref,
                          newdata = data,
                          obsID = 'obsID',
                          level = 0.95,
                          interval = 'confidence')
probs_mnl_pref

# 2. WTP Space
set.seed(321)
probs_mnl_wtp <- predict(mnl_wtp,
                        newdata = data,
                        obsID = 'obsID',
                        level = 0.95,
                        interval = 'confidence')
probs_mnl_wtp

# 3. Predicting Outcomes - the 'type' argument

# 3.1 Preference space outcome prediction
set.seed(321)
outcomes_pref <- predict(mnl_pref,
                         type = 'outcome',
                         returnData = TRUE)

head(outcomes_pref)

# 3.2 WTP space outcome prediction
set.seed(321)
outcomes_wtp <- predict(mnl_wtp,
                        type = 'outcome',
                        returnData = TRUE)
head(outcomes_wtp)

# 3.3 Accuracy check
chosen_pref <- subset(outcomes_pref,
                      choice == 1)
chosen_pref$correct <- chosen_pref$choice == chosen_pref$predicted_outcome
accuracy_pref <- sum(chosen_pref$correct) / nrow(chosen_pref)
accuracy_pref