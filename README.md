# Simulator

<table>
  <thead>
  <tr>
    <th>Dev</th>
    <th>Test</th>
    <th>Prod</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>
    <img src="https://vsrm.dev.azure.com/sdir-no/_apis/public/Release/badge/f43d23a8-33f6-4e55-bbb0-c8b9c7a780e0/17/38" alt="Status badge dev">
    </td>
    <td>
    <img src="https://vsrm.dev.azure.com/sdir-no/_apis/public/Release/badge/f43d23a8-33f6-4e55-bbb0-c8b9c7a780e0/17/39" alt="Status badge test">
    </td>
    <td>
    <img src="https://vsrm.dev.azure.com/sdir-no/_apis/public/Release/badge/f43d23a8-33f6-4e55-bbb0-c8b9c7a780e0/17/40" alt="Status badge prod">
    </td>
  </tr>
  </tbody>
</table>

## Docker

The repository includes a docker-compose file, which can be used for running a Fuseki server locally using docker.
It loads ttl datasets during startup.

### Instructions

First create a docker network called `sdir`, if you haven't already

```console
docker network create sdir
```

Then start the Fuseki server using docker-compose:

```console
docker-compose up -d
```

The server should now be reachable on [http://localhost:3030](http://localhost:3030)
on your host network, or on [http://fuseki:3030](http://fuseki:3030) inside the sdir docker
network.
The admin password for your _local_ server is specified in the docker-compose file.
