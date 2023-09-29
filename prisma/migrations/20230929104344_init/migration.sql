-- AlterEnum
ALTER TYPE "SessionType" ADD VALUE 'EMAIL_VERIFICATION';

-- AlterTable
ALTER TABLE "sessions" ADD COLUMN     "end_time" BIGINT,
ADD COLUMN     "start_time" BIGINT;
