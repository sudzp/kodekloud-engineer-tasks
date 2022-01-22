# Setup Puppet Certs Task


## Follow the below steps to setup puppet certs

### Start the puppet if not active
```
$ systemctl start puppet
$ systemctl status puppet 
$ ping puppet
```
### Add the alias for puppetserver
```
$ cat /etc/hosts
$ vi /etc/hosts
$ ping puppet 
```
### Create autosign.conf file with puppet and puppet agent host

```
$ vi /etc/puppetlabs/puppet/autosign.conf
$ systemctl restart puppet
$ systemctl status puppet
```

### Check if puppet master is appears in ca list

`$ puppetserver ca list --all`

### Login to puppet agent & add alias of puppet master in hosts file

```
$ ssh tony@stapp01
$ vi /etc/hosts
$ systemctl restart puppet
$ puppet agent -tv

```
   
### Now check the ca list from  puppetmaster
`$ puppetserver ca list --all `


