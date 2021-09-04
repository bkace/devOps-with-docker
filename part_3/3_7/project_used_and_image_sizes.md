### Project Used and Image Sizes Detail

The project used for this exercise is materials-appications's rails-example-project

#### Before Optimization 
    Script started on Thu Sep  2 14:19:20 2021
    command: docker images
    REPOSITORY                                                         TAG             IMAGE ID       CREATED              SIZE
    rails-example-project                                              latest          5cc446cff180   About a minute ago   1.33GB

    Script done on Thu Sep  2 14:19:21 2021

#### After Optimization 

    Script started on Fri Sep  3 14:55:04 2021
    command: docker images
    REPOSITORY                                                         TAG                 IMAGE ID       CREATED              SIZE
    rails-example-project                                              multi-stage-build   f549ad2563e8   About a minute ago   241MB
    rails-example-project                                              latest              5cc446cff180   25 hours ago         1.33GB

    Script done on Fri Sep  3 14:55:04 2021
