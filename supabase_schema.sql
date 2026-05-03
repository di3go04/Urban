-- UrbanThread Enterprise AI - Database Schema
-- Copy and paste this into your Supabase SQL Editor (https://app.supabase.com)

-- 1. Create the threads table
CREATE TABLE IF NOT EXISTS public.threads (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    created_at TIMESTAMPTZ DEFAULT now(),
    title TEXT NOT NULL,
    posts JSONB NOT NULL,
    platform TEXT CHECK (platform IN ('x', 'threads')),
    status TEXT DEFAULT 'draft' CHECK (status IN ('draft', 'published')),
    viral_score INTEGER DEFAULT 0,
    hashtags JSONB DEFAULT '[]'::jsonb
);

-- 2. Enable Row Level Security (RLS)
ALTER TABLE public.threads ENABLE ROW LEVEL SECURITY;

-- 3. Create a policy to allow public access (standard for initial setup)
-- NOTE: In production, you should restrict this to authenticated users only.
CREATE POLICY "Allow public access to threads" ON public.threads
    FOR ALL
    TO public
    USING (true)
    WITH CHECK (true);

-- 4. Create an index on created_at for faster history sorting
CREATE INDEX IF NOT EXISTS idx_threads_created_at ON public.threads (created_at DESC);

-- 5. Success message
-- The table 'threads' is now ready for neural synchronization.
