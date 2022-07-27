##############################################################################
# This is a PowerShell script to automate sending of DailyProductivityReport #
#                       Authored by JAIUPADH on 20/07/2022                   #
############################################################################## 

# Defining a variable folder and allocating with value of the path where the excel file exists 

$Folder="C:\Users\upadhyj\Downloads"

#Creating a duplicate copy of the Excel file

Copy-Item -Path "$Folder\Test.xlsx" -Destination "$Folder\DataCaptured.xlsx"

#Sending an email to the mailer alias & adding the duplicate copy of the excel file as an email attachment 

Send-MailMessage -From 'Jaidev Upadhya <jaidev.upadhya@entrust.com>' -To 'MailHarmanIT  <MailHarmanIT@entrust.com>' -Subject 'Test Mail - Daily Productivity Report' -Body "Please find the Excel file enclosed within this email" -Attachments "$Folder\DataCaptured.xlsx" -Priority High -DeliveryNotificationOption OnSuccess, OnFailure -SmtpServer 'outlook.entrust.com' -Port '25'

#Deleting the duplicate copy of the Excel file as it is no longer needed. 

Remove-Item -Path "$Folder\DataCaptured.xlsx"

#Add this task to Task Scheduler & to automate when it is to be executed.