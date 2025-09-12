/*
  Warnings:

  - You are about to drop the column `nextUpdated` on the `IndustryInsight` table. All the data in the column will be lost.
  - Added the required column `nextUpdate` to the `IndustryInsight` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "public"."IndustryInsight" DROP COLUMN "nextUpdated",
ADD COLUMN     "nextUpdate" TIMESTAMP(3) NOT NULL;
