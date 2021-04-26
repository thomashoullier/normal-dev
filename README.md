# Normal deviates
Generate pseudorandom numbers from a normal (Gaussian) distribution.

## Usage

## Example

## Implementation
We use the algorithm of ratio of uniforms with bounds by Leva [1].
The deviate is built using the in-built `random` function. You can
set the seed for that if you want repeatability. The quality of
pseudorandom numbers is dependent on your implementation's `random`.

## Caveats
* I only tested the generator via visual assessment of the histogram.
* I do not know the pros and cons of using the algorithm from Leva.

## Dependencies
* `normal-dev`: None.

## Test

## References
1. J. L. Leva, “A fast normal random number generator,” ACM Transactions on
   Mathematical Software 18(4), 449–453 (1992).
   https://doi.org/10.1145/138351.138364
