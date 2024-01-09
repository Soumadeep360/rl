matrix_A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9),nrow = 3, ncol = 3, byrow = TRUE)
matrix_B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1),nrow = 3, ncol = 3, byrow = TRUE)

sum_matrix <- matrix_A + matrix_B
scaled_matrix <- matrix_A * 2

transposed_A <- t(matrix_A)
product_matrix <- matrix_A %*% matrix_B

library(ggplot2)
library(reshape2)

# Create a heatmap of matrix_A

heatmap_plot <- ggplot(melt(matrix_A), aes(x = Var1, y = Var2, fill = value)) +
  geom_tile()  +  scale_fill_gradient(low = "white", high = "blue")+
  labs(title = "Heatmap of Matrix A", x="Column",y = "Row")

# Create a bar plot comparing sums of rows in matrix_B
barplot_data=data.frame(Row=paste("Row", 1:3),Sum=rowSums(matrix_B))
barplot_plot <- ggplot(barplot_data,aes(x =Row, y = Sum)) +
  geom_bar(stat = "identity", fill = "green")+
  labs(title = "Sums of Rows in Matrix B", x = "Row", y = "Sum")


# Display the visualizations

print(heatmap_plot)

print(barplot_plot)

 
