FROM andrewosh/binder-base

MAINTAINER Stephen Eglen <sje30@cam.ac.uk>

USER root

# Add Julia dependencies
RUN apt-get update && apt-get install -y wget libzmq3-dev cmake libmpich-dev mpich && apt-get clean

USER main

RUN wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.6/julia-0.6.0-linux-x86_64.tar.gz
RUN mkdir $HOME/julia
RUN tar xf julia-0.6.0-linux-x86_64.tar.gz -C $HOME/julia --strip-components=1
ENV PATH $PATH:$HOME/julia/bin

# Install Julia kernel
RUN julia -e 'Pkg.init();Pkg.update();Pkg.add("IJulia");Pkg.add("Plots");Pkg.add("DifferentialEquations")'
