## AUTHOR : Picarrow

# Note: This command fails when the max index is 0 (grab bag zie is 1). A command
# that fails happens to return 0, which fortunately, in this case, is the result
# expected from the given inputs.
$return run random value 0..$(max_index)
