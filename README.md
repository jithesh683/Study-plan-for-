# Daily Study Plan Tracker — GitHub + Supabase

Upload these four files to a new GitHub repository:
- index.html
- config.js
- supabase-setup.sql
- README.md

## Supabase
Open Supabase → SQL Editor and run the complete `supabase-setup.sql` once.

## GitHub Pages
Repository → Settings → Pages → Deploy from a branch → `main` → `/ (root)` → Save.

The website stores topics, notes, Q&A and attached files in the Supabase cloud database and listens for database changes, so the same data/status can appear on other systems.

The included config uses the Supabase Project URL and publishable key supplied for this project. Never use a secret/service-role key in the browser.
