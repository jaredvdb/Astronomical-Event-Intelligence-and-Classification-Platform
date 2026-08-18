-- Goal: Explore relevant columns within the SDSS DR20 (Sloan Digital Sky Survey - Data Release 20)

-- Inspect PhotoPrimary table
-- Used for exploring 5k objects
SELECT TOP 5000
    objID,        -- Useful identifier, can connect to SpecObj table via 'bestObjID'
    ra,           -- Sky position, right ascension
    dec,          -- Sky position, right ascension
    -- Band magnitudes, useful for color/temp analysis. letters apply to later types
    u,            -- Ultraviolet light
    g,            -- Green light
    r,            -- Red light
    i,            -- Near-infrared light
    z,            -- Infrared light
    -- PSF (Point Spread Function) magnitude, particularly appropriate for point sources such as stars. Provides the most accurate measure of a star's true flux (amount of light that passes through a flat plane in a second)
    psfMag_u,
    psfMag_g,
    psfMag_r,
    psfMag_i,
    psfMag_z,
    -- Galactic extinction correction, helps adjust for interference between us and the object (typically shorter/bluer wavelengths are more effected)
    extinction_u,
    extinction_g,
    extinction_r,
    extinction_i,
    extinction_z,
    type,         -- Distinction of the type of object (star, galaxy, cosmic ray, etc.)
    clean         -- Quality flag given by the SDSS, based on a variety of factors like Saturation (obj too bright, detector pixels saturated), edge (too close to edge of imaging frame), blended (mixed light from other objs), etc.
FROM PhotoPrimary
WHERE clean = 1   -- Prefiltering so have reliable, verified data
-- EXPORTED: "PhotoPrimary-SQL-Search.csv"
