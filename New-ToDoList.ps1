function  New-ToDoList($ToDoListName) {

    $TaskListCheck = Test-Path "C:\Tasks\$ToDoListName.txt" -PathType Leaf

if (!$TaskListCheck) {

    New-Item "C:\Tasks\$ToDoListName.txt"
    Write-Host "ToDo $ToDoListName created."    
}
else {
    Write-Host "ToDo list ALREADY exists."
}
    
}