ALTER TABLE "users" ADD COLUMN "dateOfBirth" date;--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "city" varchar(100);--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "createdAt" timestamp DEFAULT now() NOT NULL;--> statement-breakpoint
ALTER TABLE "users" ADD COLUMN "updatedAt" timestamp DEFAULT now() NOT NULL;--> statement-breakpoint
ALTER TABLE "users" DROP COLUMN "City";--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "nid" SET DATA TYPE varchar(20) USING "nid"::varchar(20);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "phoneNumber" SET DATA TYPE varchar(20) USING "phoneNumber"::varchar(20);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "country" SET DATA TYPE varchar(100) USING "country"::varchar(100);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "imgurl" SET DATA TYPE varchar(500) USING "imgurl"::varchar(500);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "address" SET DATA TYPE varchar(500) USING "address"::varchar(500);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "currentAddress" SET DATA TYPE varchar(500) USING "currentAddress"::varchar(500);--> statement-breakpoint
ALTER TABLE "users" ALTER COLUMN "bloodGroup" SET DATA TYPE varchar(5) USING "bloodGroup"::varchar(5);--> statement-breakpoint
ALTER TABLE "users" ADD CONSTRAINT "users_nid_key" UNIQUE("nid");