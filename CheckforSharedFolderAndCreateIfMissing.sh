#!/bin/sh
####################################################################################################
#
# More information: http://macmule.com/2013/12/20/itunes-error/
#
# GitRepo: https://github.com/macmule/CheckforSharedFolder-CreateIfMissing/
#
# License: http://macmule.com/license/
#
####################################################################################################

# Check to see if /Users/Shared exists..
if [ -d /Users/Shared ]; then

	# If /Users/Shared exists, exit...
	echo "/Users/Shared exists.. exiting"
	exit 0
	 
else
	
	# If /Users/Shared does not exist, create...
	sudo mkdir /Users/Shared/
	echo "Created /Users/Shared/ directory..."
	
	# Give everyone 777 access to /Users/Shared/...
	sudo chmod -R 777 /Users/Shared/
	echo "Set permissions to 777 on /Users/Shared/..."
	
fi
