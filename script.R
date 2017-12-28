## 1: Port of embarkation

titanic_original$embarked[is.na(titanic_original$embarked)] = "S"

## 2: Age

mean(titanic_original$age, na.rm = T)
titanic_original$age[is.na(titanic_original$age)] = 29.9

## 3: Lifeboat

titanic_original$boat[is.na(titanic_original$boat)] = "None"

## 4: Cabin

titanic_original = 
  mutate(titanic_original, has_cabin_number2 = is.na(titanic_original$cabin) == FALSE)
has_ = sapply(titanic_original$has_cabin_number2, as.integer)
titanic_original = titanic_original %>% 
  bind_cols(as_data_frame(has_))