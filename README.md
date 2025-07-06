# Monte Carlo Methods and Random Sampling

This repository contains the seminar paper and accompanying examples demonstrating key Monte Carlo concepts including numerical integration, variance reduction techniques, and rare event simulation.

## Seminar Paper

**[Read the Full Paper (PDF)](https://nikogerman.github.io/Seminar/Paper.pdf)** - Complete theoretical treatment of Monte Carlo methods and random sampling

## Interactive Examples

**[View All Examples](https://nikogerman.github.io/Seminar/)** - Main index page with paper and examples

### Monte Carlo Integration:

1. **[Monte Carlo Integration](https://nikogerman.github.io/Seminar/Notebooks/mc-integration.html)** - Basic integration example demonstrating convergence behavior
2. **[Estimating π](https://nikogerman.github.io/Seminar/Notebooks/example1-estimating-pi.html)** - Comparison of different sampling strategies
3. **[Rare Event Estimation](https://nikogerman.github.io/Seminar/Notebooks/example2-rare-event.html)** - Portfolio risk analysis with importance sampling

### Random Sampling Methods:

4. **[Inversion Method](https://nikogerman.github.io/Seminar/Notebooks/inversion-method.html)** - Inverse transform sampling for exponential distributions
5. **[Box-Muller Method](https://nikogerman.github.io/Seminar/Notebooks/box-muller.html)** - Generating normal variates from uniform random variables
6. **[Bivariate Normal Sampling](https://nikogerman.github.io/Seminar/Notebooks/bivariate-normal.html)** - Cholesky decomposition for correlated normal variates

## Implementation

The examples are implemented in R using R Markdown notebooks, showcasing:

**Monte Carlo Integration:**

- Standard Monte Carlo integration
- Importance sampling for variance reduction
- Quasi-Monte Carlo methods (Sobol sequences)
- Grid-based numerical integration
- Convergence analysis and visualization

**Random Sampling Methods:**

- Inverse transform sampling (inversion method)
- Box-Muller transformation for normal variates
- Cholesky decomposition for multivariate normal sampling
- Practical implementation of sampling algorithms

## Repository Structure

```
├── Paper.pdf                     # Seminar paper (PDF)
├── Notebooks/                    # R Markdown source files
│   ├── mc-integration.Rmd         # Monte Carlo integration
│   ├── example1-estimating-pi.Rmd # π estimation comparison
│   ├── example2-rare-event.Rmd    # Rare event simulation
│   ├── inversion-method.Rmd       # Inverse transform sampling
│   ├── box-muller.Rmd            # Box-Muller method
│   └── bivariate-normal.Rmd      # Bivariate normal sampling
├── plots/                        # Generated figures (used in paper)
└── index.html                    # Main landing page with paper and examples
```

## Key Topics Covered

### Monte Carlo Integration:
- **Integration-Sampling Duality**: Fundamental equivalence between integration and expectation estimation
- **Variance Reduction**: Techniques like importance sampling for improved efficiency
- **Quasi-Monte Carlo**: Deterministic sequences for better convergence
- **Rare Event Simulation**: Handling extremely low probability events
- **Convergence Analysis**: Theoretical vs. empirical error behavior

### Random Sampling Methods:
- **Inverse Transform Sampling**: Using CDFs to generate samples from target distributions
- **Box-Muller Transform**: Converting uniform to normal random variables
- **Multivariate Sampling**: Cholesky decomposition for correlated normal variates
- **Transformation Methods**: General approaches to sampling from complex distributions

## Author

**Nikolai German**  

---
*This repository provides theoretical foundations through the seminar paper and practical implementations through interactive examples, offering an overview of Monte Carlo methods with examples of frequently used techniques.*