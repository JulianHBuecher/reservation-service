/********************+************************************************************

  Database Schema - Reservation Service

  Version: 1.0.0

  Date: 28.05.2025

********************+************************************************************/

create table if not exists users (
  id uuid DEFAULT gen_random_uuid() primary key,
  name VARCHAR(50) not null,
  family_name VARCHAR(50) not null,
  email VARCHAR(100) not null unique,
  phone VARCHAR(20) not null unique,
  created_at TIMESTAMP DEFAULT now()
);

create table if not exists reservations (
  id uuid DEFAULT gen_random_uuid() primary key,
  start_at TIMESTAMP not null,
  end_at TIMESTAMP not null,
  created_at TIMESTAMP DEFAULT now(),
  created_by uuid references users(id)
);