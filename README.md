# Github API Web Starter

A modern, ready-to-use API starter template built with TypeScript and Express.js.  
This project is designed for web developers who want to bootstrap a scalable, secure, and production-ready backend with minimal setup.

## ✨ Features

- ✅ Built with TypeScript
- ⚙️ Express.js RESTful API structure
- 🧪 Integrated testing with Jest and Supertest
- 🧹 Pre-configured ESLint, Prettier, and Husky
- 🐳 Docker-ready for deployment and development
- 🔒 Security enhancements via Helmet and CORS
- 🧾 Request logging with Morgan
- 🌐 OpenAPI (Swagger) support
- 🚦 CI/CD ready with GitHub Actions workflows

## 🧪 Testing

Run tests using:

```bash
npm run test
````

Includes unit and API endpoint tests using `jest` and `supertest`.

## 🚀 Usage

```bash
# Clone the repo
git clone https://github.com/skygenesisenterprise/api-web-starter.git
cd api-web-starter

# Install dependencies
npm install

# Run in development mode
npm run dev

# Build for production
npm run build
```

## 🐳 Docker

To run the API in a Docker container:

```bash
docker build -t github-api-web-starter .
docker run -p 3000:3000 github-api-web-starter
```

## 🏢 Maintained by

**Sky Genesis Enterprise — Open Dev Division**
Building open and collaborative tech resources for the future.

## 📄 License

This project is licensed under the [MIT License](./LICENSE).