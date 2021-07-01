### Explanation

- I had to make changes to the api path in the frontend Dockerfile. 
- Changed from `RUN REACT_APP_BACKEND_URL=http://localhost:8080 npm run build ` to `RUN REACT_APP_BACKEND_URL=http://localhost/api npm run build`

Since the frontend and backend container runs behind a reverse proxy, the backend also passes through reverse-proxy. The nginx configuration has the proxy pass and location defined for backend.  