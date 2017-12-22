function Save-ToDo ($ID, $Priority, $Description, $Tags) {
        
              
            #Following is the array
        $ToDOItems = New-Object -TypeName PSobject -Property @{
            ID = "$ID"
            Priority = "$Priority"
            Description = "$Description"
            Tags = "$Tags"
        }
        
        #Now to export the data to csv.
        $ToDOItems | Select-Object ID, Priority, Description, Tags | Export-Csv -Path "c:\testing\tasks.csv" -Append -NoTypeInformation -ErrorAction Stop
        
            
        }