# Create a dictionary to store the counts of each color
color_counts = {}

# Open the file for reading
with open("color.txt", "r") as f:
    # Read each line in the file
    for line in f:
        # Split the line into color and count
        color, count = line.strip().split()

        # Convert count to an integer
        count = int(count)

        # Convert the color to lowercase
        color = color.lower()

        # Add the count to the color in the dictionary
        if color in color_counts:
            color_counts[color] += count
        else:
            color_counts[color] = count

# Print the results
for color, count in sorted(color_counts.items()):
    print(f"{color.capitalize()} {count}")
