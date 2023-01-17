ansible-config dump|grep DEFAULT_INVENTORY_PLUGIN_PATH
mkdir --parents --verbose /home/vagrant/.ansible/plugins/inventory/
cp -p -v /matos_ansible/nmap_plugin.py /home/vagrant/.ansible/plugins/inventory/
