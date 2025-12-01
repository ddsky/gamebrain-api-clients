# MCP Setup

Read more about setting up the [GameBrain MCP server](https://gamebrain.co/api/docs/mcp-setup). Simply get your free API key and copy this config into your MCP client:

```json
{
  "mcpServers": {
    "gamebrain": {
      "command": "npx",
      "args": [
        "-y",
        "mcp-remote",
        "https://api.gamebrain.co/v1/mcp?api-key=YOUR_KEY"
      ]
    }
  }
}
```

## Postman collection updates

The GitHub Actions workflow at `.github/workflows/postman-collection.yml` regenerates and
publishes the Postman collection whenever `gamebrain-openapi.yaml` changes. Configure the
following repository values in **Settings → Secrets and variables → Actions**:

- **Secret `POSTMAN_API_KEY`** – your Postman API key (stored under *Repository secrets*).
- **Variable `POSTMAN_COLLECTION_ID`** – the target Postman collection ID to overwrite
  (stored under *Repository variables*).

Both values must be present for the workflow to succeed.
