
Overview
--------

"binomial" is a minimal package that provides functions to calculate binomial distributions, summary statistics, and their corresponding graph and table representations.

-   'bin\_probability()' computes the probability of getting a number of success in a given number of trials with a probability percentage.
-   'bin\_distribution()' creates and displays a data frame with the probability distribution.
-   'bin\_choose()' calculates the number of combinations in which k successes can occur in n trials.
-   'bin\_cumulative()' computes the probability distribution and the cumulative probabilities.

Motivation
----------

This package was developed as a school project. It's goal is to assist in the calculations and graphing of binomial distributions and summary statistics.

Usage
-----

hearts &lt;- bin\_probability(success = 2, trials = 5, prob = 0.5) hearts

diamonds &lt;- bin\_distribution(trials = 5, prob = 0.5) diamond

spades &lt;- bin\_choose(n = 5, k = 2) spades

clubs &lt;- bin\_cumulative(trials = 5, prob = 0.5) clubs
