# Create a class and use file_line resource to replace string in one of the app server
class string_manipulate {
        file_line {'line_replace':
                path => '/opt/data/blog.txt',
                match => 'Welcome to Nautilus Industries!',
                line => 'Welcome to xFusionCorp Industries!',

        }

}

node 'stapp03.stratos.xfusioncorp.com' {
  include string_manipulate
}


# puppet parser validate puppet-string-manipulation.pp     #run this command to validate file for any errors
# puppet agent -tv --noop    #this command will test
# puppet agent -tv           # Run this command on app server 
