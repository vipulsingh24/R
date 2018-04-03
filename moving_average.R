# Generate a noise
noise = rnorm(10000)

ma_2 = NULL

for (i in 3:10000) {
  ma_2[i] = noise[i] + 0.7*noise[i-1] + 0.2*noise[i-2]
}

moving_avg_process = ma_2[3:10000]
moving_avg_process = ts(moving_avg_process)

# Partition output graphics as a multi frame of 2 rows and 1 column
par(mfrow=c(2,1))

# Plot the process and its ACF
plot(moving_avg_process, main = "Moving Average Process of order 2", col='blue', ylab = '')
acf(moving_avg_process, main = "Correlogam of moving average process of order 2")