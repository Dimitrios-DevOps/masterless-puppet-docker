**Highly available web server with masterless puppet and docker**

To set up the infrastructure execute the run.sh-Script in the _Support_ folder.

`/bin/bash support/run.sh`

The script builds the docker image _puppet-test-xyz_ and starts, based on that image, the three following containers:
- haproxy
- apache01
- apache02

In addition it will execute `puppet apply /puppet-manifests` on each container to apply the puppet configurations.

**Links**:

- Webservice via LB http://localhost:8080
- HAProxy Stats Admin Page http://localhost:8081/admin?stats
- Apache Webservice01 URL http://localhost:50130
- Apache Webservice02 URL http://localhost:51130

**CleanUp**

Run the cleanup.sh to stop the containers and remove the puppet-test-xyz docker image.

