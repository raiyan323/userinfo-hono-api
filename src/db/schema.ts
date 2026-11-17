import {
  integer,
  pgTable,
  varchar,
  date,
  timestamp,
} from "drizzle-orm/pg-core";

export const usersTable = pgTable("users", {
  id: integer().primaryKey().generatedAlwaysAsIdentity(),

  name: varchar({ length: 255 }).notNull(),
  imgurl: varchar({ length: 500 }),

  email: varchar({ length: 255 }).notNull().unique(),

  // Identity
  nid: varchar({ length: 20 }).unique(),

  // Contact
  phoneNumber: varchar({ length: 20 }),

  // Personal information
  dateOfBirth: date(),
  bloodGroup: varchar({ length: 5 }),

  // Address
  country: varchar({ length: 100 }),
  city: varchar({ length: 100 }),
  address: varchar({ length: 500 }),
  currentAddress: varchar({ length: 500 }),

  createdAt: timestamp().defaultNow().notNull(),
  updatedAt: timestamp().defaultNow().notNull(),
});
