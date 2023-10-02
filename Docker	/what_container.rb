Objectives
Level 2 headings may be created by course providers in the future.


	What containers are and their benefits
	How to find and run Docker containers from the Docker Hub
	How to create your first Docker container and understand the layering and union file system
	The best practices when developing Dockerfiles
	How to solve problems of orchestration: reconciliation, scaling, high availability, and service discovery
	Some of the tools that can help you run highly available applications in production, such as the IBM Container service



Lab 1: Run your first container and learn how to inspect it. Explore the Docker Hub and discover common images ready to be run.

Lab 2: Create a custom Docker Image built from a Dockerfile and push it to a central registry where it can be pulled to be deployed on other environments. Learn about the union file system and copy-on-write, and how they help you deliver applications faster.

Lab 3: Deploy containers using Docker swarm and learn how Docker Swarm helps solve problems such as reconciliation, scaling, high availability and service discovery. In this lab, you'll use Play-with-Docker for a multi-node cluster rather than use your locally installed Docker.



Q what is container
Ans * A group of processes that run on isolation
    * all processes must be able to run on the shared kernel

   * Each container has its own set of "namespaces" ( isolation views)
   	* PID- (process ID)
   	* USER- (user and group ids)
   	* UTS- (host and domain name)
   	* NS- (mount points)
   	* NET- (Network devise, stack, ports)
   	* IPC- inter processe communication, message, queues

   *cgroup- controls limits and monitoring of resources


# or

What is a container?
A container is a sandboxed process running on a host machine that is isolated from all other processes running on that host machine. That isolation leverages(फ़ायदा उठाना) kernel namespaces and cgroups, features that have been in Linux for a long time. Docker makes these capabilities approachable and easy to use. To summarize, a container:

Is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI.
Can be run on local machines, virtual machines, or deployed to the cloud.
Is portable (and can be run on any OS).
Is isolated from other containers and runs its own software, binaries, configurations, etc.



Q 3 What is Docker?
 *AT is core, Docker is tooling to manage containers
   *simplified exiting technology to enable it for the masses 
 * Enable developer to use containers for their applications 
   *packege dependencies with container: "build once," run anywhere


What is an image?
A running container uses an isolated filesystem. This isolated filesystem is provided by an image, and the image must contain everything needed to run an application - all dependencies, configurations, scripts, binaries, etc. The image also contains other configurations for the container, such as environment variables, a default command to run, and other metadata.


Q 2 What is the difference between virtual machines and containers?
Are You Using VMs, Containers, or Both?
If you are using VMs or containers, we’d love to hear from you about what you’re using and how you’re using them. Drop a note in the comments.

VM vs. Containers FAQs
What is the difference between virtual machines and containers?
A Virtual machine (VM) is a simulated computing environment that emulates an entire operating system with its dependencies and resources. VMs run on a hypervisor, a software layer that sits between the underlying hardware and the virtualized environment. They provide strong isolation but are resource-intensive. Containers, on the other hand, sit on top of a physical server plus its host OS kernel and libraries, making them lightweight and fast to start. They offer efficient resource utilization but provide weaker isolation. Containers are ideal for deploying lightweight, scalable applications, while VMs are suitable for running multiple applications with different operating systems on a single server.

Which one is more lightweight, a virtual machine or a container?
Containers are more lightweight compared to virtual machines (VM). Containers share the host OS kernel and libraries, eliminating the need to run a separate OS instance for each container like you would for a VM. This significantly reduces their overhead and resource requirements compared to VMs, which need to run a complete OS stack. Containers start quickly and consume fewer system resources, making them ideal for deploying and scaling applications efficiently. VMs, on the other hand, require more resources and have a longer startup time due to the need to boot an entire virtualized OS.

Which one provides better isolation, a virtual machine or a container?
Virtual machines (VM) provide stronger isolation compared to containers. Because each VM runs on its own dedicated OS, it creates a complete virtualized environment. This isolation ensures that applications and processes within one VM are isolated from others, providing enhanced security. Containers, while offering some level of isolation, share the host operating system, which can lead to potential security vulnerabilities if not properly managed. So, in terms of isolation, VMs are generally considered to provide better isolation than containers.

Which is faster – container or VM?
Containers are generally faster compared to virtual machines (VM). Since containers sit atop a host OS kernel and libraries, they have quick startup times and efficient resource utilization. They can start within seconds and have minimal overhead. In contrast, VMs require booting an entire virtualized OS, resulting in longer startup times and higher resource consumption. 

What are some use cases for using virtual machines versus using containers?
Virtual machines (VMs) work well for scenarios where strong isolation, security, and compatibility with different operating systems are required. They are commonly used for running legacy applications, testing different operating systems or software configurations, and hosting complex software stacks. VMs are beneficial in situations where the application’s dependencies are specific and might conflict with the host system. Because they use resources more efficiently and are easy and quick to deploy, containers, on the other hand, are ideal for deploying lightweight, scalable applications, and microservices architectures.




Q why containers are appealing to users 
 * no more "work on my machine" -->> only work on single machine when we shipped our image in different environment it gone work as same way rather than we phase issues like environment or diff, when we want to update image so it should be update in different environments
 * lightweight and faster

 *better resources utilization
   *can fit far more containers than VMs into a host
 * standard devloper to operations interface --->>> it mean we running some python application, java application, rails application 
 	 becouse we want a standard interface to deploy our application on different env.
 *Ecosystem and tooling 


https://docs.docker.com/get-started/02_our_app/

i got error i make my repo as public so i got some issues denied: requested access to the resource is denied
the solution is that change status public to private to my repo then push 
1 docker tag firstimage YOUR_DOCKERHUB_NAME/firstimage
2 docker push YOUR_DOCKERHUB_NAME/firstimage
