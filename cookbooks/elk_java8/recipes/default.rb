# Java 8

include_recipe 'java::oracle'

link "/usr/lib/jvm/java-8-oracle" do
	to "/usr/lib/jvm/current"
	link_type :symbolic
end


