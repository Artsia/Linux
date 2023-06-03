
# Define the numbers
numbers=(1 2 3 4 5 6)

# Initialize sum variable
sum=0

# Iterate over the numbers and calculate the sum
for num in "${numbers[@]}";
do
    sum=$((sum + num))
done

# Print the sum
echo "The sum of numbers is: $sum"

