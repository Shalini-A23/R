#1. Probability Density Function - N(μ, σ^2)
# P(0 to 4) for N(2, 3)
dnorm(c(0, 1, 2, 3, 4), mean=2, sd=3)


# P(0 to 1) for N(1, 2), N(-1, 0.5), N(0, 1)
dnorm(c(0, 1, 0), mean=c(1, -1, 0), sd=c(2, 0.5, 1))

# P(-3 to 5) for N(3, 2)
dnorm(c(-3, 2, 5), mean=3, sd=2)


#2. Cumulative probabilities
# P(X<=1)
pnorm(1, mean=0, sd=1)      


# P(z<=1.25)
pnorm(1.25, mean=0, sd=1)   


# P(z>=1.25)
1 - pnorm(1.25, mean=0, sd=1)   


# P(z<=-1.25)
pnorm(-1.25, mean=0, sd=1)  


#3. CDF Examples
# P(1<=z<=2.17)
pnorm(2.17) - pnorm(0)    


# P(0<=z<=1)  
pnorm(1) - pnorm(0)         


# P(-2.50<=z<=0)
pnorm(0) - pnorm(-2.50)     

# P(-2.50<=z<=2.50)
pnorm(2.50) - pnorm(-2.50) 


# P(z<=-1.75)
pnorm(-1.75)                



