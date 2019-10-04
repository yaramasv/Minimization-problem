using JuMP,SCS
m=Model(with_optimizer(SCS.Optimizer))
@variable(m,x1)
@variable(m,x2)
@objective(m,Min,0.25*x1^2+x2^2)
@constraint(m,5-x1-x2<=0)

println("The optimization problem to be solved is:")
print(m)
JuMP.optimize!(m)
optimvalue=JuMP.objective_value(m)
x1=JuMP.value(x1)
x2=JuMP.value(x2)
println("Objective value:",optimvalue)
println("x1=:",x1)
println("x2=:",x2)



