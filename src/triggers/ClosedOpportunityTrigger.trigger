trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> listTasks = new List<Task>();
    
    for(Opportunity op : [SELECT ID FROM Opportunity WHERE StageName='Closed Won']){
		Task task = new Task();
        task.Subject = 'Follow Up Test Task';
        task.WhatId = op.ID;
        listTasks.add(task);
    }
    
    insert listTasks;
}