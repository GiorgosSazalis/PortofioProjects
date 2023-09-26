# PortofioProjects

## Global Sales
Extracting data from MySQL database, which contained  an Excel file about global sales of products. Using SQL queries, i performed in-depth product analysis to identify top-selling items and products with the highest profit margins.      

## Resources
1. Data Source:
- [https://www.kaggle.com]
- globalsuperstore.csv

2. Software:
- MySQL
- Tableau

## Neural Network Explanation
1. How many neurons and layers did you select for your neural network model? Why?
With a total of 2 layers, the first layer had 80 neurons and the second layer had 30 neurons with an extra neutron, so a totla of 111 neurons were used.  For a basic neural network is to have two to three times the amount of neurons in the hidden layer as the number of inputs.  It's also good practice to not go over 3 hidden layers.  

2. Were you able to achieve the target model performance? What steps did you take to try and increase model performance?
Target model performance of higher than 75% was not achieved.  Different steps were taken, such as figure out the value counts and create a bell curve to confirm if the value count is in the hundreds.  One step that was taken multiple times was to change the bucket count.  Bucket count from 104, 116, 194, 1000, and 1883 were used, however, the average accuracy was roughly 72.5%.  The epoch was also changed from 100 to 50 but there was no change in the accuracy of 72.5%.    

3. If you were to implement a different model to solve this classification problem, which would you choose? Why?
Another model to be used for this classification is Random Forest.  Random Forest takes less time and has faster performance even though it has the same outcome as deep machine learning.  Also, the dataset consists of columns and tables, which random forest is better suited to use.
