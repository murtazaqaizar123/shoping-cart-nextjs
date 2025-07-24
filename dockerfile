# -------- Base Image --------
FROM node:18-alpine

# -------- Set Working Directory --------
WORKDIR /app

# -------- Copy Files --------
COPY . .

# -------- Install PNPM --------
RUN npm install -g pnpm

# -------- Install Dependencies --------
RUN pnpm install

# -------- Build App --------
RUN pnpm build

# -------- Set Environment Variables --------
ENV NODE_ENV=production
ENV PORT=3000

# -------- Expose Port --------
EXPOSE 3000

# -------- Start App --------
CMD ["pnpm", "start"]
