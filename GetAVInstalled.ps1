#########################################################################
#    This is a powershell script authored by jaiupadh on 28/12/22       #
#   & is used for querying the OS to fetch the info on A/V Installed    #
#########################################################################

WMIC /Node:localhost /Namespace:\\root\SecurityCenter2 Path AntiVirusProduct Get displayName /Format:List