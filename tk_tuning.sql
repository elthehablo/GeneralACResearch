-- Al'ar
UPDATE `creature_template` SET `HealthModifier`=1*280 WHERE `entry`=19514; -- Al'ar
UPDATE `creature_template` SET `HealthModifier`=1*7 WHERE `entry`=19551; -- Ember of Al'ar

-- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier`=1*350 WHERE `entry`=18805; -- High Astromancer Solarian
UPDATE `creature_template` SET `HealthModifier`=1*10.5 WHERE `entry`=18806; -- Solarium Agent
UPDATE `creature_template` SET `HealthModifier`=1*2.8 WHERE `entry`=18925; -- Solarium Priest

-- Void Reaver
UPDATE `creature_template` SET `HealthModifier`=1*525 WHERE `entry`=19516; -- Void Reaver

-- Kael'thas
UPDATE `creature_template` SET `HealthModifier`=1*420 WHERE `entry`=19622; -- Kael'thas Sunstrider
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=20064; -- Thaladred the Darkener
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=20063; -- Master Engineer Telonicus
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=20062; -- Grand Astromancer Capernian
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=20060; -- Lord Sanguinar
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=21362; -- Phoenix
UPDATE `creature_template` SET `HealthModifier`=1*18.9 WHERE `entry`=21268; -- Netherstrand Longbow
UPDATE `creature_template` SET `HealthModifier`=1*22.05 WHERE `entry`=21269; -- Devastation
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=21270; -- Cosmic Infuser
UPDATE `creature_template` SET `HealthModifier`=1*18.9 WHERE `entry`=21271; -- Infinity Blades
UPDATE `creature_template` SET `HealthModifier`=1*25.2 WHERE `entry`=21272; -- Warp Slicer
UPDATE `creature_template` SET `HealthModifier`=1*28.35 WHERE `entry`=21273; -- Phaseshift Bulwark
UPDATE `creature_template` SET `HealthModifier`=1*15.75 WHERE `entry`=21274; -- Staff of Disintegration

-- Trash
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20035; -- Bloodwarder Marshal
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20036; -- Bloodwarder Squire
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20034; -- Star Scryer
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20032; -- Bloodwarder Vindicator
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20031; -- Bloodwarder Legionnaire
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20033; -- Astromancer
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20037; -- Tempest Falconer
UPDATE `creature_template` SET `HealthModifier`=1*7 WHERE `entry`=20038; -- Phoenix-Hawk Hatchling
UPDATE `creature_template` SET `HealthModifier`=1*52.5 WHERE `entry`=20039; -- Phoenix-Hawk
UPDATE `creature_template` SET `HealthModifier`=1*52.5 WHERE `entry`=20040; -- Crystalcore Devastator
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20041; -- Crystalcore Sentinel
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20050; -- Crimson Hand Inquisitor
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20048; -- Crimson Hand Centurion
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20049; -- Crimson Hand Blood Knight
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20047; -- Crimson Hand Battle Mage
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20042; -- Tempest-Smith
UPDATE `creature_template` SET `HealthModifier`=1*17.5 WHERE `entry`=20052; -- Crystalcore Mechanic
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20046; -- Astromancer Lord
UPDATE `creature_template` SET `HealthModifier`=1*2.8 WHERE `entry`=20044; -- Novice Astromancer
UPDATE `creature_template` SET `HealthModifier`=1*2.8 WHERE `entry`=20043; -- Apprentice Star Scryer
UPDATE `creature_template` SET `HealthModifier`=1*28 WHERE `entry`=20045; -- Nether Scryer

-- Overall buffs
DELETE FROM `zone_difficulty_info` WHERE `MapID`= 550;
INSERT INTO `zone_difficulty_info` (`MapID`, `PhaseMask`, `HealingNerfValue`, `AbsorbNerfValue`, `MeleeDmgBuffValue`, `SpellDmgBuffValue`, `Enabled`, `Comment`) VALUES
(550, 0, 0.75, 0.75, 1.35, 1.35, 1, 'Tempest Keep');

-- here we can override specific spells to make sure we have no 1 shot mechanics
/*
DELETE FROM `zone_difficulty_spelloverrides` WHERE `SpellId` = x;
INSERT INTO `zone_difficulty_spelloverrides` (`SpellID`, `MapId`, `NerfValue`, `Enabled`, `Comment`) VALUES
(x, 0, 1, 1, 'Tempest Keep - Some Creature - Some Spell');
*/
