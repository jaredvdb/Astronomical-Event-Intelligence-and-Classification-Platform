-- Goal: Explore relevant columns within the SDSS DR20 (Sloan Digital Sky Survey - Data Release 20)

-- Inspect SpecObj table
-- Used for exploring 5k objects
SELECT TOP 5000
    specObjID,        -- Unique database ID based on PLATE, MJD, FIBERID, RUN2D
    bestObjID,        -- Object ID of photoObj match (position-based)

    class,            -- Spectroscopic class (GALAXY, QSO, or STAR)
    subClass,         -- Spectroscopic subclass (optional)

    z,                -- Final Redshift (notably different from PhotoPrimary table's z of infrared light magnitude)
    zErr,             -- Redshift error, helps quantify confidence (statistical uncertainty or margin of error)
    zWarning,         -- Bitmask of warning values; 0 means all is well :)

    sciencePrimary,   -- Best version of spectrum at this location (defines default view SpecObj)

    ra,               -- Right ascension
    dec               -- Declination 
FROM SpecObj
WHERE zWarning = 0 AND class = "STAR" -- only Stars, with cleaner data 
-- EXPORTED: "SpecObj-SQL-Search.csv"