# Run PMD analysis and save the results to a file
pmd check -d force-app/main/default/classes -f xml -R pmd-apex-config.xml > pmd-results.xml

# Parse the PMD analysis results
total_violations=$(grep '</violation>' pmd-results.xml | wc -l)
high_severity_violations=$(grep '<violation.*priority="3">' pmd-results.xml | wc -l)

# Define quality gate criteria
max_total_violations=50
max_high_severity_violations=10

# Check if the code passes the quality gate
if [ "$total_violations" -le "$max_total_violations" ] && [ "$high_severity_violations" -le "$max_high_severity_violations" ]; then
    echo "Quality gate passed"
else
    echo "Quality gate failed"
    exit 1
fi 
