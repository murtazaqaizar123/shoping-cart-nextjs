// ecosystem.config.js

module.exports = {
  apps: [
    {
      name: 'shopping-cart',
      cwd: '/var/lib/jenkins/workspace/shopping-chart',
      script: 'pnpm',
      args: 'start',
      interpreter: 'none',
      env: {
        NODE_ENV: 'production',
        PORT: 3000
      }
    }
  ]
};
