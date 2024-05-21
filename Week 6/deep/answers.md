# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning
<!-- Will the observations likely be evenly distributed across all boats, even if AquaByte most commonly collects observations between midnight and 1am? Why or why not? -->
Yes, it will be distirbuted evenly. This is because with the random distribution, it gives each boat a 33.3% chance of receiving an observation. Over a large number of observations, the distribution might approximate evenness.

<!-- Suppose a researcher wants to query for all observations between midnight and 1am. On how many of the boats will they need to run the query? -->
The researcher will need to run the query on all three boats. This is because the observations are randomly distributed, and there is no guarantee that any one boat will have all the observations between midnight and 1am.

## Partitioning by Hour

TODO

## Partitioning by Hash Value

TODO
