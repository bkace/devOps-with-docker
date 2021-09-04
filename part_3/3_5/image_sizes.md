### Image Sizes

#### Before Starting
    
    Script started on Wed Sep  1 12:46:30 2021
    command: docker images
    REPOSITORY                                                         TAG             IMAGE ID       CREATED          SIZE
    example-backend                                                    latest          6be3193d5400   3 hours ago      441MB
    example-frontend                                                   latest          d62f07a6c927   21 hours ago     445MB
    

    Script done on Wed Sep  1 12:46:30 2021

#### Image size when using from node and from golang

    Script started on Wed Sep  1 12:47:36 2021
    command: docker images
    REPOSITORY                                                         TAG             IMAGE ID       CREATED              SIZE
    example-frontend                                                   fromnode        faf65f28c7b9   About a minute ago   1.15GB
    example-backend                                                    fromgolang      39b1bdaad372   15 minutes ago       960MB
    example-backend                                                    latest          6be3193d5400   3 hours ago          441MB
    example-frontend                                                   latest          d62f07a6c927   21 hours ago         445MB

    Script done on Wed Sep  1 12:47:36 2021

#### Image size when using alpine variants
    Script started on Wed Sep  1 13:18:53 2021
    command: docker images
    REPOSITORY                                                         TAG                IMAGE ID       CREATED             SIZE
    example-backend                                                    latest             9e7c125e2a97   10 minutes ago      440MB
    example-frontend                                                   latest             991f1e28b67f   23 minutes ago      343MB

    Script done on Wed Sep  1 13:18:53 2021
