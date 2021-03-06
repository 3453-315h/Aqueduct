#!/bin/bash

##########################################################################
#Aqueduct - Compliance Remediation Content
#Copyright (C) 2011,2012  
#  Vincent C. Passaro (vincent.passaro@gmail.com)
#  Shannon Mitchell (shannon.mitchell@fusiontechnology-llc.com)
#
#This program is free software; you can redistribute it and/or
#modify it under the terms of the GNU General Public License
#as published by the Free Software Foundation; either version 2
#of the License, or (at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 51 Franklin Street, Fifth Floor,
#Boston, MA  02110-1301, USA.
##########################################################################

###################### Fotis Networks LLC ###############################
# By Vincent C. Passaro                                                 #
# Fotis Networks LLC	                                                #
# Vincent[.]Passaro[@]fotisnetworks[.]com                               #
# www.fotisnetworks.com	                                                #
###################### Fotis Networks LLC ###############################
#
#  _____________________________________________________________________
# |  Version |   Change Information  |      Author        |    Date    |
# |__________|_______________________|____________________|____________|
# |    1.0   |   Initial Script      | Vincent C. Passaro | 1-Aug-2012 |
# |          |   Creation            |                    |            |
# |__________|_______________________|____________________|____________|
#	                                                                  
   
	
#######################DISA INFORMATION##################################
# Group ID (Vulid): V-4277
# Group Title: GEN006340
# Rule ID: SV-37735r1_rule
# Severity: medium
# Rule Version (STIG-ID): GEN006340
# Rule Title: Files in /etc/news must be owned by root or news.
#
# Vulnerability Discussion: If critical system files are not owned by a 
# privileged user, system integrity could be compromised.
#
# Responsibility: System Administrator
# IAControls: ECLP-1
#
# Check Content:
#
# Check the ownership of the files in "/etc/news".

# Procedure:
# ls -al /etc/news

# If any files are not owned by root or news, this is a finding.


#
# Fix Text: 
#
# Change the ownership of the files in "/etc/news" to root or news.

# Procedure:
# chown root /etc/news/*    
#######################DISA INFORMATION##################################
	
# Global Variables
PDI=GEN006340
	
# Start-Lockdown

if [ -d /etc/news ]
then
  find /etc/news ! -user root ! -user news -exec chown root {} \; > /dev/null 2>&1
fi
