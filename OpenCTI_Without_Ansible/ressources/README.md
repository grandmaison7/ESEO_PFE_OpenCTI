1- vagrant up master1

2- vagrant ssh master1
Get the content of the "swarm_init.txt" file in /opencti/docker-opencti

3- vagrant up worker1 worker2

4.1- vagrant ssh worker1 -c '[DOCKER JOIN COMMAND FOUND IN swarm_init.txt FILE]'

4.2-vagrant ssh worker2 -c '[DOCKER JOIN COMMAND FOUND IN swarm_init.txt FILE]'

5- Wait 30min/1h
