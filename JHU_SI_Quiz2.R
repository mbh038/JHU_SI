## JHU RM

## Quiz Two

## Michael Hunt

## Question Two

# Suppose that diastolic blood pressures (DBPs) for men aged 35-44 are normally
# distributed with a mean of 80 (mm Hg) and a standard deviation of 10.
# About what is the probability that a random 35-44 year old has a DBP
# less than 70?

pnorm(70,mean=80,sd=10)

## Question Three

# Brain volume for adult women is normally distributed with a mean of about 1,100
# cc for women with a standard deviation of 75 cc.
# What brain volume represents the 95th percentile?

qnorm(0.95,mean=1100,sd=75)

## Question Four

# Refer to the previous question. Brain volume for adult women is about 1,100 cc
# for women with a standard deviation of 75 cc. Consider the sample mean of
# 100 random adult women from this population.
# What is the 95th percentile of the distribution of that sample mean?

## Question Five

# You flip a fair coin 5 times.
# About what's the probability of getting 4 or 5 heads?

pbinom(3,5,0.5,lower.tail=FALSE)
1-pbinom(3,5,0.5)

## Question Seven

# Consider a standard uniform density. The mean for this density is .5 and the
# variance is 1 / 12. You sample 1,000 observations from this distribution
# and take the sample mean, what value would you expect it to be near?

x<-c(rep(runif(1000,0,1),1000))

## Question Eight

# The number of people showing up at a bus stop is assumed to be Poisson with
# a mean of 5 people per hour. You watch the bus stop for 3 hours.
# About what's the probability of viewing 10 or fewer people?

ppois(10,15)