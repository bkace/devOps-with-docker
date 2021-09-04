### Image Sizes Before and After multi stage build

#### Before multi stage build 
    Script started on Thu Sep  2 11:45:20 2021
    command: docker images
    REPOSITORY                                                         TAG                 IMAGE ID       CREATED          SIZE
    example-backend                                                    latest              9e7c125e2a97   23 hours ago     440MB
    example-frontend                                                   latest              991f1e28b67f   23 hours ago     343MB

    Script done on Thu Sep  2 11:45:20 2021

### After multi stage build 
    Script started on Thu Sep  2 13:41:00 2021
    command: docker images
    REPOSITORY                                                         TAG                 IMAGE ID       CREATED          SIZE
    example-backend                                                    multi-stage-build   e5b82fde41a9   51 minutes ago   17MB
    example-frontend                                                   multi-stage-build   d20f6657c971   20 hours ago     126MB
    example-backend                                                    latest              9e7c125e2a97   23 hours ago     440MB
    example-frontend                                                   latest              991f1e28b67f   23 hours ago     343MB

    Script done on Thu Sep  2 13:41:00 2021
