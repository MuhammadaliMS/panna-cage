#!/bin/sh
# Wrap game.html (artifact body) into a standalone index.html
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en"><head><meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<meta name="description" content="A clay 3D street football (panna) game in the browser: 1v1 in the cage, three grounds with their own rules.">\n'
  printf '<meta property="og:title" content="Panna Cage">\n<meta property="og:description" content="1v1 street football in a clay cage. Nutmeg your rival.">\n'
  printf '<meta name="theme-color" content="#1d1a17">\n<link rel="icon" href="data:,">\n'
  cat game.html
  printf '\n</html>\n'
} > index.html
