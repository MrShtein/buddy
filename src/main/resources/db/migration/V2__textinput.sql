ALTER TABLE animal
    ALTER COLUMN description TYPE TEXT USING (description::TEXT);