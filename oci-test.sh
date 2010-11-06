
# Ref: http://www.orafaq.com/wiki/Ruby_on_Rails

ruby -r oci8 -e 'OCI8.new("scott", "tiger", "orcl").exec("select * from emp") do |r| puts r.join(","); end'

