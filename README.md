# Hardware Implementation
This is the hardware implementation of the [fast inverse square root algorithm](https://en.wikipedia.org/wiki/Fast_inverse_square_root). Inverse square root operations are heavily used for 3D graphics rendering. 
They are particularly important for operations such as normalizing vectors, which is a common task in graphics processing for lighting and shading calculations. 
Note that the result is an approximation of the inverse square root.

## Simulation
For the simulation, I used 0.15625 as the input. Its inverse square root is ≈ 2.52982. The simulation returns 2.61486029624939, which gives us an error of about 3.4%.
![SS](https://github.com/user-attachments/assets/34d3bfd8-71be-4c11-86ee-9fd6cdc7adb8)
