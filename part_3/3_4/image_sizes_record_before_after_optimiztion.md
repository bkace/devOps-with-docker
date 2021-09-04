### Before Optimization
```
    Script started on Tue Aug 31 15:56:07 2021
    command: docker images
    REPOSITORY                                                         TAG             IMAGE ID       CREATED         SIZE
    example-backend                                                    latest          5ff56578fd23   4 hours ago     653MB
    example-frontend                                                   latest          e5a57e3897e8   4 hours ago     665MB

    Script done on Tue Aug 31 15:56:08 2021
```

### After Optimization
```
    Script started on Tue Aug 31 17:12:00 2021
    command: docker images
    REPOSITORY                                                         TAG             IMAGE ID       CREATED             SIZE
    example-backend                                                    latest          dd4db3c78b00   29 minutes ago      441MB
    example-frontend                                                   latest          d62f07a6c927   59 minutes ago      445MB

    Script done on Tue Aug 31 17:12:00 2021
```
