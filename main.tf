
 import tensorflow as tf

# Define two constants
a = tf.constant(5)
b = tf.constant(3)

# Perform addition
sum_result = tf.add(a, b)

# Print the result
print("Sum:", sum_result.numpy())

