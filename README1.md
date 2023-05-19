# Inflation prediction

This repository contains code for a project related to inflation rate prediction using deep learning models. Below is a description of the code and its functionality.

## Code Structure

The code is organized into several sections, each serving a specific purpose. Here is an overview of the sections:

### Data Loading
In this section, the necessary data files are loaded. The dataset `dataset_inf.Rdata` and column names `X_colnames.csv` are downloaded from the provided URLs. The column names of the dataset are assigned appropriately.
  
### Preprocessing
The inflation rate is calculated based on the CPI (Consumer Price Index) data. A null vector `inf` is created, and the inflation rate is calculated for each interval of 12 periods using the logarithmic difference. The CPI data is then scaled, and the inflation rate and scaled CPI data are combined into a new dataframe `nndata`.
  
### Model Training
The H2O library is utilized for training the deep learning model. The data is split into a training set and a validation set. The hyperparameters for the neural network model are defined, and the model is trained using the training data. The model performance is evaluated using the R-squared metric.
  
### Hyperparameter Tuning
Grid search is performed to find the best combination of hyperparameters for the neural network model. The grid search explores different activation functions, hidden layer sizes, epochs, adaptive learning rates, and input dropout ratios. The best model based on R-squared is selected, and its performance and variable importance are examined.
  
### Model Evaluation
The pre-trained model is loaded, and predictions are made on the test data. The test data is prepared by formatting it similar to the training data. The predicted inflation rates are stored in separate dataframes for CPI (`pred.df.cpi`) and PPI (`pred.df.ppi`). The predicted results are then evaluated by calculating the out-of-sample (OOS) R-squared using the real inflation rates.
  
### Closing H2O JVM
Finally, the H2O Java Virtual Machine (JVM) is shut down to release system resources.
  

## Usage

To use this code, follow these steps:

- Set the working directory to the location where you want to save the files by using the `setwd()` function.
  
- Ensure that the required packages are installed, including `h2o`.
  
- Run the code sections sequentially to load the data, preprocess it, train the model, tune hyperparameters, make predictions, and evaluate the model performance.
  

## Additional Notes

- The code assumes an internet connection to download the necessary data files.
  
- Adjustments and modifications to the code have been made based on differences between the provided real data and the expected data.
  
- The code utilizes the H2O library for deep learning model training and evaluation. The library needs to be installed and initialized before use.
  
- The README provides an overview of the code structure and usage. For more detailed explanations and insights, refer to the code comments and the original repository from where the code was sourced.
  

Please feel free to reach out if you have any questions or need further assistance.*(Due to the discrepancies between the provided real data and our initial assumptions, we made some modifications to the previous code before the deadline. FINAL_test.Rmd should be the right one for testing.However, we did not make any changes to the model training part.)*
