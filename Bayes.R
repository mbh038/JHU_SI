## calculate the probabability of + given A if we know A given +.

## Couch this in terms of 

# Specificity = P(+|A)
# Sensitivity = P(-|AC) 9AC= A complement, = not A
# Prevalence = P(A)

Bayes<-function(sensitivity=1,specificity=1,prevalence=1){
        sensitivity*prevalence/
                (sensitivity*prevalence+(1-specificity)*(1-prevalence))
}
y<-Bayes()
y