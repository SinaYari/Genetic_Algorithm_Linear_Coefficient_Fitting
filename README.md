# Genetic Algorithm — Linear Coefficient Fitting

A MATLAB genetic algorithm that evolves coefficients `X, Y, Z` to fit:

```
a*X + b*Y + c*Z ≈ target
```

## Files

- `genAlg.m` — main script: loads data, runs the GA, prints the best result
- `fitnessFunction.m` — scores a candidate by total absolute error (lower error = higher fitness)
- `selector.m` — roulette-wheel selection
- `crossover.m` — combines two parents into two children
- `mutation.m` — randomly mutates one gene

## Input (`input.txt`)

Whitespace-separated integers: `<count> a1 b1 c1 target1 a2 b2 c2 target2 ...`
where `count = 4 × number_of_rows`.

## Usage

```matlab
genAlg
```

Outputs the best-found `X`, `Y`, `Z`.

## Notes

- Mutation rate and generation count (`MAX`) are tunable at the top of `genAlg.m`.
- Fitness is `1/error`, so the GA tracks the **maximum** fitness as the best fit.
