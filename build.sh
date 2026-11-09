#!/bin/sh
# luzes-de-antioquia.html is a page fragment (the Claude Artifact format: no <html>/<head>).
# This wraps it into the full index.html that GitHub Pages serves.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="Cozy game 3D na Antioquia de Atos 11: cuide da primeira comunidade chamada cristã.">\n'
  printf '<style>[hidden]{display:none!important}</style>\n</head>\n<body>\n'
  cat luzes-de-antioquia.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html gerado"
