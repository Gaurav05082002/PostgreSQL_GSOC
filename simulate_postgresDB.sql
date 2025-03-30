-- Simulation Steps & Queries Used
-- Step 1: Create activity table
CREATE TABLE IF NOT EXISTS dummy_activity(id SERIAL, name TEXT);


-- Step 2: Insert/Update/Delete operations

DO $$
BEGIN
  FOR i IN 1..20000 LOOP
    INSERT INTO dummy_activity(name) VALUES ('inserted ' || i);
    UPDATE dummy_activity SET name = name || '_x' WHERE id % 7 = 0;
    DELETE FROM dummy_activity WHERE id % 13 = 0;
  END LOOP;
END $$;




-- Step 3: Simulate index and sequential scans
-- Indexed
SELECT * FROM dummy_activity WHERE id = 500;
-- Sequential
SET enable_indexscan = off;
SELECT * FROM dummy_activity WHERE name LIKE 'a%';
Step 4: Loop query to trigger QPS

-- run the following query in terminal 


for i in {1..30}; do
  p -U pgwatch -d postgres -c "SELECT * FROM dummy_activity WHERE id < 1000;" > /dev/null
  sleep 2

