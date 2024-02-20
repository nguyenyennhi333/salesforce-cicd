import json

# Define coverage threshold
COVERAGE_THRESHOLD = 75  # Apex acceptanced coverage is more than 75%

# Read the test results
with open('test-results.json') as file:
    results = json.load(file)

# Calculate coverage and check if it meets the threshold
coverage = calculate_coverage(results)  # Implement this function based on your result structure
if coverage >= COVERAGE_THRESHOLD:
    print("::set-output name=coverage-ok::true")
else:
    print("::set-output name=coverage-ok::false")