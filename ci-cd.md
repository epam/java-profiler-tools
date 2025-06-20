## CI/CD

This project uses GitHub Actions for continuous integration and deployment:

### Build Workflow
- **File**: `.github/workflows/docker-build.yml`
- **Triggers**: Push to main/master branch, pull requests, manual dispatch
- **Actions**: Builds the Docker image and runs basic tests
- **No external dependencies required**

### Publish Workflow (Optional)
- **File**: `.github/workflows/docker-publish.yml`
- **Triggers**: Push tags starting with 'v' (e.g., v1.0.0), manual dispatch
- **Actions**: Builds and publishes the Docker image to Docker Hub
- **Required secrets**: `DOCKER_USERNAME` and `DOCKER_PASSWORD`

### Setting up Docker Hub Publishing
If you want to publish to Docker Hub, add these secrets to your GitHub repository:
1. Go to your repository Settings → Secrets and variables → Actions
2. Add `DOCKER_USERNAME` with your Docker Hub username
3. Add `DOCKER_PASSWORD` with your Docker Hub access token

Then create a tag to trigger the publish workflow:
```bash
git tag v1.0.0
git push origin v1.0.0
```