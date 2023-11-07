# The Bad Way !!!!

This repo contains a simple tomcat-9 project, showing a JSP made full of bad practices. At least, 14 has been identified. This is just one way to show (among many other ways) how you can write code, but you can NOT write Software.

In order to test this example of "bad things" to be done when making Software, you should:

1. Create a directory for this experiment
2. Clon this repo in that directory
3. Update the '.sh' files for them to reflect the directory of this experiment
4. Start our dockerized DB
5. Restore the script for that DB
6. Change the IP (172.31.92.214) for the one in your host machine in fle: webbapp/lista.jsp
7. Start our dockerized tomcat
8. Test it with: http://your.ip.or.localhost/webapp/list.jsp

For his to work, it needs:
1. A machine with docker and GIT (this works better if the host machine is new without any other servcie using reserved ports and docker names)

That's it :)
