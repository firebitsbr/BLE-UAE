### Discovering bluetooth and bluetooth low energy devices

Connect a external adapter CSR4.0 Dongle if you are using virtualbox or Host Machine internal bluetooth works but if you have adapter more better
   
   
   ![](photos/csr.PNG)
   

check with whether blueotooth adapter is working 

"#hciconfig" - to check adapter it is connected and running or not 
   
   ![](photos/hciconfig.PNG)

if the adapter is not up run the command " #hciconfig hcix up"

***********************************************************************************************************************

### 1. ScanNRecon with "bluetoothctl"

it is preinstalled in linux machines or you can install with [sudo apt-get install bluez]

   bluetoothctl
    
   #bluetoothctl 
   [bluetooth]#help
   
   ![](photos/bluetoothctl-help.PNG)
            
   [bluetooth]#scan on 
   or 
   [bluetooth]#bluetoothctl discoverable on
   - to scan surrounded devices classic and bluetooth low energy devices can be found by this tool 
   
   ![](photos/bluetoothctl-help-scan-on.PNG)
            
   [bluetooth]#scan off
   - to stop the scanner
   
   ![](photos/bluetoothctl-help-scan-on-off.PNG)
      
   [bluetooth]#info <Target MAC ID>
   - get the device info 
   
   ![](photos/infromationgathering.png)
   
   [bluetooth]# connect 00:12:34:56:78:90
   - to pair with device
   
   
   
********************************************************************************************************************************

#### 2. ScanNRecon with "hcitool"
   - hcitool (hci-host controller interface) is one of the bluetooth configure tools to send the commands to bluetooth devices to discover and communcate
   
   #### For non-le devices
   
  > sudo hcitool -h 
   -help command
   
   ![](/photos/hcitool-h.png)
   
  > sudo hcitool scan
   - scan for the non LE (Low - Energy) Devices
   
   ![](/photos/hcitoolscan.PNG)
   
  > sudo hcitool info <b addr>
   - to get the details of the remote devices
   
   ![](/photos/hcitoolinfo.PNG)
   
  > sudo hcitool cc 
   - to get connect with devices 
   
   
   #### For LE devices
      
  > sudo hcitool lescan
   - scan for the LE Devices
   
  > sudo hcitool leinfo <baddr>
   - to find the device information about the LE device
   
  > sudo hcitool lecc  <baddr>
   - to get connect with LE devices
   
   #sudo hcitool 

******************************************************************************************************************************
### 3. ScanNRecon with "bettercap"
      
   - betterCAP is one of the best tool developed in golang and works simply awesome. while you running the installation script it is automatically downloads the precompiled binaries 
   - step 1: unzip the bettercap folder
   - step 2: move the bettercap binary file to /usr/bin location -- sudo mv bettercap /usr/bin
   - step 3: install dependencies "*sudo apt-get install libnetfilter-queue-dev*" and type bettercap in terminal 
   
   #sudo bettercap 
   
   #help
   
   - checking tool options and usage guide
   
   ![](/photos/bettercaphelp.png)
   
   #help ble.recon
   
   - module way checking for help
   
   ![](photos/bettedcaphelpmodule.PNG)
   
   #ble.recon on
   
   - scanning for bluetooth devices
   
   ![](photos/bettercaprecon-on.PNG)
   
   #ble.recon off
   
   - for stopping the scan 
   
   ![](photos/bettercaprecon-off.PNG)
   
   #ble.show
   
   - to show discovered devices
   
   ![](photos/bettercaplisting.PNG)
   
   #ble.enum "<B Addr>"
   
   - enumeratins services and characteristics of devices
   
   ![]()

