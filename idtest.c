//#include <stdlib.h>
//#include <stdio.h>
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int
main(void)
{
 uint uid; 
 uint gid; 
 uint ppid;
 uid = getuid();
 printf(2, "Current UID is: %d\n", uid);
 printf(2, "Setting UID to 100\n");
 setuid(100);
 uid = getuid();
 printf(2, "Current UID is: %d\n", uid);
 gid = getgid();
 printf(2, "Current GID is: %d\n", gid);
 printf(2, "Setting GID to 100\n");
 setgid(100);
 gid = getgid();
 printf(2, "Current GID is: %d\n", gid);
 ppid = getppid();
 if(getppid() > 0)
 {
 	printf(2, "My parent process is: %d\n", ppid);
 	printf(2, "Done!\n");
 }

 else
 {
	 printf(2, "No Parent\n");
 }
exit();
}
