#!/bin/bash

function install_PetitPotam {

	tool="PetitPotam"
    	echo -e "\n########## Installing $tool ##########\n"
	if [ -d "$install_directory/$tool" ]; then
		echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
	else
		git clone https://github.com/topotam/PetitPotam.git $install_directory/$tool
		chmod 755 $install_directory/$tool/PetitPotam.py
		echo -e "\nCreating symlink"
		ln -s $install_directory/$tool/"PetitPotam.py" /usr/local/bin/petitpotam
		echo -e "PetitPotam Successfully installed.\nRun with 'petitpotam'"
	fi
}

function install_donpapi {

	echo -e "\n########## Installing DonPAPI ##########\n"
	pipx install donpapi
	pipx ensurepath
}

function install_certipy {

	tool="Certipy"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/ly4k/Certipy.git $install_directory/$tool
                chmod 755 $install_directory/$tool/setup.py
                cd $install_directory/$tool/
		python3 setup.py install
        fi	
}


function install_coercer {
	echo -e "\n########## Installing Coercer ##########\n"
	pip install coercer
}


function install_bloodhound {

	echo -e "\n########## Installing Bloodhound ##########\n"
	apt install bloodhound -y
	echo -e "\n########## Installing Neo4j ##########\n"
	apt install neo4j -y
	echo -e "\n########## Installing Bloodhound Python ##########\n"
	apt install bloodhound.py -y
	
}

function install_netexec {

	echo -e "\n########## Installing NetExec ##########\n"
	pipx install git+https://github.com/Pennyw0rth/NetExec
}


function install_powersploit {
	
        tool="PowerSploit"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/PowerShellMafia/PowerSploit.git $install_directory/$tool
        fi
}


function install_max {

	tool="Max"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/knavesec/Max.git $install_directory/$tool
		cd $install_directory/$tool
		pip3 install -r requirements.txt
		chmod 755 $install_directory/$tool/max.py
		echo -e "\nCreating Symlink"
		ln -s $install_directory/$tool/"max.py" /usr/local/bin/$tool
		echo -e "Max Successfully Installed"
        fi
}

function install_trevorSpray {
	
	echo -e "\n########## Installing TrevorSpray ##########\n"
	pip install git+https://github.com/blacklanternsecurity/trevorproxy
	pip install git+https://github.com/blacklanternsecurity/trevorspray
	echo -e "TrevorSpray Successfully Installed"
}


function install_nuclei {

	echo -e "\n########## Installing Nuclei ##########\n"
	apt install nuclei
	echo -e "\n########## Updating Nuclei Templates ##########\n"
	nuclei -update-templates
}

function install_sysinternals {

	tool="Sysinternals"
	echo -e "\n########## Installing $tool ##########\n"
	if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                mkdir $install_directory/$tool
	        cd $install_directory/$tool
		wget https://download.sysinternals.com/files/SysinternalsSuite.zip
		unzip SysinternalsSuite.zip
		rm SysinternalsSuite.zip      
 		echo -e "Successfully Installed SysInternalsSuite"
 	fi
}

function install_eyewitness {

	echo -e "\n########## Installing EyeWitness ##########\n"
	apt install eyewitness -y
}

function install_impacket {
	
	echo -e "\n########## Installing Impacket ##########\n"
	pipx install impacket
	pipx ensurepath
}

function update_repositories {
	echo -e "\n########## Updating Repositories ##########\n"
	apt update
}




function tools_installed {

	echo -e "\n###########################################"
	echo -e "################ ALL DONE #################"
	echo -e "###########################################"
}

function install_mitm6 {
	
        tool="mitm6"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/dirkjanm/mitm6.git $install_directory/$tool
                cd $install_directory/$tool
		pip install -r requirements.txt
		chmod 755 setup.py
                python3 setup.py install
		cd $tool
		chmod 755 mitm6.py
		echo -e "\nCreating Symlink"
		ln -s $install_directory/$tool/$tool/mitm6.py /usr/local/bin/mitm6
                echo -e "Successfully Installed MITM6\nRun with: mitm6"
        fi
}

function install_default_creds {

	tool="defaultcreds-cheat-sheet"
	echo -e "\n########## Installing $tool ##########\n"
	pip3 install $tool
}


function install_impacket {
	tool="impacket-scripts"
	echo -e "\n########## Installing $tool ##########\n"
	apt install $tool
}

function configure_crackmapexec {

	tool="crackmapexec"
	echo -e "\n########## Configuring $tool ##########"
	$tool

}


function install_eaphammer {

	tool="eaphammer"
	echo -e "\n########## Installing $tool ##########\n"
	apt install $tool -y
}


function install_wifi_drivers {

	echo -e "\n########## Installing Wifi Drivers  ##########\n"
	apt install realtek-rtl88xxau-dkms -y 
	apt install dkms -y
	if [ -d  "/opt/rtl8812au" ]; then
                echo -e "\nrtl8812au is aleady installed in /opt/\nSkipping rtl8812au"
        else
		git clone https://github.com/aircrack-ng/rtl8812au /opt/rtl8812au
		cd /opt/rtl8812au
		make
		make install
	fi
}

function install_headers {

	tool="linux-headers-generic"
	echo -e "\n########## Installing $tool ##########\n"
	apt install $tool -y
}


function install_klist {

	tool="klist"
	echo -e "\n########## Installing KLIST ##########\n"
	apt install krb5-user -y
}

function install_Ghostpack-CompiledBinaries {

	tool="Ghostpack-CompiledBinaries"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/r3motecontrol/Ghostpack-CompiledBinaries.git $install_directory/$tool
        fi
}


function install_whisker {

        tool="pywhisker"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/ShutdownRepo/pywhisker.git $install_directory/$tool
		cd $install_directory/$tool
		chown $(whoami):$(whoami) $install_directory/$tool
		python3 -m venv . 
		source bin/activate
		pip install -r requirements.txt
		chmod 755 $install_directory/$tool/pywhisker.py
		deactivate
		wget https://github.com/Swepstopia/pywhisker-exe/raw/main/Whisker.exe
        fi

}


function install_forest-trust-tools {

	tool="forest-trust-tools"
        echo -e "\n########## Installing $tool ##########\n"
        if [ -d "$install_directory/$tool" ]; then
                echo -e "\n$tool is aleady installed in '$install_directory/.\nSkipping $tool"
        else
                git clone https://github.com/dirkjanm/forest-trust-tools.git $install_directory/$tool
		cd $install_directory/$tool
		chmod 755 *.py
        fi
}



##This function is called from the main for loop
function start_script {

	update_repositories
	install_PetitPotam
	install_donpapi
	install_certipy
	install_coercer
	install_bloodhound
	install_netexec
	install_powersploit
	install_max
	install_trevorSpray
	install_nuclei
	install_sysinternals
	install_eyewitness
	install_impacket
	install_mitm6
	install_default_creds
	install_impacket
 	install_Ghostpack-CompiledBinaries
	configure_crackmapexec
	install_headers
	install_Ghostpack-CompiledBinaries
	install_eaphammer
	install_whisker
	install_klist
	install_forest-trust-tools
	#install_wifi_drivers
	chown -R $(whoami):$(whoami) $install_directory
	apt autoremove
 	tools_installed
}

#######################################################
#################### MAIN FUNCTION ####################
#######################################################

install_directory="/opt" #Used in all of the functions to set the install directory


#Check if running as sudo. 
if [ "$EUID" -ne 0 ]; then
    echo -e "\nError\nThis script must be run with sudo."
    exit 1
else
	echo -e "\nThis script installs all tools in $install_directory/"
	start_script
fi
