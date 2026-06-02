# AUTOKEYS REMAPS PRO - SAT V3.1

## Incluye

- Sincronización con Supabase.
- Órdenes de trabajo online.
- Técnico responsable manual.
- Técnico auxiliar manual.
- Revisado por.
- Gastos e ingresos.
- Beneficio automático.
- Panel financiero.
- Copia cliente.
- Garantía GAR-001.
- Botón WhatsApp.
- Servicios completos AUTOKEYS REMAPS PRO.

## Paso 1: Supabase

Entra en Supabase > SQL Editor > New query.

Copia el contenido de:

supabase_schema.sql

Pégalo y pulsa Run.

## Paso 2: Configurar clave

Abre:

src/config.js

Pega tu ANON PUBLIC KEY en:

SUPABASE_ANON_KEY

No uses service_role.

## Paso 3: Subir a GitHub

Sube todos estos archivos a tu repositorio:

- package.json
- index.html
- src
- supabase_schema.sql
- README.md

## Paso 4: Vercel

Vercel detectará Vite.

Build command:
npm run build

Output directory:
dist
