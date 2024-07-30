# Edge Continuum Orchestrator: Testing Automation

In this repository, collect Quality of Service (QoS) metrics for a serverless pipeline deployed in various settings across the cloud-edge continuum. 

## Terraform Build
After all of this is configured, you are ready to run the terraform modules. To do so, run the following commands from this repository's directory:

```
terraform init -upgrade
terraform plan
terraform apply
```

Once complete, you might see output that resembles the following:
```
Apply complete! Resources: 38 added, 0 changed, 0 destroyed.

Outputs:

region_fqdn_1 = "3.231.160.236:8001"
region_fqdn_2 = "3.231.19.243:8002"
region_fqdn_3 = "3.239.174.62:8003"
wlz_fqdn_1 = "155.146.69.167:8001"
wlz_fqdn_2 = "155.146.70.244:8002"
wlz_fqdn_3 = "155.146.69.41:8003"
```

## Test Wavelength Zone Endpoints
First, ensure that your laptop is tethered to a 4G or 5G-connected hotspot for the supporting CSP partner for that Wavelength Zone. The complete set of `<Wavelength Zone,CSP>` pairs can be found on the [AWS Wavelength Locations](https://aws.amazon.com/wavelength/locations/) page.

Next, navigate into the `wlz_data_source` directory and run `./run_client.sh` to begin the test data collection. This process should take 10+ minutes.

Lastly, power off your hotspot, navigate into the `region_data_source` directory and run  `./run_client.sh` to begin the test data collection. This process should also take 10+ minutes.
