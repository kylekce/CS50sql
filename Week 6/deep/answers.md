# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
Yes, it will be distirbuted evenly. This is because with the random distribution, it gives each boat a 33.3% chance of receiving an observation. Over a large number of observations, the distribution might approximate evenness.

<!-- Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query? -->
The researcher will need to query on all three boats since the data is randomly distributed between the boats, so there is no guarantee that a single boat will have all the observations between midnight and 1am.

## Partitioning by Hour
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
No, the observations will not be evenly distributed across all boats. This is because the data is partitioned by time of day and Boat A will have all the observations
## Partitioning by Hash Value

TODO
