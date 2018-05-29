 nrpe_project

This cookbook was developed to help those that are new to chef get started through a easy to understand video tutorial. It is designed to make the default values of the nrpe.cfg dynamic without adding the complication of implementing additional plugins or other cookbooks. This repository has been created so that those following the tutorial can reference the finished code.

*This cookbook:
 * Updates Ubuntu
 * Install NRPE and Nagios plugins using the apt repository
 * Use a template to write the nrpe.cfg file
 * Restart the NRPE service

To use this cookbook modify the values of the attributes in the nrpe_project/attributes/default.rb file. These attributes configure the nrpe.cfg. Once the desired values are entered the cookbook is ready to be run.
