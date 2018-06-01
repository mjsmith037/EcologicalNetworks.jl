function UnipartiteNetwork(A::M) where {M<:AbstractMatrix{Bool}}
  check_unipartiteness(A)
  S = "s".*string.(1:size(A,1))
  UnipartiteNetwork(A, S)
end

function UnipartiteNetwork(A::M, S::Vector{NT}) where {M<:AbstractMatrix{Bool}, NT <: AllowedSpeciesTypes}
  check_unipartiteness(A, S)
  UnipartiteNetwork{NT}(A, S)
end


function BipartiteNetwork(A::M) where {M<:AbstractMatrix{Bool}}
  check_bipartiteness(A)
  T = "t".*string.(1:size(A,1))
  B = "b".*string.(1:size(A,2))
  BipartiteNetwork{eltype(T)}(A, T, B)
end

function BipartiteNetwork(A::M, T::Vector{NT}, B::Vector{NT}) where {M<:AbstractMatrix{Bool}, NT<:AllowedSpeciesTypes}
  check_bipartiteness(A, T, B)
  BipartiteNetwork{eltype(T)}(A, T, B)
end




function UnipartiteQuantitativeNetwork{IT<:Number}(A::Array{IT,2})
  check_unipartiteness(A)
  S = "s".*string.(1:size(A,1))
  UnipartiteQuantitativeNetwork{eltype(A),eltype(S)}(A, S)
end

function UnipartiteQuantitativeNetwork{IT<:Number,NT<:AllowedSpeciesTypes}(A::Array{IT,2}, S::Array{NT,1})
  check_unipartiteness(A, S)
  UnipartiteQuantitativeNetwork{eltype(A),eltype(S)}(A, S)
end

function UnipartiteProbabilisticNetwork{IT<:AbstractFloat}(A::Array{IT,2})
  check_unipartiteness(A)
  check_probability_values(A)
  S = "s".*string.(1:size(A,1))
  UnipartiteProbabilisticNetwork{eltype(A),eltype(S)}(A, S)
end

function UnipartiteProbabilisticNetwork{IT<:AbstractFloat,NT<:AllowedSpeciesTypes}(A::Array{IT,2}, S::Array{NT,1})
  check_unipartiteness(A, S)
  check_probability_values(A)
  UnipartiteProbabilisticNetwork{eltype(A),eltype(S)}(A, S)
end


function BipartiteQuantitativeNetwork{IT<:Number}(A::Array{IT,2})
  check_bipartiteness(A)
  T = "t".*string.(1:size(A,1))
  B = "b".*string.(1:size(A,2))
  BipartiteQuantitativeNetwork{eltype(A),eltype(T)}(A, T, B)
end

function BipartiteQuantitativeNetwork{IT<:Number,NT<:AllowedSpeciesTypes}(A::Array{IT,2}, T::Array{NT,1}, B::Array{NT,1})
  check_bipartiteness(A, T, B)
  BipartiteQuantitativeNetwork{eltype(A),eltype(T)}(A, T, B)
end

function BipartiteProbabilisticNetwork{IT<:AbstractFloat}(A::Array{IT,2})
  check_bipartiteness(A)
  check_probability_values(A)
  T = "t".*string.(1:size(A,1))
  B = "b".*string.(1:size(A,2))
  BipartiteProbabilisticNetwork{eltype(A),eltype(T)}(A, T, B)
end

function BipartiteProbabilisticNetwork{IT<:AbstractFloat,NT<:AllowedSpeciesTypes}(A::Array{IT,2}, T::Array{NT,1}, B::Array{NT,1})
  check_bipartiteness(A, T, B)
  check_probability_values(A)
  BipartiteProbabilisticNetwork{eltype(A),eltype(T)}(A, T, B)
end
