name: Docker Image CI

on: [push]

jobs:

  build:
 
    runs-on: ubuntu-latest
 
    steps:
    - uses: actions/checkout@master
    - name: Build the Docker image
      run: docker build . --file Dockerfile --tag xamarin-android-linux:$(date +%s)
