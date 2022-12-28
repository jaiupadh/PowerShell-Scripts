###################################################################################################
# This is a PowerShell script to automate sending an email reminder to alert Admin Account expiry #
#                       Authored by JAIUPADH on 26/11/2022                                        #
###################################################################################################

#Defining a variable folder and allocating with value of the path where the excel file exists.

$Folder="C:\AD_Queries"

#Fething details of the user properties and extrcating it to a csv file.

Get-aduser -identity a_masurks -Properties * | Export-csv -path $Folder\AdminExpiryReport.csv

#Sending an email to the mailer alias & adding the duplicate copy of the excel file as an email attachment

#Send-MailMessage -From 'Jaidev Upadhya <jaidev.upadhya@entrust.com>' -To 'Jaidev Upadhya <jaidev.upadhya@entrust.com>' -Subject 'Test Mail - Please ignore! Admin Account EXpiry Reminder/Notification' -Body "Please be noted that the Entrust Admin Accounts are going to expire soon. Action before too late!" -Attachments "$Folder\AdminExpiryReport.csv" -Priority High -DeliveryNotificationOption OnSuccess, OnFailure -SmtpServer 'outlook.entrust.com' -Port '25'

Send-MailMessage -From 'Jaidev Upadhya <jaidev.upadhya@entrust.com>' -To 'MailHarmanIT <MailHarmanIT@entrust.com>' -CC 'Sujeet Masurkar <Sujeet.Masurkar@entrust.com>'  -Subject 'Test Mail - Please ignore! Admin Account EXpiry Reminder/Notification' -Body "Please be noted that the Entrust Admin Accounts are going to expire soon. Action before too late!" -Attachments "$Folder\AdminExpiryReport.csv" -Priority High -DeliveryNotificationOption OnSuccess, OnFailure -SmtpServer 'outlook.entrust.com' -Port '25'

#Deleting the csv file as it is no longer required. 

Remove-Item -Path "$Folder\AdminExpiryReport.csv"

#Add this task to Task Scheduler & to automate when it is to be executed.