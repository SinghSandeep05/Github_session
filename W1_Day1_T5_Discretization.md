# Discretization

- Discretization, also known as **quantization** or **binning**, is the process of converting continuous numerical variables into discrete categorical ones by grouping together values that are similar or fall within a certain range. This can be useful in machine learning for several reasons:
- Discretization can help to reduce the dimensionality of a dataset by reducing the number of features.
- Discretization can help to make the relationship between the input variables and the output variable more interpretable by converting continuous variables into ordinal ones.
- Discretization can help to improve the performance of certain algorithms that are sensitive to the scale of the input variables.
- When we do descretization, it should make sense.
- Sometimes it is easy to understand continuous data when divided into categories. For example: BMI can be categorized into following groups:
    - **< 19.5 (Underweight)**
    - **Between 19.5 and 25 (normal weight)**
    - **> 25 and < 30 (overweight)**
    - **>= 30 (Obese)**
- Here, discretization helps to understand data easier **if it solves the problem statement**.
- Continuous variable may have complex non-linear relationship

## Approaches to discretization
- Equal width (creating equal number of bins, having same width)
- Equal-frequency (N number of bins having same amount of observations)
- Pre-defined bins (BMI example)
- K-means (creating K clusters) **Will be covered during ML**
- Decision tree (Decision tree to identify optimal number of bins) **Will be covered during ML**


It's important to note that discretization should be performed with care as it can lead to loss of information and affect the performance of the model. It's generally recommended to perform discretization after performing feature selection and to evaluate the performance of the model with and without discretization.


```python
# importing libraries
import numpy as np
import pandas as pd
```


```python
Age = [21, 35, 42, 27, 57, 73, 5, 55, 48, 16, 19, 62]
df = pd.DataFrame({'Age': Age})
df['Age_Binned'] = pd.cut(df['Age'], bins=[0,10,18,60,99],labels=['Child','Adolescent','Adult','Elderly'])
print(df)
```

        Age  Age_Binned
    0    21       Adult
    1    35       Adult
    2    42       Adult
    3    27       Adult
    4    57       Adult
    5    73     Elderly
    6     5       Child
    7    55       Adult
    8    48       Adult
    9    16  Adolescent
    10   19       Adult
    11   62     Elderly
    
