db.createUser({
  user: 'flyway',
  pwd: 'flyway',
  roles: [
    {
      role: 'readWrite',
      db: 'reservations',
    },
  ],
});
