# JCAPIv1::Command

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **String** | The command to execute on the server. | 
**command_runners** | **Array&lt;String&gt;** | An array of IDs of the Command Runner Users that can execute this command. | [optional] 
**command_type** | **String** | The Command OS | [optional] 
**files** | **Array&lt;String&gt;** | An array of file IDs to include with the command. | [optional] 
**launch_type** | **String** | How the command will execute. | [optional] 
**listens_to** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**organization** | **String** | The ID of the organization. | [optional] 
**schedule** | **String** | A crontab that consists of: [ (seconds) (minutes) (hours) (days of month) (months) (weekdays) ] or [ immediate ]. If you send this as an empty string, it will run immediately.  | [optional] 
**schedule_repeat_type** | **String** | When the command will repeat. | [optional] 
**sudo** | **BOOLEAN** |  | [optional] 
**systems** | **Array&lt;String&gt;** | An array of system IDs to run the command on. Not available if you are using Groups. | [optional] 
**timeout** | **String** | The time in seconds to allow the command to run for. | [optional] 
**trigger** | **String** | The name of the command trigger. | [optional] 
**user** | **String** | The ID of the system user to run the command as. This field is required when creating a command with a commandType of \&quot;mac\&quot; or \&quot;linux\&quot;. | [optional] 
**shell** | **String** | The shell used to run the command. | [optional] 


