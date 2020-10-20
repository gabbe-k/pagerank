using Random, LinearAlgebra, Distributions, StatsBase

j = 10
P = [0 1/3 1/3 1/3
     0 0 1/2 1/2
     1 0 0 0
     1/2 0 1/2 0
    ]

#samplefrom
samplefrom(p) = sample(1:4, weights(p))

#Assignment 1 (g)
#Starting at node 1
p = P[1,:]

Random.seed!(1)

#Jump 1
s0 = samplefrom(p)
#Jump 2
s1 = samplefrom(P[s0,:])
#Jump 3
s2 = samplefrom(P[s1,:])

#result
[s0,s1,s2]
