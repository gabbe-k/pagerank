#Assignment 3(a)
λ = 0.2
n = 4

P = [λ/n            (1-λ)/3+λ/n   (1-λ)/3+λ/n   (1-λ)/3+λ/n
     λ/n            λ/n     (1-λ)/2+λ/n     (1-λ)/2+λ/n
     (1-λ)+λ/n      λ/n     λ/n             λ/n
     (1-λ)/2+λ/n    λ/n     (1-λ)/2+λ/n     λ/n
    ]

q = [1/4 1/4 1/4 1/4]
print(q)

sol = q*P^1000000000000000

P2 = [0 1/3 1/3 1/3
     0 0 1/2 1/2
     1 0 0 0
     1/2 0 1/2 0
    ]
for row in eachrow(P)
        println(row)
end


#Assignment 3(b)
adjtolam(P2,λ,n)

function adjtolam(P, λ, n)
    for row in eachrow(P)
        for i in 1:size(row)
            row[i] += λ/n
        end
    end
    return P
end
