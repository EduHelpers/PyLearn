BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "stats" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "lastAction" timestamp without time zone NOT NULL,
    "quiz1" double precision NOT NULL,
    "quiz2" double precision NOT NULL,
    "quiz3" double precision NOT NULL,
    "quiz4" double precision NOT NULL,
    "quiz5" double precision NOT NULL,
    "quiz6" double precision NOT NULL,
    "quiz7" double precision NOT NULL,
    "quiz8" double precision NOT NULL,
    "quiz9" double precision NOT NULL,
    "quiz10" double precision NOT NULL,
    "quiz11" double precision NOT NULL,
    "quiz12" double precision NOT NULL,
    "quiz13" double precision NOT NULL,
    "quiz14" double precision NOT NULL,
    "quiz15" double precision NOT NULL,
    "quiz16" double precision NOT NULL,
    "quiz17" double precision NOT NULL,
    "quiz18" double precision NOT NULL,
    "quiz19" double precision NOT NULL,
    "quiz20" double precision NOT NULL,
    "quiz21" double precision NOT NULL,
    "quiz22" double precision NOT NULL,
    "quiz23" double precision NOT NULL,
    "quiz24" double precision NOT NULL,
    "quiz25" double precision NOT NULL,
    "quiz26" double precision NOT NULL,
    "quiz27" double precision NOT NULL,
    "quiz28" double precision NOT NULL,
    "quiz29" double precision NOT NULL,
    "quiz30" double precision NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_auth" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_email" ON "serverpod_email_auth" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_create_request" (
    "id" serial PRIMARY KEY,
    "userName" text NOT NULL,
    "email" text NOT NULL,
    "hash" text NOT NULL,
    "verificationCode" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_auth_create_account_request_idx" ON "serverpod_email_create_request" USING btree ("email");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_failed_sign_in" (
    "id" serial PRIMARY KEY,
    "email" text NOT NULL,
    "time" timestamp without time zone NOT NULL,
    "ipAddress" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_email_failed_sign_in_email_idx" ON "serverpod_email_failed_sign_in" USING btree ("email");
CREATE INDEX "serverpod_email_failed_sign_in_time_idx" ON "serverpod_email_failed_sign_in" USING btree ("time");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_email_reset" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "verificationCode" text NOT NULL,
    "expiration" timestamp without time zone NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_email_reset_verification_idx" ON "serverpod_email_reset" USING btree ("verificationCode");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_google_refresh_token" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "refreshToken" text NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_google_refresh_token_userId_idx" ON "serverpod_google_refresh_token" USING btree ("userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_image" (
    "id" serial PRIMARY KEY,
    "userId" integer NOT NULL,
    "version" integer NOT NULL,
    "url" text NOT NULL
);

-- Indexes
CREATE INDEX "serverpod_user_image_user_id" ON "serverpod_user_image" USING btree ("userId", "version");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "serverpod_user_info" (
    "id" serial PRIMARY KEY,
    "userIdentifier" text NOT NULL,
    "userName" text NOT NULL,
    "fullName" text,
    "email" text,
    "created" timestamp without time zone NOT NULL,
    "imageUrl" text,
    "scopeNames" json NOT NULL,
    "blocked" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "serverpod_user_info_user_identifier" ON "serverpod_user_info" USING btree ("userIdentifier");
CREATE INDEX "serverpod_user_info_email" ON "serverpod_user_info" USING btree ("email");


--
-- MIGRATION VERSION FOR pylearn
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('pylearn', '20240417122015065', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240417122015065', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240115074235544', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074235544', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod_auth
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod_auth', '20240115074239642', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240115074239642', "timestamp" = now();


COMMIT;
