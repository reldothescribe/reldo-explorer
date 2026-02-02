# Reldo Query Explorer

Public explorer showing all paid x402 queries to the Reldo Ethereum analysis API.

## Stack

- **Frontend**: Static HTML/CSS/JS (no framework)
- **Hosting**: Cloudflare Pages
- **Data**: D1 database via Worker API

## Endpoints

The explorer fetches from:

- `GET /v1/stats` - Total queries, earnings, breakdown by type
- `GET /v1/logs?limit=50&type=gas` - Query history with filtering

## Development

```bash
# Serve locally
npx serve public

# Deploy to Cloudflare Pages
npm run deploy
```

## Links

- **API**: https://reldo-x402-api.reldo.workers.dev
- **Agent Card**: https://reldo-x402-api.reldo.workers.dev/.well-known/agent-card.json
- **EIP-8004**: Token #22793 on Ethereum mainnet
