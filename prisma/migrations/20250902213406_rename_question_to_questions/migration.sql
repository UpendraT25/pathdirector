/*
  Warnings:

  - You are about to drop the column `question` on the `Assessment` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "public"."Assessment" DROP COLUMN "question",
ADD COLUMN     "questions" JSONB[];
