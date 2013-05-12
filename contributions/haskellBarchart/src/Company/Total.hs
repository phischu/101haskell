{-| The operation of totaling all salaries of all employees in a company -}

module Company.Total (
  total,
  salaries
) where

import Company.Data

-- | Total all salaries in a company
total :: Company -> Float
total = sum . salaries
  where

-- | Extract all salaries in a company
salaries :: Company -> [Salary]
salaries (_, es) = getSalaries es

-- Extract all salaries of lists of employees
getSalaries :: [Employee] -> [Salary]
getSalaries [] = []
getSalaries (e:es) = getSalary e : getSalaries es

-- Extract the salary from an employee
getSalary :: Employee -> Salary
getSalary (_, _, s) = s
