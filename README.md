# Reynolds

## Description

Reynolds is an R package dedicated to solving pipe hydraulics problems. 
It provides a set of functions that allow, among other things, to:

- Calculate Reynolds numbers
- Determine friction coefficients
- Evaluate linear and minor head losses
- Calculate required pump power

## Installation
```r
# Install from GitHub
devtools::install_github("your-username/Reynolds")
```

## Usage
```r
library(Reynolds)

 Example: Reynolds number calculation
 Re(density, velocity, diameter, viscosity)
Re <- Re(1000, 2, 0.1, 0.001)
```

## Contributing

Contributions are welcome! Feel free to open an issue or submit a pull request.
