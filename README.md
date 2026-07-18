# AI Red-Team Arsenal 2026

Indice dos forks em **`maux339-cpu`** das ferramentas em alta no X.

> **Uso autorizado / pesquisa / laboratorio local apenas.**  
> T3MP3ST e WallBreaker sao ferramentas ofensivas — so em alvos/modelos com permissao.  
> Licencas upstream: **AGPL-3.0** (copyleft).

## Forks neste GitHub

| Projeto | Nosso repo | Upstream | Funcao |
|---------|------------|----------|--------|
| **T3MP3ST** | https://github.com/maux339-cpu/T3MP3ST | [elder-plinius/T3MP3ST](https://github.com/elder-plinius/T3MP3ST) | Harness multi-agente: Claude Code/Codex/local → recon/exploit/report |
| **WallBreaker** | https://github.com/maux339-cpu/wallbreaker | [JailbrokenAI/wallbreaker](https://github.com/JailbrokenAI/wallbreaker) | CLI red-team / jailbreak de LLMs (campanha autonoma) |
| **OBLITERATUS** | https://github.com/maux339-cpu/OBLITERATUS | [elder-plinius/OBLITERATUS](https://github.com/elder-plinius/OBLITERATUS) | Toolkit remocao de refusal / free-speech em modelos |
| **Heretic** | https://github.com/maux339-cpu/heretic | [p-e-w/heretic](https://github.com/p-e-w/heretic) | Abliteration automatica (remove censura de pesos open-source) |

## Clone local (Windows)

```powershell
$Dest = "$env:USERPROFILE\repos\ai-redteam-tools"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null
foreach ($r in @('T3MP3ST','wallbreaker','OBLITERATUS','heretic')) {
  if (-not (Test-Path "$Dest\$r")) {
    gh repo clone "maux339-cpu/$r" "$Dest\$r"
  }
}
```

Pasta padrao: `C:\Users\maux3\repos\ai-redteam-tools\`

## Atualizar forks a partir do upstream

```powershell
cd C:\Users\maux3\repos\ai-redteam-tools\T3MP3ST
gh repo sync maux339-cpu/T3MP3ST --force   # ou: git fetch upstream; git merge upstream/main
```

(Configure `upstream` se o clone do fork ainda nao tiver.)

## Quick refs (upstream README)

### T3MP3ST
```bash
npm install && npm run server   # War Room :3333
# Ollama: TEMPEST_LOCAL_BASE_URL + TEMPEST_LOCAL_MODEL
```

### WallBreaker
```bash
pip install -e ".[dev]"
cp config.example.toml config.toml
wallbreaker check && wallbreaker
```

### Heretic / OBLITERATUS
Ver README de cada repo (pipeline de abliteration / liberacao de pesos).

## Relacionado

- OSINT arsenal: https://github.com/maux339-cpu/osint-x-intel-arsenal-2026
- Conta: https://github.com/maux339-cpu

## Aviso legal

Voce e o unico responsavel pelo uso. Nao use T3MP3ST em redes de terceiros sem autorizacao escrita. Nao use WallBreaker/Heretic/OBLITERATUS para abusar de servicos de terceiros.
