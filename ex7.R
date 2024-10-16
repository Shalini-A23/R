#1. Probability Mass Function
# P(X=5) for λ=4.5
dpois(5, 4.5)  


# P(X=0 to 5) 
sum(dpois(0:5, 4.5))       



#2. Examples – Poisson Distribution
# P(X=0 to 8)
sum(dpois(0:8, 5))        


# P(X=8)   
sum(dpois(8, 5))             


# P(X>8)
1 - sum(dpois(0:8, 5))       

# P(5 to 8)
sum(dpois(0:8, 5)) - sum(dpois(0:4, 5))  

