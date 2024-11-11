$Hashtable1 = @{name="John", "Joe", "Mary"; Daysworked=12, 20, 18}

$Hashtable2 = @{name="John", "Joe", "Mary"; Salaryperday=100, 120, 150}

$Johnsalary = $Hashtable1.Daysworked[0] * $Hashtable2.Salaryperday[0]
$JoeSalary = $Hashtable1.DaysWorked[1] * $Hashtable2.SalaryPerDay[1]
$MarySalary = $Hashtable1.DaysWorked[2] * $Hashtable2.SalaryPerDay[2]


 
$Hashtable3 = @{name=$Hashtable1.name[0], $Hashtable1.name[1], $Hashtable1.name[2];Salary=$Johnsalary, $JoeSalary, $MarySalary}
$Hashtable3