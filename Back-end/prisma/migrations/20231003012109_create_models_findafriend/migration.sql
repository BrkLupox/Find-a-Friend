/*
  Warnings:

  - You are about to drop the column `name` on the `users` table. All the data in the column will be lost.
  - You are about to drop the `categories` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `friends` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `products` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `selects` table. If the table is not empty, all the data it contains will be lost.

*/
-- CreateEnum
CREATE TYPE "Age" AS ENUM ('Filhote', 'Adulto', 'Velho');

-- CreateEnum
CREATE TYPE "Size" AS ENUM ('Pequenino', 'Medio', 'Grande');

-- CreateEnum
CREATE TYPE "Energy" AS ENUM ('Baixa', 'Media', 'Alta');

-- CreateEnum
CREATE TYPE "Independet" AS ENUM ('Baixa', 'Media', 'Alta');

-- CreateEnum
CREATE TYPE "Environment" AS ENUM ('Amplo', 'Pequeno', 'Medio');

-- DropForeignKey
ALTER TABLE "products" DROP CONSTRAINT "products_category_id_fkey";

-- AlterTable
ALTER TABLE "users" DROP COLUMN "name";

-- DropTable
DROP TABLE "categories";

-- DropTable
DROP TABLE "friends";

-- DropTable
DROP TABLE "products";

-- DropTable
DROP TABLE "selects";

-- CreateTable
CREATE TABLE "orgs" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "zip_code" TEXT NOT NULL,
    "location" TEXT NOT NULL,
    "whatsapp" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "confirm_password" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "orgs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "pets" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "about" TEXT NOT NULL,
    "age" "Age" NOT NULL,
    "size" "Size" NOT NULL,
    "energy" "Energy" NOT NULL,
    "independet" "Independet" NOT NULL,
    "environment" "Environment" NOT NULL,
    "pictures" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "pets_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "req" (
    "id" TEXT NOT NULL,
    "requirement" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "req_pkey" PRIMARY KEY ("id")
);
