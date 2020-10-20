#Assignment 3(a)
λ = 0.2
n = 4

P = [λ/n            (1-λ)/3+λ/n   (1-λ)/3+λ/n   (1-λ)/3+λ/n
     λ/n            λ/n     (1-λ)/2+λ/n     (1-λ)/2+λ/n
     (1-λ)+λ/n      λ/n     λ/n             λ/n
     (1-λ)/2+λ/n    λ/n     (1-λ)/2+λ/n     λ/n
    ]

q = [1/4 1/4 1/4 1/4]

sol = q*P^1000000000000000

#Assignment 3(b)
function adjtolam!(A, λ)
    n = length(eachrow(A))

    for row in eachrow(A)
        n_i = 0
        for i in eachindex(row)
            if row[i] != 0
                n_i += 1
            end
        end

        for i in eachindex(row)
            row[i] = (row[i] != 0 ? (1 - λ)/n_i : 0) + λ/n
        end
    end

    return A
end

A = [0.0 1.0 1.0 1.0
     0.0 0.0 1.0 1.0
     1.0 0.0 0.0 0.0
     1.0 0.0 1.0 0.0
    ]

adjtolam!(A, λ)

A == P # should be true after running above function
