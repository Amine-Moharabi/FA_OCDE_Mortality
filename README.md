"# FA_OCDE_Mortality" 
"# FA_OCDE_Mortality" 
Steps:
Install necessary packages:

FactoMineR for performing AFC.
factoextra for visualization.
Create the dataset:

Define a data frame containing country names and corresponding mortality factors (accidents, suicides, aggressions).
Check the data:

Print the data and get a summary to verify the structure.
Convert data into a contingency table:

Extract the numeric columns (mortality factors) and set country names as row names.
Perform Correspondence Analysis (AFC):

Use the CA() function from FactoMineR on the contingency table to conduct AFC.
Summarize the AFC results:

Use summary() to view the summary of the correspondence analysis results.
Visualize the results:

Use fviz_ca_biplot() from factoextra to create a biplot of the AFC results.
![image](https://github.com/user-attachments/assets/c7c80155-6fab-4650-ab0b-de138ca18225)
