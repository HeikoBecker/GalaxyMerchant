# GalaxyMerchant

This project was build using the SML programming language.

## Compilation

To compile the project, we recommend using a Linux machine, running Ubuntu 20.04 or newer.
You need to install polyml from the official software repositories, which can be done with:

    sudo apt install -y polyml libpolyml9 libpolyml-dev polyml-modules

The project contains a build script written in bash that automatically compiles the code when run. It is in 
the folder `scripts` and can be run from the top directory of the repository using

    ./scripts/build.sh

After running the script, a binary file `galaxyMerchant` is placed in the top directory.
The binary can be run using `./galaxyMerchant` and it accepts the inputs described in the coding challenge.

## Running the Program

The program is run using `./galaxyMerchant` and afterwards an interactive prompt will appear.
An example input for the program is in  `testcases/example1.txt`. To run the program on
the test inputs, you can use 

    ./galaxyMerchant < ./testcases/example1.txt

The output should be the same as `testcases/example1_output.txt`.

## Automatic Tests

The code is automatically tested against the tests in the `tests` folder
using a GitHub action.
To manually run the tests, run the script `scripts/test.sh` which runs the tests
fully automatically.
