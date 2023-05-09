# Import the raw data and colnames
```{r}
load(url("https://github.com/zhentaoshi/Econ5821/raw/main/data_example/dataset_inf.Rdata"))
#Column names
X_colnames <- read.csv("https://github.com/zhentaoshi/Econ5821/raw/main/data_example/X_colnames.csv")
```

# Rename the colnames
```{r}
colnames(X) = X_colnames$X
```
