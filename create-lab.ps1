# Create New Vite + Vue + Tailwind 4 Lab Script
param (
    [string]$ProjectName
)

if (-not $ProjectName) {
    $ProjectName = Read-Host "Enter new project name (e.g. exercise6-lab)"
    if (-not $ProjectName) { $ProjectName = "new-lab" }
}

$RootPath = Join-Path $PSScriptRoot $ProjectName

if (Test-Path $RootPath) {
    Write-Error "Folder '$ProjectName' already exists!"
    exit
}

Write-Host "Creating project: $ProjectName..." -ForegroundColor Cyan

# 1. Create Directories
New-Item -ItemType Directory -Path $RootPath | Out-Null
$SrcPath = New-Item -ItemType Directory -Path (Join-Path $RootPath "src") -Force
New-Item -ItemType Directory -Path (Join-Path $RootPath "public") | Out-Null

# Create subdirectories in src
New-Item -ItemType Directory -Path (Join-Path $SrcPath "components") | Out-Null
New-Item -ItemType Directory -Path (Join-Path $SrcPath "assets") | Out-Null

# 2. Create package.json
$PackageJson = @{
    name = $ProjectName.ToLower()
    version = "0.0.0"
    private = $true
    type = "module"
    scripts = @{
        dev = "vite"
        build = "vite build"
        preview = "vite preview"
    }
    dependencies = @{
        vue = "^3.5.29"
        tailwindcss = "^4.2.1"
        "@tailwindcss/vite" = "^4.2.1"
    }
    devDependencies = @{
        vite = "^7.3.1"
        "@vitejs/plugin-vue" = "^6.0.4"
        "vite-plugin-vue-devtools" = "^8.0.6"
    }
} | ConvertTo-Json -Depth 10

[System.IO.File]::WriteAllText((Join-Path $RootPath "package.json"), $PackageJson)

# 3. Create vite.config.js
$ViteConfig = @"
import { fileURLToPath, URL } from 'node:url'
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vueDevTools from 'vite-plugin-vue-devtools'
import tailwindcss from '@tailwindcss/vite'

export default defineConfig({
  plugins: [
    vue(),
    vueDevTools(),
    tailwindcss()
  ],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url))
    },
  },
})
"@
[System.IO.File]::WriteAllText((Join-Path $RootPath "vite.config.js"), $ViteConfig)

# 4. Create index.html
$IndexHtml = @"
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <link rel="icon" href="/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$ProjectName</title>
  </head>
  <body>
    <div id="app"></div>
    <script type="module" src="/src/main.js"></script>
  </body>
</html>
"@
[System.IO.File]::WriteAllText((Join-Path $RootPath "index.html"), $IndexHtml)

# 5. Create src/style.css
$StyleCss = @"
@import "tailwindcss";

:root {
  font-family: Inter, system-ui, Avenir, Helvetica, Arial, sans-serif;
}

body {
  margin: 0;
  display: flex;
  place-items: center;
  min-width: 320px;
  min-height: 100vh;
  background-color: #f9fafb;
}
"@
[System.IO.File]::WriteAllText((Join-Path $RootPath "src/style.css"), $StyleCss)

# 6. Create src/main.js
$MainJs = @"
import './style.css'
import { createApp } from 'vue'
import App from './App.vue'

createApp(App).mount('#app')
"@
[System.IO.File]::WriteAllText((Join-Path $RootPath "src/main.js"), $MainJs)

# 7. Create src/App.vue
$AppVue = @"
<script setup>
// Start coding here!
</script>

<template>
  <div class="max-w-4xl mx-auto p-8 text-center">
    <h1 class="text-4xl font-bold text-blue-600 mb-4">
      New Project: $ProjectName
    </h1>
    <p class="text-gray-600">
      Edit <code class="bg-gray-100 p-1 rounded">src/App.vue</code> to get started.
    </p>
  </div>
</template>
"@
[System.IO.File]::WriteAllText((Join-Path $RootPath "src/App.vue"), $AppVue)

# 8. Automate Installation
Write-Host "`n--- Project Created Successfully ---" -ForegroundColor Green
Write-Host "Installing dependencies... This may take a minute." -ForegroundColor Yellow

# Move into the directory and run npm install
Push-Location $RootPath
try {
    npm install
    Write-Host "`nDependencies installed successfully!" -ForegroundColor Green
}
catch {
    Write-Error "Failed to install dependencies. Please run 'npm install' manually."
}

Write-Host "`nTo start working:"
Write-Host "1. cd $ProjectName" -ForegroundColor Yellow
Write-Host "2. npm run dev" -ForegroundColor Yellow

# Note: The script cannot permanently change the user's terminal directory,
# but we can remind them to CD into it.
