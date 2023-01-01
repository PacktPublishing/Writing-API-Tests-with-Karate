Feature: Value tags

    @car=audi
    Scenario: Value tags
        * print karate.tagValues

    @car=mercedes,tesla
    Scenario: Value tags
        * print karate.tagValues
