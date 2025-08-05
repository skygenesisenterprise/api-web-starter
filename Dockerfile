# Multi-stage build: API (Node.js) + UI (Vite/React)

# --- Build API ---
FROM node:20-alpine AS api-build
WORKDIR /app/api
COPY api/package*.json ./
RUN npm install
COPY api ./
RUN npm run build

# --- Build UI ---
FROM node:20-alpine AS ui-build
WORKDIR /app/src
COPY src/package*.json ./
RUN npm install
COPY src ./
RUN npm run build

# --- Production image ---
FROM node:20-alpine AS prod
WORKDIR /app

# Copy built API
COPY --from=api-build /app/api/dist ./api/dist
COPY --from=api-build /app/api/package*.json ./api/
RUN cd api && npm install --omit=dev

# Copy built UI (static files)
COPY --from=ui-build /app/ui/dist ./ui/dist

# Expose ports (API: 3001, UI: 4173)
EXPOSE 3001 4173

# Start both (API and serve UI static files)
# Adapt this CMD if you use a different static server for UI
CMD ["sh", "-c", "cd api && npm start & npx serve ../ui/dist -l 4173"]