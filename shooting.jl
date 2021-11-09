### A Pluto.jl notebook ###
# v0.14.4

using Markdown
using InteractiveUtils

# ╔═╡ 82c64cc3-81a7-45d8-87b4-81f28b8c0a9d
using NLsolve

# ╔═╡ 473f6aaf-b5f8-4b4d-94d7-676b3dca8817
using Plots

# ╔═╡ 8c7a1da1-d048-4724-9375-31adc372dbb1
midpoint!(res, x, y, τ, f, t) = res .= x - y - τ * f(t + τ / 2, (x + y) / 2)

# ╔═╡ 30bf3035-ca50-4086-ab2e-888aed6eadf7
function cauchy(scheme!, f, τ, s, y₀, t₀ = zero(τ))
	t, y = t₀, y₀
    T, Y = [t], [y]

	while t < (1 - √eps(t)) * s
		y = getproperty(
			nlsolve(y) do res, x
				scheme!(res, x, y, τ, f, t)
			end,
			:zero)
        t += τ

        push!(Y, y)
        push!(T, t)
	end

	T, Y
end

# ╔═╡ d3e55c3d-b6b2-4e37-9206-1b83ce3bae0e
function shooting(scheme!, f, τ, s, bc!, y₀)
	y = getproperty(
		nlsolve(y₀) do res, y
			_, Y = cauchy(scheme!, f, τ, s, y)

			bc!(res, y, last(Y))
		end,
		:zero
	)
	cauchy(scheme!, f, τ, s, y)
end

# ╔═╡ 0d7ed618-6d9a-4569-94f7-2e17884a5a18
function source(t, y)
	x = similar(y)
	x[1] = y[2]
	x[2] = 0
	x[3] = y[4]
	x[4] = 0
	return x
end

# ╔═╡ 6ee56e07-e9da-4029-9499-3895d7ca387d
function bc!(res, left, right)
	res[1] = left[1]
	res[2] = right[1] - left[3]
	res[3] = right[2] - 2left[4]
	res[4] = right[3] - 1
	nothing
end

# ╔═╡ 7206b5cd-e696-47e7-9ecd-62b7f03a955a
begin
	local T, Y = shooting(midpoint!, source, 0.01, 0.5, bc!, [0.0; 1.0; 1.0; 0.0])
	local fig = plot(xlim = (0, 1))
	scatter!(fig, T, first.(Y), label = "T₁")
	scatter!(fig, T .+ 0.5, (x -> getindex(x, 3)).(Y), label = "T₂")
end

# ╔═╡ Cell order:
# ╠═82c64cc3-81a7-45d8-87b4-81f28b8c0a9d
# ╠═8c7a1da1-d048-4724-9375-31adc372dbb1
# ╠═30bf3035-ca50-4086-ab2e-888aed6eadf7
# ╠═d3e55c3d-b6b2-4e37-9206-1b83ce3bae0e
# ╠═0d7ed618-6d9a-4569-94f7-2e17884a5a18
# ╠═6ee56e07-e9da-4029-9499-3895d7ca387d
# ╠═473f6aaf-b5f8-4b4d-94d7-676b3dca8817
# ╠═7206b5cd-e696-47e7-9ecd-62b7f03a955a
