create table if not exists public.study_topics (
  id text primary key,
  subject text default '',
  topic text not null,
  subtopic text default '',
  source text default '',
  start_date date,
  target_date date,
  completed_date date,
  hours text default '',
  confidence text default '3',
  priority text default 'Medium',
  status text default 'Not Started',
  notes text default '',
  attached_notes jsonb not null default '[]'::jsonb,
  qa jsonb not null default '[]'::jsonb,
  files jsonb not null default '[]'::jsonb,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

alter table public.study_topics enable row level security;

drop policy if exists "study tracker public read" on public.study_topics;
drop policy if exists "study tracker public insert" on public.study_topics;
drop policy if exists "study tracker public update" on public.study_topics;
drop policy if exists "study tracker public delete" on public.study_topics;

create policy "study tracker public read" on public.study_topics
for select to anon, authenticated using (true);
create policy "study tracker public insert" on public.study_topics
for insert to anon, authenticated with check (true);
create policy "study tracker public update" on public.study_topics
for update to anon, authenticated using (true) with check (true);
create policy "study tracker public delete" on public.study_topics
for delete to anon, authenticated using (true);

grant select, insert, update, delete on public.study_topics to anon, authenticated;
