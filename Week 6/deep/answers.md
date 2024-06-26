# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
Yes, it will be distirbuted evenly. This is because with the random distribution, it gives each boat a 33.3% chance of receiving an observation. Over a large number of observations, the distribution might approximate evenness.

<!-- Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query? -->
The researcher will need to query on all three boats since the obeservations are randomly distributed between the boats, so there is no guarantee that a single boat will have all the observations between midnight and 1am.

## Partitioning by Hour
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
No, the observations will not be evenly distributed across all boats. This is because the data commonly collects observations between midnight and 1am, and that range of time is partitioned on Boat A. This means that Boat A will have all or most of the observations compared to the other two boats.

<!-- Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query? -->
The researcher will only need to query one boat, specifically Boat A. This is because Boat A is partitioned to receive all observations within the hours of midnight to 7:59 AM.

## Partitioning by Hash Value
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
Yes, the observations will likely be evenly distributed across all boats since the distribution of hash values is uniform and independent of the actual timestamp. The usual time of collection, between midnight and 1am,  does not affect the evenness of the distribution.

<!-- Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query? -->
The researcher will need to query on all three boats since the hash value is independent of the timestamp, so there is no guarantee that a single boat will have all the observations between midnight and 1am.

<!-- Suppose a researcher wants to query for a specific observation, which occurred at exactly 2023-11-01 00:00:01.020. On how many of the boats will they need to run the query? -->
Since the hash function consistently maps the same timestamp to the same hash value, the researcher will only need to query on the boat that corresponds to the hash value generated for the timestamp "2023-11-01 00:00:01.020".