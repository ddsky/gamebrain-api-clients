# MCP Setup
[![Trust Score](https://archestra.ai/mcp-catalog/api/badge/quality/ddsky/gamebrain-api-clients)](https://archestra.ai/mcp-catalog/ddsky__gamebrain-api-clients)

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
