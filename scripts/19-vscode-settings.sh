#!/usr/bin/env bash

set -e

if [[ ! -d /home/vagrant/.vscode-server/data/Machine/ ]]; then
  mkdir -p /home/vagrant/.vscode-server/data/Machine/
fi

if [[ ! -f /home/vagrant/.vscode-server/data/Machine/settings.json ]]; then
cat << EOF > /home/vagrant/.vscode-server/data/Machine/settings.json
{
    "editor.cursorBlinking": "solid",
    "editor.rulers": [
      80,
      100,
      120
    ],
    "editor.tabSize": 2,
    "emeraldwalk.runonsave": {
      "commands": [
        {
          "cmd": "/home/vagrant/.asdf/shims/terraform fmt ${file}",
          "isAsync": true,
          "match": ".tf"
        },
        {
          "cmd": "/home/vagrant/.asdf/shims/terragrunt hclfmt --terragrunt-hclfmt-file ${file}",
          "isAsync": true,
          "match": ".hcl"
        }
      ]
    },
    "explorer.confirmDelete": false,
    "explorer.confirmDragAndDrop": false,
    "extensions.ignoreRecommendations": true,
    "files.trimTrailingWhitespace": true,
    "go.formatTool": "goimports",
    "python.formatting.provider": "autopep8",
    "python.pythonPath": "/usr/bin/python3",
    "telemetry.enableCrashReporter": false,
    "telemetry.enableTelemetry": false,
    "terminal.integrated.rendererType": "dom",
    "terminal.integrated.shell.linux": "/usr/bin/zsh",
    "terminal.integrated.scrollback": 2000,
    "terraform.codelens.enabled": false,
    "terraform.indexing": {
      "enabled": false
    },
    "terraform.telemetry.enabled": false,
    "workbench.colorTheme": "Quiet Light",
    "workbench.editor.showTabs": false,
    "workbench.iconTheme": null,
    "peacock.favoriteColors": [
      {
        "name": "Angular Red",
        "value": "#b52e31"
      },
      {
        "name": "Auth0 Orange",
        "value": "#eb5424"
      },
      {
        "name": "Azure Blue",
        "value": "#007fff"
      },
      {
        "name": "C# Purple",
        "value": "#68217A"
      },
      {
        "name": "Gatsby Purple",
        "value": "#639"
      },
      {
        "name": "Go Cyan",
        "value": "#5dc9e2"
      },
      {
        "name": "Java Blue-Gray",
        "value": "#557c9b"
      },
      {
        "name": "JavaScript Yellow",
        "value": "#f9e64f"
      },
      {
        "name": "Mandalorian Blue",
        "value": "#1857a4"
      },
      {
        "name": "Node Green",
        "value": "#215732"
      },
      {
        "name": "React Blue",
        "value": "#00b3e6"
      },
      {
        "name": "Something Different",
        "value": "#832561"
      },
      {
        "name": "Vue Green",
        "value": "#42b883"
      }
    ],
    "editor.renderWhitespace": "none",
    "editor.renderControlCharacters": false,
    "breadcrumbs.enabled": false,
    "go.toolsEnvVars": {
      "GO111MODULE": "on"
    },
    "javascript.updateImportsOnFileMove.enabled": "never",
    "files.associations": {
      "*.tfvars": "terraform",
      "*.hcl": "terraform"
    },
    "workbench.editorAssociations": [
      {
        "viewType": "jupyter.notebook.ipynb",
        "filenamePattern": "*.ipynb"
      }
    ]
  }
EOF

fi

