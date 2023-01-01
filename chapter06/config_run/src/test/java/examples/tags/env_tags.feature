Feature: Using tags
    @env=dev
    Scenario: Dev only
        * print "DEV ONLY"

    @env=dev,prod
    Scenario: Dev and prod
        * print "DEV and PROD"

    @envnot=dev
    Scenario: Not in dev
        * print "Not in DEV"