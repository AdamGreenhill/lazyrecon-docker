# lazyrecon-docker
Docker image containing the [lazyrecon](https://github.com/nahamsec/lazyrecon) script. The main features of the script include:

* Create a dated folder with recon notes
* Grab subdomains using:
        * Sublist3r, certspotter and cert.sh
        * Dns bruteforcing using massdns
* Find any CNAME records pointing to unused cloud services like aws
* Probe for live hosts over ports 80/443
        * Grab a screenshots of responsive hosts
        * Scrape wayback for data:
* Extract javascript files
* Build custom parameter wordlist, ready to be loaded later into Burp intruder or any other tool
* Extract any urls with .jsp, .php or .aspx and store them for further inspection
* Perform full nmap TCP scan
* Get dns information about every subdomain
* Perform dirsearch for all subdomains
* Generate a HTML report with output from the tools above
* Improved reporting and less output while doing the work
* Dark mode for html reports

## Usage

Run the following to execute the script. Pass the root domain to the script via the `-d $domain` parameter.

```
docker run -it \
        -v "${pwd}:/output" \
        adamgreenhill/lazyrecon-docker \
        -d $domain
```

## Building from source

Run the following to build the project from source:

```
git clone https://github.com/AdamGreenhill/lazyrecon-docker
cd lazyrecon-docker
docker build -t lazyrecon-docker .
```

Execute the following to run the container locally:

```
docker run -it \
        -v "${pwd}:/output" \
        lazyrecon-docker \
        -d $domain
```
