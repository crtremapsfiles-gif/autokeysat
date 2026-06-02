-- AUTOKEYS SAT V3.1 - BASE DE DATOS SUPABASE

create table if not exists orders (
  id uuid primary key default gen_random_uuid(),
  ot_number text unique not null,
  created_at timestamptz default now(),
  updated_at timestamptz default now(),
  date_in date,
  date_out date,
  status text default 'Recibido',
  client_name text,
  client_phone text,
  client_email text,
  client_type text default 'Particular',
  vehicle_brand text,
  vehicle_model text,
  vehicle_plate text,
  vehicle_vin text,
  vehicle_year text,
  module_type text,
  module_ref text,
  module_serial text,
  module_source text default 'Aportado por cliente',
  services jsonb default '[]'::jsonb,
  service_manual text,
  unit_manual text,
  fault_description text,
  diagnosis text,
  work_done text,
  replaced_parts text,
  tests_done text,
  internal_notes text,
  client_notes text,
  technician_main text,
  technician_aux text,
  reviewed_by text,
  income_service numeric default 0,
  income_transport numeric default 0,
  income_extra numeric default 0,
  discount numeric default 0,
  expense_parts numeric default 0,
  expense_module numeric default 0,
  expense_transport numeric default 0,
  expense_material numeric default 0,
  expense_labor numeric default 0,
  expense_other numeric default 0,
  payment_method text default 'Pendiente',
  paid boolean default false,
  tracking_in text,
  tracking_out text,
  warranty_applies boolean default true,
  warranty_notes text
);

alter table orders enable row level security;

drop policy if exists "allow all orders v31" on orders;
drop policy if exists "allow all orders v3" on orders;

create policy "allow all orders v31"
on orders
for all
using (true)
with check (true);
