#1. Probability Mass Function
# P(X=3) for n=6, p=0.5
dbinom(3, 6, 0.5)   

# P(X=5) for n=6, p=0.5
dbinom(5, 6, 0.5)   


#2. Cumulative probability – dbinom
# P(X=3, 4, 5, or 6)
sum(dbinom(3:6, 6, 0.5))    

# P(X=0 or 1)
sum(dbinom(0:1, 6, 0.5))    

# P(X=0 to 8)
sum(dbinom(0:8, 15, 0.2))   



#3. Cumulative probability – pbinom
# P(X<=3)
pbinom(3, 6, 0.5)                        

# P(X=8)
pbinom(8, 15, 0.2) - pbinom(7, 15, 0.2)  

# P(X>7)
1 - pbinom(7, 15, 0.2)              

# P(4 to 7)
pbinom(7, 15, 0.2) - pbinom(3, 15, 0.2)  
