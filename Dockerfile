# has puppet agent preinstalled
FROM puppet/puppet-agent-ubuntu
## copy your manifests
COPY modules /opt/puppetlabs/puppet/modules
COPY hieradata /etc/puppetlabs/puppet/hieradata
COPY hiera.yaml /etc/puppetlabs/puppet/hiera.yaml
COPY manifests/site.pp /puppet-manifests/site.pp
# install modules
RUN puppet module install puppetlabs-apache --version 7.0.0
RUN apt-get update
RUN apt-get install less
# keep container running
ENTRYPOINT ["tail", "-f", "/dev/null"]