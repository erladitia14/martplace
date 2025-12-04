import { defineConfig } from '@prisma/internals'
import { PrismaClient } from '@prisma/client'
import dotenv from 'dotenv'

dotenv.config()

export default defineConfig({
  datasourceUrl: process.env.DATABASE_URL,
  client: new PrismaClient({
    datasourceUrl: process.env.DATABASE_URL
  })
})