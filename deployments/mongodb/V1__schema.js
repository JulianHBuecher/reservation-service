/********************+************************************************************

  Database Schema - Reservation Service

  Version: 1.0.0

  Date: 29.05.2025

********************+************************************************************/

// Create users collection with schema validation
db.createCollection('users', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['name', 'family_name', 'email', 'phone', 'created_at'],
      properties: {
        name: {
          bsonType: 'string',
          description: 'must be a string and is required',
          maxLength: 50,
        },
        family_name: {
          bsonType: 'string',
          description: 'must be a string and is required',
          maxLength: 50,
        },
        email: {
          bsonType: 'string',
          description: 'must be a string and is required',
          maxLength: 100,
        },
        phone: {
          bsonType: 'string',
          description: 'must be a string and is required',
          maxLength: 20,
        },
        created_at: {
          bsonType: 'date',
          description: 'must be a date and is required',
        },
      },
    },
  },
});

// Create unique indexes for email and phone
db.users.createIndex({ email: 1 }, { unique: true });
db.users.createIndex({ phone: 1 }, { unique: true });

// Create reservations collection with schema validation
db.createCollection('reservations', {
  validator: {
    $jsonSchema: {
      bsonType: 'object',
      required: ['start_at', 'end_at', 'created_at', 'created_by'],
      properties: {
        start_at: {
          bsonType: 'date',
          description: 'must be a date and is required',
        },
        end_at: {
          bsonType: 'date',
          description: 'must be a date and is required',
        },
        created_at: {
          bsonType: 'date',
          description: 'must be a date and is required',
        },
        created_by: {
          bsonType: 'objectId',
          description: 'must be an ObjectId and is required',
        },
      },
    },
  },
});

// Optionally, create an index on created_by for faster lookups
db.reservations.createIndex({ created_by: 1 });
