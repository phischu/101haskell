{-| A data model for the 101companies System -}

module Company.Data where

-- | A company consists of name and top-level departments
type Company = (Name, [Department])

-- | A department consists of name, manager, sub-departments, and employees
data Department = Department Name Manager [Department] [Employee]
 deriving (Eq, Read, Show)

-- | An employee consists of name, address, and salary
type Employee = (Name, Address, Salary)

-- | Managers as employees
type Manager = Employee

-- | Names of companies, departments, and employees
type Name = String

-- | Addresses as strings
type Address = String

-- | Salaries as floats
type Salary = Float
