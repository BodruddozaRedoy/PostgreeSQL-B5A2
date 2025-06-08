-- Active: 1748353100651@@127.0.0.1@5432@conservation_db
CREATE Table rangers(
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    region VARCHAR(100) NOT NULL
)

CREATE Table species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date TIMESTAMP,
    conservation_status VARCHAR(50)
)

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INT REFERENCES rangers(ranger_id) NOT NULL,
    species_id INT REFERENCES species(species_id) NOT NULL,
    sighting_time TIMESTAMP,
    location VARCHAR(150) NOT NULL,
    notes TEXT
)

INSERT INTO rangers (name, region) VALUES
('Elena Cruz', 'Amazon Rainforest'),
('David Kim', 'Yellowstone National Park'),
('Amina Yusuf', 'Serengeti Plains'),
('Luca Bianchi', 'Italian Alps'),
('Maya Patel', 'Sundarbans Mangrove Forest');

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status) VALUES
('Shadow Leopard', 'Panthera obscura', '1998-06-15 00:00:00', 'Endangered'),
('Azure Falcon', 'Falco azureus', '2003-03-22 00:00:00', 'Vulnerable'),
('Golden Horned Toad', 'Bufo aureocornis', '1989-11-05 00:00:00', 'Least Concern'),
('Crimson-backed Gorilla', 'Gorilla ruber', '1974-08-18 00:00:00', 'Critically Endangered'),
('Dusky River Dolphin', 'Inia griseus', '1995-01-10 00:00:00', 'Endangered'),
('Spotted Ice Fox', 'Vulpes glacialis', '2010-02-14 00:00:00', 'Near Threatened'),
('Emerald Tree Boa', 'Corallus caninus', '1962-09-07 00:00:00', 'Least Concern'),
('Sapphire Beetle', 'Chrysina sapphira', '2008-04-30 00:00:00', 'Data Deficient'),
('Ironwood Woodpecker', 'Picus ferreus', '1978-12-25 00:00:00', 'Vulnerable'),
('Coral Reef Seahorse', 'Hippocampus coralus', '2001-07-03 00:00:00', 'Endangered');

INSERT INTO sightings (ranger_id, species_id, sighting_time, location, notes) VALUES
(1, 1, '2024-05-12 07:45:00', 'Amazon Rainforest - Sector 3', 'Observed resting in tree canopy'),
(2, 4, '2024-06-01 15:20:00', 'Yellowstone North Ridge', 'Gorilla seen in small group'),
(3, 2, '2024-05-28 06:10:00', 'Serengeti Waterhole', 'Hunting behavior recorded'),
(4, 5, '2024-04-19 12:30:00', 'Alpine Stream', 'Playful pod of 3 dolphins'),
(5, 9, '2024-03-05 09:50:00', 'Sundarbans East Watchtower', 'Loud calls heard nearby'),
(2, 3, '2024-06-03 17:05:00', 'Yellowstone Swamp Trail', 'Toad spotted near marsh'),
(1, 7, '2024-05-22 08:40:00', 'Amazon Upper Trees', 'Coiled around high branches'),
(3, 6, '2024-06-07 05:55:00', 'Serengeti Northern Border', 'Solo fox moving cautiously'),
(4, 10, '2024-05-30 13:15:00', 'Coral Coastline Rock Pool', 'Seahorse blending with coral'),
(5, 8, '2024-04-12 10:25:00', 'Sundarbans Beetle Hollow', 'Unusual shell coloration noted');

SELECT * from rangers

SELECT * FROM species

SELECT * FROM sightings




