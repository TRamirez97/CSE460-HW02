
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
      11:	68 66 4d 00 00       	push   $0x4d66
      16:	6a 01                	push   $0x1
      18:	e8 03 3a 00 00       	call   3a20 <printf>
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 7a 4d 00 00       	push   $0x4d7a
      26:	e8 e7 38 00 00       	call   3912 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 13                	js     45 <main+0x45>
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 e4 54 00 00       	push   $0x54e4
      39:	6a 01                	push   $0x1
      3b:	e8 e0 39 00 00       	call   3a20 <printf>
      40:	e8 8d 38 00 00       	call   38d2 <exit>
      45:	50                   	push   %eax
      46:	50                   	push   %eax
      47:	68 00 02 00 00       	push   $0x200
      4c:	68 7a 4d 00 00       	push   $0x4d7a
      51:	e8 bc 38 00 00       	call   3912 <open>
      56:	89 04 24             	mov    %eax,(%esp)
      59:	e8 9c 38 00 00       	call   38fa <close>
      5e:	e8 8d 35 00 00       	call   35f0 <argptest>
      63:	e8 b8 11 00 00       	call   1220 <createdelete>
      68:	e8 83 1a 00 00       	call   1af0 <linkunlink>
      6d:	e8 7e 17 00 00       	call   17f0 <concreate>
      72:	e8 a9 0f 00 00       	call   1020 <fourfiles>
      77:	e8 e4 0d 00 00       	call   e60 <sharedfd>
      7c:	e8 1f 32 00 00       	call   32a0 <bigargtest>
      81:	e8 8a 23 00 00       	call   2410 <bigwrite>
      86:	e8 15 32 00 00       	call   32a0 <bigargtest>
      8b:	e8 a0 31 00 00       	call   3230 <bsstest>
      90:	e8 bb 2c 00 00       	call   2d50 <sbrktest>
      95:	e8 e6 30 00 00       	call   3180 <validatetest>
      9a:	e8 61 03 00 00       	call   400 <opentest>
      9f:	e8 ec 03 00 00       	call   490 <writetest>
      a4:	e8 c7 05 00 00       	call   670 <writetest1>
      a9:	e8 92 07 00 00       	call   840 <createtest>
      ae:	e8 4d 02 00 00       	call   300 <openiputtest>
      b3:	e8 48 01 00 00       	call   200 <exitiputtest>
      b8:	e8 63 00 00 00       	call   120 <iputtest>
      bd:	e8 ce 0c 00 00       	call   d90 <mem>
      c2:	e8 59 09 00 00       	call   a20 <pipe1>
      c7:	e8 e4 0a 00 00       	call   bb0 <preempt>
      cc:	e8 3f 0c 00 00       	call   d10 <exitwait>
      d1:	e8 2a 27 00 00       	call   2800 <rmdot>
      d6:	e8 e5 25 00 00       	call   26c0 <fourteen>
      db:	e8 10 24 00 00       	call   24f0 <bigfile>
      e0:	e8 4b 1c 00 00       	call   1d30 <subdir>
      e5:	e8 f6 14 00 00       	call   15e0 <linktest>
      ea:	e8 61 13 00 00       	call   1450 <unlinkread>
      ef:	e8 8c 28 00 00       	call   2980 <dirfile>
      f4:	e8 87 2a 00 00       	call   2b80 <iref>
      f9:	e8 a2 2b 00 00       	call   2ca0 <forktest>
      fe:	e8 fd 1a 00 00       	call   1c00 <bigdir>
     103:	e8 78 34 00 00       	call   3580 <uio>
     108:	e8 c3 08 00 00       	call   9d0 <exectest>
     10d:	e8 c0 37 00 00       	call   38d2 <exit>
     112:	66 90                	xchg   %ax,%ax
     114:	66 90                	xchg   %ax,%ax
     116:	66 90                	xchg   %ax,%ax
     118:	66 90                	xchg   %ax,%ax
     11a:	66 90                	xchg   %ax,%ax
     11c:	66 90                	xchg   %ax,%ax
     11e:	66 90                	xchg   %ax,%ax

00000120 <iputtest>:
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
     126:	68 0c 3e 00 00       	push   $0x3e0c
     12b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     131:	e8 ea 38 00 00       	call   3a20 <printf>
     136:	c7 04 24 9f 3d 00 00 	movl   $0x3d9f,(%esp)
     13d:	e8 f8 37 00 00       	call   393a <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 9f 3d 00 00       	push   $0x3d9f
     151:	e8 ec 37 00 00       	call   3942 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 85 00 00 00    	js     1e6 <iputtest+0xc6>
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 9c 3d 00 00       	push   $0x3d9c
     169:	e8 b4 37 00 00       	call   3922 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 5a                	js     1cf <iputtest+0xaf>
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 c1 3d 00 00       	push   $0x3dc1
     17d:	e8 c0 37 00 00       	call   3942 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 2f                	js     1b8 <iputtest+0x98>
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 44 3e 00 00       	push   $0x3e44
     191:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     197:	e8 84 38 00 00       	call   3a20 <printf>
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 78 3d 00 00       	push   $0x3d78
     1a8:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     1ae:	e8 6d 38 00 00       	call   3a20 <printf>
     1b3:	e8 1a 37 00 00       	call   38d2 <exit>
     1b8:	50                   	push   %eax
     1b9:	50                   	push   %eax
     1ba:	68 c3 3d 00 00       	push   $0x3dc3
     1bf:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     1c5:	e8 56 38 00 00       	call   3a20 <printf>
     1ca:	e8 03 37 00 00       	call   38d2 <exit>
     1cf:	52                   	push   %edx
     1d0:	52                   	push   %edx
     1d1:	68 a7 3d 00 00       	push   $0x3da7
     1d6:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     1dc:	e8 3f 38 00 00       	call   3a20 <printf>
     1e1:	e8 ec 36 00 00       	call   38d2 <exit>
     1e6:	51                   	push   %ecx
     1e7:	51                   	push   %ecx
     1e8:	68 86 3d 00 00       	push   $0x3d86
     1ed:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     1f3:	e8 28 38 00 00       	call   3a20 <printf>
     1f8:	e8 d5 36 00 00       	call   38d2 <exit>
     1fd:	8d 76 00             	lea    0x0(%esi),%esi

00000200 <exitiputtest>:
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 10             	sub    $0x10,%esp
     206:	68 d3 3d 00 00       	push   $0x3dd3
     20b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     211:	e8 0a 38 00 00       	call   3a20 <printf>
     216:	e8 af 36 00 00       	call   38ca <fork>
     21b:	83 c4 10             	add    $0x10,%esp
     21e:	85 c0                	test   %eax,%eax
     220:	0f 88 8a 00 00 00    	js     2b0 <exitiputtest+0xb0>
     226:	75 50                	jne    278 <exitiputtest+0x78>
     228:	83 ec 0c             	sub    $0xc,%esp
     22b:	68 9f 3d 00 00       	push   $0x3d9f
     230:	e8 05 37 00 00       	call   393a <mkdir>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	0f 88 87 00 00 00    	js     2c7 <exitiputtest+0xc7>
     240:	83 ec 0c             	sub    $0xc,%esp
     243:	68 9f 3d 00 00       	push   $0x3d9f
     248:	e8 f5 36 00 00       	call   3942 <chdir>
     24d:	83 c4 10             	add    $0x10,%esp
     250:	85 c0                	test   %eax,%eax
     252:	0f 88 86 00 00 00    	js     2de <exitiputtest+0xde>
     258:	83 ec 0c             	sub    $0xc,%esp
     25b:	68 9c 3d 00 00       	push   $0x3d9c
     260:	e8 bd 36 00 00       	call   3922 <unlink>
     265:	83 c4 10             	add    $0x10,%esp
     268:	85 c0                	test   %eax,%eax
     26a:	78 2c                	js     298 <exitiputtest+0x98>
     26c:	e8 61 36 00 00       	call   38d2 <exit>
     271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     278:	e8 5d 36 00 00       	call   38da <wait>
     27d:	83 ec 08             	sub    $0x8,%esp
     280:	68 f6 3d 00 00       	push   $0x3df6
     285:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     28b:	e8 90 37 00 00       	call   3a20 <printf>
     290:	83 c4 10             	add    $0x10,%esp
     293:	c9                   	leave  
     294:	c3                   	ret    
     295:	8d 76 00             	lea    0x0(%esi),%esi
     298:	83 ec 08             	sub    $0x8,%esp
     29b:	68 a7 3d 00 00       	push   $0x3da7
     2a0:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     2a6:	e8 75 37 00 00       	call   3a20 <printf>
     2ab:	e8 22 36 00 00       	call   38d2 <exit>
     2b0:	51                   	push   %ecx
     2b1:	51                   	push   %ecx
     2b2:	68 b9 4c 00 00       	push   $0x4cb9
     2b7:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     2bd:	e8 5e 37 00 00       	call   3a20 <printf>
     2c2:	e8 0b 36 00 00       	call   38d2 <exit>
     2c7:	52                   	push   %edx
     2c8:	52                   	push   %edx
     2c9:	68 78 3d 00 00       	push   $0x3d78
     2ce:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     2d4:	e8 47 37 00 00       	call   3a20 <printf>
     2d9:	e8 f4 35 00 00       	call   38d2 <exit>
     2de:	50                   	push   %eax
     2df:	50                   	push   %eax
     2e0:	68 e2 3d 00 00       	push   $0x3de2
     2e5:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     2eb:	e8 30 37 00 00       	call   3a20 <printf>
     2f0:	e8 dd 35 00 00       	call   38d2 <exit>
     2f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000300 <openiputtest>:
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	83 ec 10             	sub    $0x10,%esp
     306:	68 08 3e 00 00       	push   $0x3e08
     30b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     311:	e8 0a 37 00 00       	call   3a20 <printf>
     316:	c7 04 24 17 3e 00 00 	movl   $0x3e17,(%esp)
     31d:	e8 18 36 00 00       	call   393a <mkdir>
     322:	83 c4 10             	add    $0x10,%esp
     325:	85 c0                	test   %eax,%eax
     327:	0f 88 9f 00 00 00    	js     3cc <openiputtest+0xcc>
     32d:	e8 98 35 00 00       	call   38ca <fork>
     332:	85 c0                	test   %eax,%eax
     334:	78 7f                	js     3b5 <openiputtest+0xb5>
     336:	75 38                	jne    370 <openiputtest+0x70>
     338:	83 ec 08             	sub    $0x8,%esp
     33b:	6a 02                	push   $0x2
     33d:	68 17 3e 00 00       	push   $0x3e17
     342:	e8 cb 35 00 00       	call   3912 <open>
     347:	83 c4 10             	add    $0x10,%esp
     34a:	85 c0                	test   %eax,%eax
     34c:	78 62                	js     3b0 <openiputtest+0xb0>
     34e:	83 ec 08             	sub    $0x8,%esp
     351:	68 9c 4d 00 00       	push   $0x4d9c
     356:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     35c:	e8 bf 36 00 00       	call   3a20 <printf>
     361:	e8 6c 35 00 00       	call   38d2 <exit>
     366:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     36d:	8d 76 00             	lea    0x0(%esi),%esi
     370:	83 ec 0c             	sub    $0xc,%esp
     373:	6a 01                	push   $0x1
     375:	e8 e8 35 00 00       	call   3962 <sleep>
     37a:	c7 04 24 17 3e 00 00 	movl   $0x3e17,(%esp)
     381:	e8 9c 35 00 00       	call   3922 <unlink>
     386:	83 c4 10             	add    $0x10,%esp
     389:	85 c0                	test   %eax,%eax
     38b:	75 56                	jne    3e3 <openiputtest+0xe3>
     38d:	e8 48 35 00 00       	call   38da <wait>
     392:	83 ec 08             	sub    $0x8,%esp
     395:	68 40 3e 00 00       	push   $0x3e40
     39a:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     3a0:	e8 7b 36 00 00       	call   3a20 <printf>
     3a5:	83 c4 10             	add    $0x10,%esp
     3a8:	c9                   	leave  
     3a9:	c3                   	ret    
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     3b0:	e8 1d 35 00 00       	call   38d2 <exit>
     3b5:	52                   	push   %edx
     3b6:	52                   	push   %edx
     3b7:	68 b9 4c 00 00       	push   $0x4cb9
     3bc:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     3c2:	e8 59 36 00 00       	call   3a20 <printf>
     3c7:	e8 06 35 00 00       	call   38d2 <exit>
     3cc:	51                   	push   %ecx
     3cd:	51                   	push   %ecx
     3ce:	68 1d 3e 00 00       	push   $0x3e1d
     3d3:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     3d9:	e8 42 36 00 00       	call   3a20 <printf>
     3de:	e8 ef 34 00 00       	call   38d2 <exit>
     3e3:	50                   	push   %eax
     3e4:	50                   	push   %eax
     3e5:	68 31 3e 00 00       	push   $0x3e31
     3ea:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     3f0:	e8 2b 36 00 00       	call   3a20 <printf>
     3f5:	e8 d8 34 00 00       	call   38d2 <exit>
     3fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000400 <opentest>:
     400:	55                   	push   %ebp
     401:	89 e5                	mov    %esp,%ebp
     403:	83 ec 10             	sub    $0x10,%esp
     406:	68 52 3e 00 00       	push   $0x3e52
     40b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     411:	e8 0a 36 00 00       	call   3a20 <printf>
     416:	58                   	pop    %eax
     417:	5a                   	pop    %edx
     418:	6a 00                	push   $0x0
     41a:	68 5d 3e 00 00       	push   $0x3e5d
     41f:	e8 ee 34 00 00       	call   3912 <open>
     424:	83 c4 10             	add    $0x10,%esp
     427:	85 c0                	test   %eax,%eax
     429:	78 36                	js     461 <opentest+0x61>
     42b:	83 ec 0c             	sub    $0xc,%esp
     42e:	50                   	push   %eax
     42f:	e8 c6 34 00 00       	call   38fa <close>
     434:	5a                   	pop    %edx
     435:	59                   	pop    %ecx
     436:	6a 00                	push   $0x0
     438:	68 75 3e 00 00       	push   $0x3e75
     43d:	e8 d0 34 00 00       	call   3912 <open>
     442:	83 c4 10             	add    $0x10,%esp
     445:	85 c0                	test   %eax,%eax
     447:	79 2f                	jns    478 <opentest+0x78>
     449:	83 ec 08             	sub    $0x8,%esp
     44c:	68 a0 3e 00 00       	push   $0x3ea0
     451:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     457:	e8 c4 35 00 00       	call   3a20 <printf>
     45c:	83 c4 10             	add    $0x10,%esp
     45f:	c9                   	leave  
     460:	c3                   	ret    
     461:	50                   	push   %eax
     462:	50                   	push   %eax
     463:	68 62 3e 00 00       	push   $0x3e62
     468:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     46e:	e8 ad 35 00 00       	call   3a20 <printf>
     473:	e8 5a 34 00 00       	call   38d2 <exit>
     478:	50                   	push   %eax
     479:	50                   	push   %eax
     47a:	68 82 3e 00 00       	push   $0x3e82
     47f:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     485:	e8 96 35 00 00       	call   3a20 <printf>
     48a:	e8 43 34 00 00       	call   38d2 <exit>
     48f:	90                   	nop

00000490 <writetest>:
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
     495:	83 ec 08             	sub    $0x8,%esp
     498:	68 ae 3e 00 00       	push   $0x3eae
     49d:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     4a3:	e8 78 35 00 00       	call   3a20 <printf>
     4a8:	58                   	pop    %eax
     4a9:	5a                   	pop    %edx
     4aa:	68 02 02 00 00       	push   $0x202
     4af:	68 bf 3e 00 00       	push   $0x3ebf
     4b4:	e8 59 34 00 00       	call   3912 <open>
     4b9:	83 c4 10             	add    $0x10,%esp
     4bc:	85 c0                	test   %eax,%eax
     4be:	0f 88 88 01 00 00    	js     64c <writetest+0x1bc>
     4c4:	83 ec 08             	sub    $0x8,%esp
     4c7:	89 c6                	mov    %eax,%esi
     4c9:	31 db                	xor    %ebx,%ebx
     4cb:	68 c5 3e 00 00       	push   $0x3ec5
     4d0:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     4d6:	e8 45 35 00 00       	call   3a20 <printf>
     4db:	83 c4 10             	add    $0x10,%esp
     4de:	66 90                	xchg   %ax,%ax
     4e0:	83 ec 04             	sub    $0x4,%esp
     4e3:	6a 0a                	push   $0xa
     4e5:	68 fc 3e 00 00       	push   $0x3efc
     4ea:	56                   	push   %esi
     4eb:	e8 02 34 00 00       	call   38f2 <write>
     4f0:	83 c4 10             	add    $0x10,%esp
     4f3:	83 f8 0a             	cmp    $0xa,%eax
     4f6:	0f 85 d9 00 00 00    	jne    5d5 <writetest+0x145>
     4fc:	83 ec 04             	sub    $0x4,%esp
     4ff:	6a 0a                	push   $0xa
     501:	68 07 3f 00 00       	push   $0x3f07
     506:	56                   	push   %esi
     507:	e8 e6 33 00 00       	call   38f2 <write>
     50c:	83 c4 10             	add    $0x10,%esp
     50f:	83 f8 0a             	cmp    $0xa,%eax
     512:	0f 85 d6 00 00 00    	jne    5ee <writetest+0x15e>
     518:	83 c3 01             	add    $0x1,%ebx
     51b:	83 fb 64             	cmp    $0x64,%ebx
     51e:	75 c0                	jne    4e0 <writetest+0x50>
     520:	83 ec 08             	sub    $0x8,%esp
     523:	68 12 3f 00 00       	push   $0x3f12
     528:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     52e:	e8 ed 34 00 00       	call   3a20 <printf>
     533:	89 34 24             	mov    %esi,(%esp)
     536:	e8 bf 33 00 00       	call   38fa <close>
     53b:	5b                   	pop    %ebx
     53c:	5e                   	pop    %esi
     53d:	6a 00                	push   $0x0
     53f:	68 bf 3e 00 00       	push   $0x3ebf
     544:	e8 c9 33 00 00       	call   3912 <open>
     549:	83 c4 10             	add    $0x10,%esp
     54c:	89 c3                	mov    %eax,%ebx
     54e:	85 c0                	test   %eax,%eax
     550:	0f 88 b1 00 00 00    	js     607 <writetest+0x177>
     556:	83 ec 08             	sub    $0x8,%esp
     559:	68 1d 3f 00 00       	push   $0x3f1d
     55e:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     564:	e8 b7 34 00 00       	call   3a20 <printf>
     569:	83 c4 0c             	add    $0xc,%esp
     56c:	68 d0 07 00 00       	push   $0x7d0
     571:	68 00 86 00 00       	push   $0x8600
     576:	53                   	push   %ebx
     577:	e8 6e 33 00 00       	call   38ea <read>
     57c:	83 c4 10             	add    $0x10,%esp
     57f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     584:	0f 85 94 00 00 00    	jne    61e <writetest+0x18e>
     58a:	83 ec 08             	sub    $0x8,%esp
     58d:	68 51 3f 00 00       	push   $0x3f51
     592:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     598:	e8 83 34 00 00       	call   3a20 <printf>
     59d:	89 1c 24             	mov    %ebx,(%esp)
     5a0:	e8 55 33 00 00       	call   38fa <close>
     5a5:	c7 04 24 bf 3e 00 00 	movl   $0x3ebf,(%esp)
     5ac:	e8 71 33 00 00       	call   3922 <unlink>
     5b1:	83 c4 10             	add    $0x10,%esp
     5b4:	85 c0                	test   %eax,%eax
     5b6:	78 7d                	js     635 <writetest+0x1a5>
     5b8:	83 ec 08             	sub    $0x8,%esp
     5bb:	68 79 3f 00 00       	push   $0x3f79
     5c0:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     5c6:	e8 55 34 00 00       	call   3a20 <printf>
     5cb:	83 c4 10             	add    $0x10,%esp
     5ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
     5d1:	5b                   	pop    %ebx
     5d2:	5e                   	pop    %esi
     5d3:	5d                   	pop    %ebp
     5d4:	c3                   	ret    
     5d5:	83 ec 04             	sub    $0x4,%esp
     5d8:	53                   	push   %ebx
     5d9:	68 c0 4d 00 00       	push   $0x4dc0
     5de:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     5e4:	e8 37 34 00 00       	call   3a20 <printf>
     5e9:	e8 e4 32 00 00       	call   38d2 <exit>
     5ee:	83 ec 04             	sub    $0x4,%esp
     5f1:	53                   	push   %ebx
     5f2:	68 e4 4d 00 00       	push   $0x4de4
     5f7:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     5fd:	e8 1e 34 00 00       	call   3a20 <printf>
     602:	e8 cb 32 00 00       	call   38d2 <exit>
     607:	51                   	push   %ecx
     608:	51                   	push   %ecx
     609:	68 36 3f 00 00       	push   $0x3f36
     60e:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     614:	e8 07 34 00 00       	call   3a20 <printf>
     619:	e8 b4 32 00 00       	call   38d2 <exit>
     61e:	52                   	push   %edx
     61f:	52                   	push   %edx
     620:	68 7d 42 00 00       	push   $0x427d
     625:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     62b:	e8 f0 33 00 00       	call   3a20 <printf>
     630:	e8 9d 32 00 00       	call   38d2 <exit>
     635:	50                   	push   %eax
     636:	50                   	push   %eax
     637:	68 64 3f 00 00       	push   $0x3f64
     63c:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     642:	e8 d9 33 00 00       	call   3a20 <printf>
     647:	e8 86 32 00 00       	call   38d2 <exit>
     64c:	50                   	push   %eax
     64d:	50                   	push   %eax
     64e:	68 e0 3e 00 00       	push   $0x3ee0
     653:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     659:	e8 c2 33 00 00       	call   3a20 <printf>
     65e:	e8 6f 32 00 00       	call   38d2 <exit>
     663:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000670 <writetest1>:
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
     675:	83 ec 08             	sub    $0x8,%esp
     678:	68 8d 3f 00 00       	push   $0x3f8d
     67d:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     683:	e8 98 33 00 00       	call   3a20 <printf>
     688:	58                   	pop    %eax
     689:	5a                   	pop    %edx
     68a:	68 02 02 00 00       	push   $0x202
     68f:	68 07 40 00 00       	push   $0x4007
     694:	e8 79 32 00 00       	call   3912 <open>
     699:	83 c4 10             	add    $0x10,%esp
     69c:	85 c0                	test   %eax,%eax
     69e:	0f 88 61 01 00 00    	js     805 <writetest1+0x195>
     6a4:	89 c6                	mov    %eax,%esi
     6a6:	31 db                	xor    %ebx,%ebx
     6a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     6af:	90                   	nop
     6b0:	83 ec 04             	sub    $0x4,%esp
     6b3:	89 1d 00 86 00 00    	mov    %ebx,0x8600
     6b9:	68 00 02 00 00       	push   $0x200
     6be:	68 00 86 00 00       	push   $0x8600
     6c3:	56                   	push   %esi
     6c4:	e8 29 32 00 00       	call   38f2 <write>
     6c9:	83 c4 10             	add    $0x10,%esp
     6cc:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d1:	0f 85 b3 00 00 00    	jne    78a <writetest1+0x11a>
     6d7:	83 c3 01             	add    $0x1,%ebx
     6da:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e0:	75 ce                	jne    6b0 <writetest1+0x40>
     6e2:	83 ec 0c             	sub    $0xc,%esp
     6e5:	56                   	push   %esi
     6e6:	e8 0f 32 00 00       	call   38fa <close>
     6eb:	5b                   	pop    %ebx
     6ec:	5e                   	pop    %esi
     6ed:	6a 00                	push   $0x0
     6ef:	68 07 40 00 00       	push   $0x4007
     6f4:	e8 19 32 00 00       	call   3912 <open>
     6f9:	83 c4 10             	add    $0x10,%esp
     6fc:	89 c3                	mov    %eax,%ebx
     6fe:	85 c0                	test   %eax,%eax
     700:	0f 88 e8 00 00 00    	js     7ee <writetest1+0x17e>
     706:	31 f6                	xor    %esi,%esi
     708:	eb 1d                	jmp    727 <writetest1+0xb7>
     70a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 9f 00 00 00    	jne    7ba <writetest1+0x14a>
     71b:	a1 00 86 00 00       	mov    0x8600,%eax
     720:	39 f0                	cmp    %esi,%eax
     722:	75 7f                	jne    7a3 <writetest1+0x133>
     724:	83 c6 01             	add    $0x1,%esi
     727:	83 ec 04             	sub    $0x4,%esp
     72a:	68 00 02 00 00       	push   $0x200
     72f:	68 00 86 00 00       	push   $0x8600
     734:	53                   	push   %ebx
     735:	e8 b0 31 00 00       	call   38ea <read>
     73a:	83 c4 10             	add    $0x10,%esp
     73d:	85 c0                	test   %eax,%eax
     73f:	75 cf                	jne    710 <writetest1+0xa0>
     741:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
     747:	0f 84 86 00 00 00    	je     7d3 <writetest1+0x163>
     74d:	83 ec 0c             	sub    $0xc,%esp
     750:	53                   	push   %ebx
     751:	e8 a4 31 00 00       	call   38fa <close>
     756:	c7 04 24 07 40 00 00 	movl   $0x4007,(%esp)
     75d:	e8 c0 31 00 00       	call   3922 <unlink>
     762:	83 c4 10             	add    $0x10,%esp
     765:	85 c0                	test   %eax,%eax
     767:	0f 88 af 00 00 00    	js     81c <writetest1+0x1ac>
     76d:	83 ec 08             	sub    $0x8,%esp
     770:	68 2e 40 00 00       	push   $0x402e
     775:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     77b:	e8 a0 32 00 00       	call   3a20 <printf>
     780:	83 c4 10             	add    $0x10,%esp
     783:	8d 65 f8             	lea    -0x8(%ebp),%esp
     786:	5b                   	pop    %ebx
     787:	5e                   	pop    %esi
     788:	5d                   	pop    %ebp
     789:	c3                   	ret    
     78a:	83 ec 04             	sub    $0x4,%esp
     78d:	53                   	push   %ebx
     78e:	68 b7 3f 00 00       	push   $0x3fb7
     793:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     799:	e8 82 32 00 00       	call   3a20 <printf>
     79e:	e8 2f 31 00 00       	call   38d2 <exit>
     7a3:	50                   	push   %eax
     7a4:	56                   	push   %esi
     7a5:	68 08 4e 00 00       	push   $0x4e08
     7aa:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     7b0:	e8 6b 32 00 00       	call   3a20 <printf>
     7b5:	e8 18 31 00 00       	call   38d2 <exit>
     7ba:	83 ec 04             	sub    $0x4,%esp
     7bd:	50                   	push   %eax
     7be:	68 0b 40 00 00       	push   $0x400b
     7c3:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     7c9:	e8 52 32 00 00       	call   3a20 <printf>
     7ce:	e8 ff 30 00 00       	call   38d2 <exit>
     7d3:	52                   	push   %edx
     7d4:	68 8b 00 00 00       	push   $0x8b
     7d9:	68 ee 3f 00 00       	push   $0x3fee
     7de:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     7e4:	e8 37 32 00 00       	call   3a20 <printf>
     7e9:	e8 e4 30 00 00       	call   38d2 <exit>
     7ee:	51                   	push   %ecx
     7ef:	51                   	push   %ecx
     7f0:	68 d5 3f 00 00       	push   $0x3fd5
     7f5:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     7fb:	e8 20 32 00 00       	call   3a20 <printf>
     800:	e8 cd 30 00 00       	call   38d2 <exit>
     805:	50                   	push   %eax
     806:	50                   	push   %eax
     807:	68 9d 3f 00 00       	push   $0x3f9d
     80c:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     812:	e8 09 32 00 00       	call   3a20 <printf>
     817:	e8 b6 30 00 00       	call   38d2 <exit>
     81c:	50                   	push   %eax
     81d:	50                   	push   %eax
     81e:	68 1b 40 00 00       	push   $0x401b
     823:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     829:	e8 f2 31 00 00       	call   3a20 <printf>
     82e:	e8 9f 30 00 00       	call   38d2 <exit>
     833:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     83a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000840 <createtest>:
     840:	55                   	push   %ebp
     841:	89 e5                	mov    %esp,%ebp
     843:	53                   	push   %ebx
     844:	bb 30 00 00 00       	mov    $0x30,%ebx
     849:	83 ec 0c             	sub    $0xc,%esp
     84c:	68 28 4e 00 00       	push   $0x4e28
     851:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     857:	e8 c4 31 00 00       	call   3a20 <printf>
     85c:	c6 05 00 a6 00 00 61 	movb   $0x61,0xa600
     863:	83 c4 10             	add    $0x10,%esp
     866:	c6 05 02 a6 00 00 00 	movb   $0x0,0xa602
     86d:	8d 76 00             	lea    0x0(%esi),%esi
     870:	83 ec 08             	sub    $0x8,%esp
     873:	88 1d 01 a6 00 00    	mov    %bl,0xa601
     879:	83 c3 01             	add    $0x1,%ebx
     87c:	68 02 02 00 00       	push   $0x202
     881:	68 00 a6 00 00       	push   $0xa600
     886:	e8 87 30 00 00       	call   3912 <open>
     88b:	89 04 24             	mov    %eax,(%esp)
     88e:	e8 67 30 00 00       	call   38fa <close>
     893:	83 c4 10             	add    $0x10,%esp
     896:	80 fb 64             	cmp    $0x64,%bl
     899:	75 d5                	jne    870 <createtest+0x30>
     89b:	c6 05 00 a6 00 00 61 	movb   $0x61,0xa600
     8a2:	bb 30 00 00 00       	mov    $0x30,%ebx
     8a7:	c6 05 02 a6 00 00 00 	movb   $0x0,0xa602
     8ae:	66 90                	xchg   %ax,%ax
     8b0:	83 ec 0c             	sub    $0xc,%esp
     8b3:	88 1d 01 a6 00 00    	mov    %bl,0xa601
     8b9:	83 c3 01             	add    $0x1,%ebx
     8bc:	68 00 a6 00 00       	push   $0xa600
     8c1:	e8 5c 30 00 00       	call   3922 <unlink>
     8c6:	83 c4 10             	add    $0x10,%esp
     8c9:	80 fb 64             	cmp    $0x64,%bl
     8cc:	75 e2                	jne    8b0 <createtest+0x70>
     8ce:	83 ec 08             	sub    $0x8,%esp
     8d1:	68 50 4e 00 00       	push   $0x4e50
     8d6:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     8dc:	e8 3f 31 00 00       	call   3a20 <printf>
     8e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     8e4:	83 c4 10             	add    $0x10,%esp
     8e7:	c9                   	leave  
     8e8:	c3                   	ret    
     8e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000008f0 <dirtest>:
     8f0:	55                   	push   %ebp
     8f1:	89 e5                	mov    %esp,%ebp
     8f3:	83 ec 10             	sub    $0x10,%esp
     8f6:	68 3c 40 00 00       	push   $0x403c
     8fb:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     901:	e8 1a 31 00 00       	call   3a20 <printf>
     906:	c7 04 24 48 40 00 00 	movl   $0x4048,(%esp)
     90d:	e8 28 30 00 00       	call   393a <mkdir>
     912:	83 c4 10             	add    $0x10,%esp
     915:	85 c0                	test   %eax,%eax
     917:	78 58                	js     971 <dirtest+0x81>
     919:	83 ec 0c             	sub    $0xc,%esp
     91c:	68 48 40 00 00       	push   $0x4048
     921:	e8 1c 30 00 00       	call   3942 <chdir>
     926:	83 c4 10             	add    $0x10,%esp
     929:	85 c0                	test   %eax,%eax
     92b:	0f 88 85 00 00 00    	js     9b6 <dirtest+0xc6>
     931:	83 ec 0c             	sub    $0xc,%esp
     934:	68 ed 45 00 00       	push   $0x45ed
     939:	e8 04 30 00 00       	call   3942 <chdir>
     93e:	83 c4 10             	add    $0x10,%esp
     941:	85 c0                	test   %eax,%eax
     943:	78 5a                	js     99f <dirtest+0xaf>
     945:	83 ec 0c             	sub    $0xc,%esp
     948:	68 48 40 00 00       	push   $0x4048
     94d:	e8 d0 2f 00 00       	call   3922 <unlink>
     952:	83 c4 10             	add    $0x10,%esp
     955:	85 c0                	test   %eax,%eax
     957:	78 2f                	js     988 <dirtest+0x98>
     959:	83 ec 08             	sub    $0x8,%esp
     95c:	68 85 40 00 00       	push   $0x4085
     961:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     967:	e8 b4 30 00 00       	call   3a20 <printf>
     96c:	83 c4 10             	add    $0x10,%esp
     96f:	c9                   	leave  
     970:	c3                   	ret    
     971:	50                   	push   %eax
     972:	50                   	push   %eax
     973:	68 78 3d 00 00       	push   $0x3d78
     978:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     97e:	e8 9d 30 00 00       	call   3a20 <printf>
     983:	e8 4a 2f 00 00       	call   38d2 <exit>
     988:	50                   	push   %eax
     989:	50                   	push   %eax
     98a:	68 71 40 00 00       	push   $0x4071
     98f:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     995:	e8 86 30 00 00       	call   3a20 <printf>
     99a:	e8 33 2f 00 00       	call   38d2 <exit>
     99f:	52                   	push   %edx
     9a0:	52                   	push   %edx
     9a1:	68 60 40 00 00       	push   $0x4060
     9a6:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     9ac:	e8 6f 30 00 00       	call   3a20 <printf>
     9b1:	e8 1c 2f 00 00       	call   38d2 <exit>
     9b6:	51                   	push   %ecx
     9b7:	51                   	push   %ecx
     9b8:	68 4d 40 00 00       	push   $0x404d
     9bd:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     9c3:	e8 58 30 00 00       	call   3a20 <printf>
     9c8:	e8 05 2f 00 00       	call   38d2 <exit>
     9cd:	8d 76 00             	lea    0x0(%esi),%esi

000009d0 <exectest>:
     9d0:	55                   	push   %ebp
     9d1:	89 e5                	mov    %esp,%ebp
     9d3:	83 ec 10             	sub    $0x10,%esp
     9d6:	68 94 40 00 00       	push   $0x4094
     9db:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     9e1:	e8 3a 30 00 00       	call   3a20 <printf>
     9e6:	5a                   	pop    %edx
     9e7:	59                   	pop    %ecx
     9e8:	68 10 5e 00 00       	push   $0x5e10
     9ed:	68 5d 3e 00 00       	push   $0x3e5d
     9f2:	e8 13 2f 00 00       	call   390a <exec>
     9f7:	83 c4 10             	add    $0x10,%esp
     9fa:	85 c0                	test   %eax,%eax
     9fc:	78 02                	js     a00 <exectest+0x30>
     9fe:	c9                   	leave  
     9ff:	c3                   	ret    
     a00:	50                   	push   %eax
     a01:	50                   	push   %eax
     a02:	68 9f 40 00 00       	push   $0x409f
     a07:	ff 35 0c 5e 00 00    	pushl  0x5e0c
     a0d:	e8 0e 30 00 00       	call   3a20 <printf>
     a12:	e8 bb 2e 00 00       	call   38d2 <exit>
     a17:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a1e:	66 90                	xchg   %ax,%ax

00000a20 <pipe1>:
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a28:	53                   	push   %ebx
     a29:	83 ec 38             	sub    $0x38,%esp
     a2c:	50                   	push   %eax
     a2d:	e8 b0 2e 00 00       	call   38e2 <pipe>
     a32:	83 c4 10             	add    $0x10,%esp
     a35:	85 c0                	test   %eax,%eax
     a37:	0f 85 34 01 00 00    	jne    b71 <pipe1+0x151>
     a3d:	e8 88 2e 00 00       	call   38ca <fork>
     a42:	85 c0                	test   %eax,%eax
     a44:	0f 84 89 00 00 00    	je     ad3 <pipe1+0xb3>
     a4a:	0f 8e 34 01 00 00    	jle    b84 <pipe1+0x164>
     a50:	83 ec 0c             	sub    $0xc,%esp
     a53:	ff 75 e4             	pushl  -0x1c(%ebp)
     a56:	31 db                	xor    %ebx,%ebx
     a58:	be 01 00 00 00       	mov    $0x1,%esi
     a5d:	e8 98 2e 00 00       	call   38fa <close>
     a62:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
     a69:	83 c4 10             	add    $0x10,%esp
     a6c:	83 ec 04             	sub    $0x4,%esp
     a6f:	56                   	push   %esi
     a70:	68 00 86 00 00       	push   $0x8600
     a75:	ff 75 e0             	pushl  -0x20(%ebp)
     a78:	e8 6d 2e 00 00       	call   38ea <read>
     a7d:	83 c4 10             	add    $0x10,%esp
     a80:	89 c7                	mov    %eax,%edi
     a82:	85 c0                	test   %eax,%eax
     a84:	0f 8e a3 00 00 00    	jle    b2d <pipe1+0x10d>
     a8a:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
     a8d:	31 c0                	xor    %eax,%eax
     a8f:	90                   	nop
     a90:	89 da                	mov    %ebx,%edx
     a92:	83 c3 01             	add    $0x1,%ebx
     a95:	38 90 00 86 00 00    	cmp    %dl,0x8600(%eax)
     a9b:	75 1c                	jne    ab9 <pipe1+0x99>
     a9d:	83 c0 01             	add    $0x1,%eax
     aa0:	39 d9                	cmp    %ebx,%ecx
     aa2:	75 ec                	jne    a90 <pipe1+0x70>
     aa4:	01 f6                	add    %esi,%esi
     aa6:	01 7d d4             	add    %edi,-0x2c(%ebp)
     aa9:	b8 00 20 00 00       	mov    $0x2000,%eax
     aae:	81 fe 00 20 00 00    	cmp    $0x2000,%esi
     ab4:	0f 4f f0             	cmovg  %eax,%esi
     ab7:	eb b3                	jmp    a6c <pipe1+0x4c>
     ab9:	83 ec 08             	sub    $0x8,%esp
     abc:	68 ce 40 00 00       	push   $0x40ce
     ac1:	6a 01                	push   $0x1
     ac3:	e8 58 2f 00 00       	call   3a20 <printf>
     ac8:	83 c4 10             	add    $0x10,%esp
     acb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ace:	5b                   	pop    %ebx
     acf:	5e                   	pop    %esi
     ad0:	5f                   	pop    %edi
     ad1:	5d                   	pop    %ebp
     ad2:	c3                   	ret    
     ad3:	83 ec 0c             	sub    $0xc,%esp
     ad6:	ff 75 e0             	pushl  -0x20(%ebp)
     ad9:	31 db                	xor    %ebx,%ebx
     adb:	e8 1a 2e 00 00       	call   38fa <close>
     ae0:	83 c4 10             	add    $0x10,%esp
     ae3:	31 c0                	xor    %eax,%eax
     ae5:	8d 76 00             	lea    0x0(%esi),%esi
     ae8:	8d 14 18             	lea    (%eax,%ebx,1),%edx
     aeb:	83 c0 01             	add    $0x1,%eax
     aee:	88 90 ff 85 00 00    	mov    %dl,0x85ff(%eax)
     af4:	3d 09 04 00 00       	cmp    $0x409,%eax
     af9:	75 ed                	jne    ae8 <pipe1+0xc8>
     afb:	83 ec 04             	sub    $0x4,%esp
     afe:	81 c3 09 04 00 00    	add    $0x409,%ebx
     b04:	68 09 04 00 00       	push   $0x409
     b09:	68 00 86 00 00       	push   $0x8600
     b0e:	ff 75 e4             	pushl  -0x1c(%ebp)
     b11:	e8 dc 2d 00 00       	call   38f2 <write>
     b16:	83 c4 10             	add    $0x10,%esp
     b19:	3d 09 04 00 00       	cmp    $0x409,%eax
     b1e:	75 77                	jne    b97 <pipe1+0x177>
     b20:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b26:	75 bb                	jne    ae3 <pipe1+0xc3>
     b28:	e8 a5 2d 00 00       	call   38d2 <exit>
     b2d:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b34:	75 26                	jne    b5c <pipe1+0x13c>
     b36:	83 ec 0c             	sub    $0xc,%esp
     b39:	ff 75 e0             	pushl  -0x20(%ebp)
     b3c:	e8 b9 2d 00 00       	call   38fa <close>
     b41:	e8 94 2d 00 00       	call   38da <wait>
     b46:	5a                   	pop    %edx
     b47:	59                   	pop    %ecx
     b48:	68 f3 40 00 00       	push   $0x40f3
     b4d:	6a 01                	push   $0x1
     b4f:	e8 cc 2e 00 00       	call   3a20 <printf>
     b54:	83 c4 10             	add    $0x10,%esp
     b57:	e9 6f ff ff ff       	jmp    acb <pipe1+0xab>
     b5c:	53                   	push   %ebx
     b5d:	ff 75 d4             	pushl  -0x2c(%ebp)
     b60:	68 dc 40 00 00       	push   $0x40dc
     b65:	6a 01                	push   $0x1
     b67:	e8 b4 2e 00 00       	call   3a20 <printf>
     b6c:	e8 61 2d 00 00       	call   38d2 <exit>
     b71:	57                   	push   %edi
     b72:	57                   	push   %edi
     b73:	68 b1 40 00 00       	push   $0x40b1
     b78:	6a 01                	push   $0x1
     b7a:	e8 a1 2e 00 00       	call   3a20 <printf>
     b7f:	e8 4e 2d 00 00       	call   38d2 <exit>
     b84:	50                   	push   %eax
     b85:	50                   	push   %eax
     b86:	68 fd 40 00 00       	push   $0x40fd
     b8b:	6a 01                	push   $0x1
     b8d:	e8 8e 2e 00 00       	call   3a20 <printf>
     b92:	e8 3b 2d 00 00       	call   38d2 <exit>
     b97:	56                   	push   %esi
     b98:	56                   	push   %esi
     b99:	68 c0 40 00 00       	push   $0x40c0
     b9e:	6a 01                	push   $0x1
     ba0:	e8 7b 2e 00 00       	call   3a20 <printf>
     ba5:	e8 28 2d 00 00       	call   38d2 <exit>
     baa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000bb0 <preempt>:
     bb0:	55                   	push   %ebp
     bb1:	89 e5                	mov    %esp,%ebp
     bb3:	57                   	push   %edi
     bb4:	56                   	push   %esi
     bb5:	53                   	push   %ebx
     bb6:	83 ec 24             	sub    $0x24,%esp
     bb9:	68 0c 41 00 00       	push   $0x410c
     bbe:	6a 01                	push   $0x1
     bc0:	e8 5b 2e 00 00       	call   3a20 <printf>
     bc5:	e8 00 2d 00 00       	call   38ca <fork>
     bca:	83 c4 10             	add    $0x10,%esp
     bcd:	85 c0                	test   %eax,%eax
     bcf:	75 07                	jne    bd8 <preempt+0x28>
     bd1:	eb fe                	jmp    bd1 <preempt+0x21>
     bd3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     bd7:	90                   	nop
     bd8:	89 c7                	mov    %eax,%edi
     bda:	e8 eb 2c 00 00       	call   38ca <fork>
     bdf:	89 c6                	mov    %eax,%esi
     be1:	85 c0                	test   %eax,%eax
     be3:	75 0b                	jne    bf0 <preempt+0x40>
     be5:	eb fe                	jmp    be5 <preempt+0x35>
     be7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bee:	66 90                	xchg   %ax,%ax
     bf0:	83 ec 0c             	sub    $0xc,%esp
     bf3:	8d 45 e0             	lea    -0x20(%ebp),%eax
     bf6:	50                   	push   %eax
     bf7:	e8 e6 2c 00 00       	call   38e2 <pipe>
     bfc:	e8 c9 2c 00 00       	call   38ca <fork>
     c01:	83 c4 10             	add    $0x10,%esp
     c04:	89 c3                	mov    %eax,%ebx
     c06:	85 c0                	test   %eax,%eax
     c08:	75 3e                	jne    c48 <preempt+0x98>
     c0a:	83 ec 0c             	sub    $0xc,%esp
     c0d:	ff 75 e0             	pushl  -0x20(%ebp)
     c10:	e8 e5 2c 00 00       	call   38fa <close>
     c15:	83 c4 0c             	add    $0xc,%esp
     c18:	6a 01                	push   $0x1
     c1a:	68 d1 46 00 00       	push   $0x46d1
     c1f:	ff 75 e4             	pushl  -0x1c(%ebp)
     c22:	e8 cb 2c 00 00       	call   38f2 <write>
     c27:	83 c4 10             	add    $0x10,%esp
     c2a:	83 f8 01             	cmp    $0x1,%eax
     c2d:	0f 85 a4 00 00 00    	jne    cd7 <preempt+0x127>
     c33:	83 ec 0c             	sub    $0xc,%esp
     c36:	ff 75 e4             	pushl  -0x1c(%ebp)
     c39:	e8 bc 2c 00 00       	call   38fa <close>
     c3e:	83 c4 10             	add    $0x10,%esp
     c41:	eb fe                	jmp    c41 <preempt+0x91>
     c43:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c47:	90                   	nop
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 75 e4             	pushl  -0x1c(%ebp)
     c4e:	e8 a7 2c 00 00       	call   38fa <close>
     c53:	83 c4 0c             	add    $0xc,%esp
     c56:	68 00 20 00 00       	push   $0x2000
     c5b:	68 00 86 00 00       	push   $0x8600
     c60:	ff 75 e0             	pushl  -0x20(%ebp)
     c63:	e8 82 2c 00 00       	call   38ea <read>
     c68:	83 c4 10             	add    $0x10,%esp
     c6b:	83 f8 01             	cmp    $0x1,%eax
     c6e:	75 7e                	jne    cee <preempt+0x13e>
     c70:	83 ec 0c             	sub    $0xc,%esp
     c73:	ff 75 e0             	pushl  -0x20(%ebp)
     c76:	e8 7f 2c 00 00       	call   38fa <close>
     c7b:	58                   	pop    %eax
     c7c:	5a                   	pop    %edx
     c7d:	68 3d 41 00 00       	push   $0x413d
     c82:	6a 01                	push   $0x1
     c84:	e8 97 2d 00 00       	call   3a20 <printf>
     c89:	89 3c 24             	mov    %edi,(%esp)
     c8c:	e8 71 2c 00 00       	call   3902 <kill>
     c91:	89 34 24             	mov    %esi,(%esp)
     c94:	e8 69 2c 00 00       	call   3902 <kill>
     c99:	89 1c 24             	mov    %ebx,(%esp)
     c9c:	e8 61 2c 00 00       	call   3902 <kill>
     ca1:	59                   	pop    %ecx
     ca2:	5b                   	pop    %ebx
     ca3:	68 46 41 00 00       	push   $0x4146
     ca8:	6a 01                	push   $0x1
     caa:	e8 71 2d 00 00       	call   3a20 <printf>
     caf:	e8 26 2c 00 00       	call   38da <wait>
     cb4:	e8 21 2c 00 00       	call   38da <wait>
     cb9:	e8 1c 2c 00 00       	call   38da <wait>
     cbe:	5e                   	pop    %esi
     cbf:	5f                   	pop    %edi
     cc0:	68 4f 41 00 00       	push   $0x414f
     cc5:	6a 01                	push   $0x1
     cc7:	e8 54 2d 00 00       	call   3a20 <printf>
     ccc:	83 c4 10             	add    $0x10,%esp
     ccf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     cd2:	5b                   	pop    %ebx
     cd3:	5e                   	pop    %esi
     cd4:	5f                   	pop    %edi
     cd5:	5d                   	pop    %ebp
     cd6:	c3                   	ret    
     cd7:	83 ec 08             	sub    $0x8,%esp
     cda:	68 16 41 00 00       	push   $0x4116
     cdf:	6a 01                	push   $0x1
     ce1:	e8 3a 2d 00 00       	call   3a20 <printf>
     ce6:	83 c4 10             	add    $0x10,%esp
     ce9:	e9 45 ff ff ff       	jmp    c33 <preempt+0x83>
     cee:	83 ec 08             	sub    $0x8,%esp
     cf1:	68 2a 41 00 00       	push   $0x412a
     cf6:	6a 01                	push   $0x1
     cf8:	e8 23 2d 00 00       	call   3a20 <printf>
     cfd:	83 c4 10             	add    $0x10,%esp
     d00:	eb cd                	jmp    ccf <preempt+0x11f>
     d02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d10 <exitwait>:
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	56                   	push   %esi
     d14:	be 64 00 00 00       	mov    $0x64,%esi
     d19:	53                   	push   %ebx
     d1a:	eb 14                	jmp    d30 <exitwait+0x20>
     d1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d20:	74 68                	je     d8a <exitwait+0x7a>
     d22:	e8 b3 2b 00 00       	call   38da <wait>
     d27:	39 d8                	cmp    %ebx,%eax
     d29:	75 2d                	jne    d58 <exitwait+0x48>
     d2b:	83 ee 01             	sub    $0x1,%esi
     d2e:	74 41                	je     d71 <exitwait+0x61>
     d30:	e8 95 2b 00 00       	call   38ca <fork>
     d35:	89 c3                	mov    %eax,%ebx
     d37:	85 c0                	test   %eax,%eax
     d39:	79 e5                	jns    d20 <exitwait+0x10>
     d3b:	83 ec 08             	sub    $0x8,%esp
     d3e:	68 b9 4c 00 00       	push   $0x4cb9
     d43:	6a 01                	push   $0x1
     d45:	e8 d6 2c 00 00       	call   3a20 <printf>
     d4a:	83 c4 10             	add    $0x10,%esp
     d4d:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d50:	5b                   	pop    %ebx
     d51:	5e                   	pop    %esi
     d52:	5d                   	pop    %ebp
     d53:	c3                   	ret    
     d54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d58:	83 ec 08             	sub    $0x8,%esp
     d5b:	68 5b 41 00 00       	push   $0x415b
     d60:	6a 01                	push   $0x1
     d62:	e8 b9 2c 00 00       	call   3a20 <printf>
     d67:	83 c4 10             	add    $0x10,%esp
     d6a:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d6d:	5b                   	pop    %ebx
     d6e:	5e                   	pop    %esi
     d6f:	5d                   	pop    %ebp
     d70:	c3                   	ret    
     d71:	83 ec 08             	sub    $0x8,%esp
     d74:	68 6b 41 00 00       	push   $0x416b
     d79:	6a 01                	push   $0x1
     d7b:	e8 a0 2c 00 00       	call   3a20 <printf>
     d80:	83 c4 10             	add    $0x10,%esp
     d83:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d86:	5b                   	pop    %ebx
     d87:	5e                   	pop    %esi
     d88:	5d                   	pop    %ebp
     d89:	c3                   	ret    
     d8a:	e8 43 2b 00 00       	call   38d2 <exit>
     d8f:	90                   	nop

00000d90 <mem>:
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	31 f6                	xor    %esi,%esi
     d96:	53                   	push   %ebx
     d97:	83 ec 08             	sub    $0x8,%esp
     d9a:	68 78 41 00 00       	push   $0x4178
     d9f:	6a 01                	push   $0x1
     da1:	e8 7a 2c 00 00       	call   3a20 <printf>
     da6:	e8 a7 2b 00 00       	call   3952 <getpid>
     dab:	89 c3                	mov    %eax,%ebx
     dad:	e8 18 2b 00 00       	call   38ca <fork>
     db2:	83 c4 10             	add    $0x10,%esp
     db5:	85 c0                	test   %eax,%eax
     db7:	74 0b                	je     dc4 <mem+0x34>
     db9:	e9 8a 00 00 00       	jmp    e48 <mem+0xb8>
     dbe:	66 90                	xchg   %ax,%ax
     dc0:	89 30                	mov    %esi,(%eax)
     dc2:	89 c6                	mov    %eax,%esi
     dc4:	83 ec 0c             	sub    $0xc,%esp
     dc7:	68 11 27 00 00       	push   $0x2711
     dcc:	e8 af 2e 00 00       	call   3c80 <malloc>
     dd1:	83 c4 10             	add    $0x10,%esp
     dd4:	85 c0                	test   %eax,%eax
     dd6:	75 e8                	jne    dc0 <mem+0x30>
     dd8:	85 f6                	test   %esi,%esi
     dda:	74 18                	je     df4 <mem+0x64>
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     de0:	89 f0                	mov    %esi,%eax
     de2:	83 ec 0c             	sub    $0xc,%esp
     de5:	8b 36                	mov    (%esi),%esi
     de7:	50                   	push   %eax
     de8:	e8 03 2e 00 00       	call   3bf0 <free>
     ded:	83 c4 10             	add    $0x10,%esp
     df0:	85 f6                	test   %esi,%esi
     df2:	75 ec                	jne    de0 <mem+0x50>
     df4:	83 ec 0c             	sub    $0xc,%esp
     df7:	68 00 50 00 00       	push   $0x5000
     dfc:	e8 7f 2e 00 00       	call   3c80 <malloc>
     e01:	83 c4 10             	add    $0x10,%esp
     e04:	85 c0                	test   %eax,%eax
     e06:	74 20                	je     e28 <mem+0x98>
     e08:	83 ec 0c             	sub    $0xc,%esp
     e0b:	50                   	push   %eax
     e0c:	e8 df 2d 00 00       	call   3bf0 <free>
     e11:	58                   	pop    %eax
     e12:	5a                   	pop    %edx
     e13:	68 9c 41 00 00       	push   $0x419c
     e18:	6a 01                	push   $0x1
     e1a:	e8 01 2c 00 00       	call   3a20 <printf>
     e1f:	e8 ae 2a 00 00       	call   38d2 <exit>
     e24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e28:	83 ec 08             	sub    $0x8,%esp
     e2b:	68 82 41 00 00       	push   $0x4182
     e30:	6a 01                	push   $0x1
     e32:	e8 e9 2b 00 00       	call   3a20 <printf>
     e37:	89 1c 24             	mov    %ebx,(%esp)
     e3a:	e8 c3 2a 00 00       	call   3902 <kill>
     e3f:	e8 8e 2a 00 00       	call   38d2 <exit>
     e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     e48:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e4b:	5b                   	pop    %ebx
     e4c:	5e                   	pop    %esi
     e4d:	5d                   	pop    %ebp
     e4e:	e9 87 2a 00 00       	jmp    38da <wait>
     e53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000e60 <sharedfd>:
     e60:	55                   	push   %ebp
     e61:	89 e5                	mov    %esp,%ebp
     e63:	57                   	push   %edi
     e64:	56                   	push   %esi
     e65:	53                   	push   %ebx
     e66:	83 ec 34             	sub    $0x34,%esp
     e69:	68 a4 41 00 00       	push   $0x41a4
     e6e:	6a 01                	push   $0x1
     e70:	e8 ab 2b 00 00       	call   3a20 <printf>
     e75:	c7 04 24 b3 41 00 00 	movl   $0x41b3,(%esp)
     e7c:	e8 a1 2a 00 00       	call   3922 <unlink>
     e81:	5b                   	pop    %ebx
     e82:	5e                   	pop    %esi
     e83:	68 02 02 00 00       	push   $0x202
     e88:	68 b3 41 00 00       	push   $0x41b3
     e8d:	e8 80 2a 00 00       	call   3912 <open>
     e92:	83 c4 10             	add    $0x10,%esp
     e95:	85 c0                	test   %eax,%eax
     e97:	0f 88 2a 01 00 00    	js     fc7 <sharedfd+0x167>
     e9d:	89 c7                	mov    %eax,%edi
     e9f:	8d 75 de             	lea    -0x22(%ebp),%esi
     ea2:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     ea7:	e8 1e 2a 00 00       	call   38ca <fork>
     eac:	83 f8 01             	cmp    $0x1,%eax
     eaf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     eb2:	19 c0                	sbb    %eax,%eax
     eb4:	83 ec 04             	sub    $0x4,%esp
     eb7:	83 e0 f3             	and    $0xfffffff3,%eax
     eba:	6a 0a                	push   $0xa
     ebc:	83 c0 70             	add    $0x70,%eax
     ebf:	50                   	push   %eax
     ec0:	56                   	push   %esi
     ec1:	e8 6a 28 00 00       	call   3730 <memset>
     ec6:	83 c4 10             	add    $0x10,%esp
     ec9:	eb 0a                	jmp    ed5 <sharedfd+0x75>
     ecb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     ecf:	90                   	nop
     ed0:	83 eb 01             	sub    $0x1,%ebx
     ed3:	74 26                	je     efb <sharedfd+0x9b>
     ed5:	83 ec 04             	sub    $0x4,%esp
     ed8:	6a 0a                	push   $0xa
     eda:	56                   	push   %esi
     edb:	57                   	push   %edi
     edc:	e8 11 2a 00 00       	call   38f2 <write>
     ee1:	83 c4 10             	add    $0x10,%esp
     ee4:	83 f8 0a             	cmp    $0xa,%eax
     ee7:	74 e7                	je     ed0 <sharedfd+0x70>
     ee9:	83 ec 08             	sub    $0x8,%esp
     eec:	68 a4 4e 00 00       	push   $0x4ea4
     ef1:	6a 01                	push   $0x1
     ef3:	e8 28 2b 00 00       	call   3a20 <printf>
     ef8:	83 c4 10             	add    $0x10,%esp
     efb:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     efe:	85 c9                	test   %ecx,%ecx
     f00:	0f 84 f5 00 00 00    	je     ffb <sharedfd+0x19b>
     f06:	e8 cf 29 00 00       	call   38da <wait>
     f0b:	83 ec 0c             	sub    $0xc,%esp
     f0e:	31 db                	xor    %ebx,%ebx
     f10:	57                   	push   %edi
     f11:	8d 7d e8             	lea    -0x18(%ebp),%edi
     f14:	e8 e1 29 00 00       	call   38fa <close>
     f19:	58                   	pop    %eax
     f1a:	5a                   	pop    %edx
     f1b:	6a 00                	push   $0x0
     f1d:	68 b3 41 00 00       	push   $0x41b3
     f22:	e8 eb 29 00 00       	call   3912 <open>
     f27:	83 c4 10             	add    $0x10,%esp
     f2a:	31 d2                	xor    %edx,%edx
     f2c:	89 45 d0             	mov    %eax,-0x30(%ebp)
     f2f:	85 c0                	test   %eax,%eax
     f31:	0f 88 aa 00 00 00    	js     fe1 <sharedfd+0x181>
     f37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     f3e:	66 90                	xchg   %ax,%ax
     f40:	83 ec 04             	sub    $0x4,%esp
     f43:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     f46:	6a 0a                	push   $0xa
     f48:	56                   	push   %esi
     f49:	ff 75 d0             	pushl  -0x30(%ebp)
     f4c:	e8 99 29 00 00       	call   38ea <read>
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	7e 28                	jle    f80 <sharedfd+0x120>
     f58:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f5b:	89 f0                	mov    %esi,%eax
     f5d:	eb 13                	jmp    f72 <sharedfd+0x112>
     f5f:	90                   	nop
     f60:	80 f9 70             	cmp    $0x70,%cl
     f63:	0f 94 c1             	sete   %cl
     f66:	0f b6 c9             	movzbl %cl,%ecx
     f69:	01 cb                	add    %ecx,%ebx
     f6b:	83 c0 01             	add    $0x1,%eax
     f6e:	39 c7                	cmp    %eax,%edi
     f70:	74 ce                	je     f40 <sharedfd+0xe0>
     f72:	0f b6 08             	movzbl (%eax),%ecx
     f75:	80 f9 63             	cmp    $0x63,%cl
     f78:	75 e6                	jne    f60 <sharedfd+0x100>
     f7a:	83 c2 01             	add    $0x1,%edx
     f7d:	eb ec                	jmp    f6b <sharedfd+0x10b>
     f7f:	90                   	nop
     f80:	83 ec 0c             	sub    $0xc,%esp
     f83:	ff 75 d0             	pushl  -0x30(%ebp)
     f86:	e8 6f 29 00 00       	call   38fa <close>
     f8b:	c7 04 24 b3 41 00 00 	movl   $0x41b3,(%esp)
     f92:	e8 8b 29 00 00       	call   3922 <unlink>
     f97:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     f9a:	83 c4 10             	add    $0x10,%esp
     f9d:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
     fa3:	75 5b                	jne    1000 <sharedfd+0x1a0>
     fa5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
     fab:	75 53                	jne    1000 <sharedfd+0x1a0>
     fad:	83 ec 08             	sub    $0x8,%esp
     fb0:	68 bc 41 00 00       	push   $0x41bc
     fb5:	6a 01                	push   $0x1
     fb7:	e8 64 2a 00 00       	call   3a20 <printf>
     fbc:	83 c4 10             	add    $0x10,%esp
     fbf:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fc2:	5b                   	pop    %ebx
     fc3:	5e                   	pop    %esi
     fc4:	5f                   	pop    %edi
     fc5:	5d                   	pop    %ebp
     fc6:	c3                   	ret    
     fc7:	83 ec 08             	sub    $0x8,%esp
     fca:	68 78 4e 00 00       	push   $0x4e78
     fcf:	6a 01                	push   $0x1
     fd1:	e8 4a 2a 00 00       	call   3a20 <printf>
     fd6:	83 c4 10             	add    $0x10,%esp
     fd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fdc:	5b                   	pop    %ebx
     fdd:	5e                   	pop    %esi
     fde:	5f                   	pop    %edi
     fdf:	5d                   	pop    %ebp
     fe0:	c3                   	ret    
     fe1:	83 ec 08             	sub    $0x8,%esp
     fe4:	68 c4 4e 00 00       	push   $0x4ec4
     fe9:	6a 01                	push   $0x1
     feb:	e8 30 2a 00 00       	call   3a20 <printf>
     ff0:	83 c4 10             	add    $0x10,%esp
     ff3:	8d 65 f4             	lea    -0xc(%ebp),%esp
     ff6:	5b                   	pop    %ebx
     ff7:	5e                   	pop    %esi
     ff8:	5f                   	pop    %edi
     ff9:	5d                   	pop    %ebp
     ffa:	c3                   	ret    
     ffb:	e8 d2 28 00 00       	call   38d2 <exit>
    1000:	53                   	push   %ebx
    1001:	52                   	push   %edx
    1002:	68 c9 41 00 00       	push   $0x41c9
    1007:	6a 01                	push   $0x1
    1009:	e8 12 2a 00 00       	call   3a20 <printf>
    100e:	e8 bf 28 00 00       	call   38d2 <exit>
    1013:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001020 <fourfiles>:
    1020:	55                   	push   %ebp
    1021:	89 e5                	mov    %esp,%ebp
    1023:	57                   	push   %edi
    1024:	56                   	push   %esi
    1025:	be de 41 00 00       	mov    $0x41de,%esi
    102a:	53                   	push   %ebx
    102b:	31 db                	xor    %ebx,%ebx
    102d:	83 ec 34             	sub    $0x34,%esp
    1030:	c7 45 d8 de 41 00 00 	movl   $0x41de,-0x28(%ebp)
    1037:	68 e4 41 00 00       	push   $0x41e4
    103c:	6a 01                	push   $0x1
    103e:	c7 45 dc 27 43 00 00 	movl   $0x4327,-0x24(%ebp)
    1045:	c7 45 e0 2b 43 00 00 	movl   $0x432b,-0x20(%ebp)
    104c:	c7 45 e4 e1 41 00 00 	movl   $0x41e1,-0x1c(%ebp)
    1053:	e8 c8 29 00 00       	call   3a20 <printf>
    1058:	83 c4 10             	add    $0x10,%esp
    105b:	83 ec 0c             	sub    $0xc,%esp
    105e:	56                   	push   %esi
    105f:	e8 be 28 00 00       	call   3922 <unlink>
    1064:	e8 61 28 00 00       	call   38ca <fork>
    1069:	83 c4 10             	add    $0x10,%esp
    106c:	85 c0                	test   %eax,%eax
    106e:	0f 88 64 01 00 00    	js     11d8 <fourfiles+0x1b8>
    1074:	0f 84 e9 00 00 00    	je     1163 <fourfiles+0x143>
    107a:	83 c3 01             	add    $0x1,%ebx
    107d:	83 fb 04             	cmp    $0x4,%ebx
    1080:	74 06                	je     1088 <fourfiles+0x68>
    1082:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1086:	eb d3                	jmp    105b <fourfiles+0x3b>
    1088:	e8 4d 28 00 00       	call   38da <wait>
    108d:	31 f6                	xor    %esi,%esi
    108f:	e8 46 28 00 00       	call   38da <wait>
    1094:	e8 41 28 00 00       	call   38da <wait>
    1099:	e8 3c 28 00 00       	call   38da <wait>
    109e:	8b 44 b5 d8          	mov    -0x28(%ebp,%esi,4),%eax
    10a2:	83 ec 08             	sub    $0x8,%esp
    10a5:	31 db                	xor    %ebx,%ebx
    10a7:	6a 00                	push   $0x0
    10a9:	50                   	push   %eax
    10aa:	89 45 d0             	mov    %eax,-0x30(%ebp)
    10ad:	e8 60 28 00 00       	call   3912 <open>
    10b2:	83 c4 10             	add    $0x10,%esp
    10b5:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10bf:	90                   	nop
    10c0:	83 ec 04             	sub    $0x4,%esp
    10c3:	68 00 20 00 00       	push   $0x2000
    10c8:	68 00 86 00 00       	push   $0x8600
    10cd:	ff 75 d4             	pushl  -0x2c(%ebp)
    10d0:	e8 15 28 00 00       	call   38ea <read>
    10d5:	83 c4 10             	add    $0x10,%esp
    10d8:	85 c0                	test   %eax,%eax
    10da:	7e 22                	jle    10fe <fourfiles+0xde>
    10dc:	31 d2                	xor    %edx,%edx
    10de:	66 90                	xchg   %ax,%ax
    10e0:	83 fe 01             	cmp    $0x1,%esi
    10e3:	0f be ba 00 86 00 00 	movsbl 0x8600(%edx),%edi
    10ea:	19 c9                	sbb    %ecx,%ecx
    10ec:	83 c1 31             	add    $0x31,%ecx
    10ef:	39 cf                	cmp    %ecx,%edi
    10f1:	75 5c                	jne    114f <fourfiles+0x12f>
    10f3:	83 c2 01             	add    $0x1,%edx
    10f6:	39 d0                	cmp    %edx,%eax
    10f8:	75 e6                	jne    10e0 <fourfiles+0xc0>
    10fa:	01 c3                	add    %eax,%ebx
    10fc:	eb c2                	jmp    10c0 <fourfiles+0xa0>
    10fe:	83 ec 0c             	sub    $0xc,%esp
    1101:	ff 75 d4             	pushl  -0x2c(%ebp)
    1104:	e8 f1 27 00 00       	call   38fa <close>
    1109:	83 c4 10             	add    $0x10,%esp
    110c:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    1112:	0f 85 d4 00 00 00    	jne    11ec <fourfiles+0x1cc>
    1118:	83 ec 0c             	sub    $0xc,%esp
    111b:	ff 75 d0             	pushl  -0x30(%ebp)
    111e:	e8 ff 27 00 00       	call   3922 <unlink>
    1123:	83 c4 10             	add    $0x10,%esp
    1126:	83 fe 01             	cmp    $0x1,%esi
    1129:	75 1a                	jne    1145 <fourfiles+0x125>
    112b:	83 ec 08             	sub    $0x8,%esp
    112e:	68 22 42 00 00       	push   $0x4222
    1133:	6a 01                	push   $0x1
    1135:	e8 e6 28 00 00       	call   3a20 <printf>
    113a:	83 c4 10             	add    $0x10,%esp
    113d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1140:	5b                   	pop    %ebx
    1141:	5e                   	pop    %esi
    1142:	5f                   	pop    %edi
    1143:	5d                   	pop    %ebp
    1144:	c3                   	ret    
    1145:	be 01 00 00 00       	mov    $0x1,%esi
    114a:	e9 4f ff ff ff       	jmp    109e <fourfiles+0x7e>
    114f:	83 ec 08             	sub    $0x8,%esp
    1152:	68 05 42 00 00       	push   $0x4205
    1157:	6a 01                	push   $0x1
    1159:	e8 c2 28 00 00       	call   3a20 <printf>
    115e:	e8 6f 27 00 00       	call   38d2 <exit>
    1163:	83 ec 08             	sub    $0x8,%esp
    1166:	68 02 02 00 00       	push   $0x202
    116b:	56                   	push   %esi
    116c:	e8 a1 27 00 00       	call   3912 <open>
    1171:	83 c4 10             	add    $0x10,%esp
    1174:	89 c6                	mov    %eax,%esi
    1176:	85 c0                	test   %eax,%eax
    1178:	78 45                	js     11bf <fourfiles+0x19f>
    117a:	83 ec 04             	sub    $0x4,%esp
    117d:	83 c3 30             	add    $0x30,%ebx
    1180:	68 00 02 00 00       	push   $0x200
    1185:	53                   	push   %ebx
    1186:	bb 0c 00 00 00       	mov    $0xc,%ebx
    118b:	68 00 86 00 00       	push   $0x8600
    1190:	e8 9b 25 00 00       	call   3730 <memset>
    1195:	83 c4 10             	add    $0x10,%esp
    1198:	83 ec 04             	sub    $0x4,%esp
    119b:	68 f4 01 00 00       	push   $0x1f4
    11a0:	68 00 86 00 00       	push   $0x8600
    11a5:	56                   	push   %esi
    11a6:	e8 47 27 00 00       	call   38f2 <write>
    11ab:	83 c4 10             	add    $0x10,%esp
    11ae:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    11b3:	75 4a                	jne    11ff <fourfiles+0x1df>
    11b5:	83 eb 01             	sub    $0x1,%ebx
    11b8:	75 de                	jne    1198 <fourfiles+0x178>
    11ba:	e8 13 27 00 00       	call   38d2 <exit>
    11bf:	51                   	push   %ecx
    11c0:	51                   	push   %ecx
    11c1:	68 7f 44 00 00       	push   $0x447f
    11c6:	6a 01                	push   $0x1
    11c8:	e8 53 28 00 00       	call   3a20 <printf>
    11cd:	e8 00 27 00 00       	call   38d2 <exit>
    11d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11d8:	83 ec 08             	sub    $0x8,%esp
    11db:	68 b9 4c 00 00       	push   $0x4cb9
    11e0:	6a 01                	push   $0x1
    11e2:	e8 39 28 00 00       	call   3a20 <printf>
    11e7:	e8 e6 26 00 00       	call   38d2 <exit>
    11ec:	50                   	push   %eax
    11ed:	53                   	push   %ebx
    11ee:	68 11 42 00 00       	push   $0x4211
    11f3:	6a 01                	push   $0x1
    11f5:	e8 26 28 00 00       	call   3a20 <printf>
    11fa:	e8 d3 26 00 00       	call   38d2 <exit>
    11ff:	52                   	push   %edx
    1200:	50                   	push   %eax
    1201:	68 f4 41 00 00       	push   $0x41f4
    1206:	6a 01                	push   $0x1
    1208:	e8 13 28 00 00       	call   3a20 <printf>
    120d:	e8 c0 26 00 00       	call   38d2 <exit>
    1212:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001220 <createdelete>:
    1220:	55                   	push   %ebp
    1221:	89 e5                	mov    %esp,%ebp
    1223:	57                   	push   %edi
    1224:	56                   	push   %esi
    1225:	53                   	push   %ebx
    1226:	31 db                	xor    %ebx,%ebx
    1228:	83 ec 44             	sub    $0x44,%esp
    122b:	68 30 42 00 00       	push   $0x4230
    1230:	6a 01                	push   $0x1
    1232:	e8 e9 27 00 00       	call   3a20 <printf>
    1237:	83 c4 10             	add    $0x10,%esp
    123a:	e8 8b 26 00 00       	call   38ca <fork>
    123f:	85 c0                	test   %eax,%eax
    1241:	0f 88 d2 01 00 00    	js     1419 <createdelete+0x1f9>
    1247:	0f 84 1b 01 00 00    	je     1368 <createdelete+0x148>
    124d:	83 c3 01             	add    $0x1,%ebx
    1250:	83 fb 04             	cmp    $0x4,%ebx
    1253:	75 e5                	jne    123a <createdelete+0x1a>
    1255:	e8 80 26 00 00       	call   38da <wait>
    125a:	8d 7d c8             	lea    -0x38(%ebp),%edi
    125d:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1262:	e8 73 26 00 00       	call   38da <wait>
    1267:	e8 6e 26 00 00       	call   38da <wait>
    126c:	e8 69 26 00 00       	call   38da <wait>
    1271:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    1275:	89 7d c0             	mov    %edi,-0x40(%ebp)
    1278:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    127f:	90                   	nop
    1280:	8d 46 31             	lea    0x31(%esi),%eax
    1283:	89 f7                	mov    %esi,%edi
    1285:	83 c6 01             	add    $0x1,%esi
    1288:	83 fe 09             	cmp    $0x9,%esi
    128b:	88 45 c7             	mov    %al,-0x39(%ebp)
    128e:	0f 9f c3             	setg   %bl
    1291:	85 f6                	test   %esi,%esi
    1293:	0f 94 c0             	sete   %al
    1296:	09 c3                	or     %eax,%ebx
    1298:	88 5d c6             	mov    %bl,-0x3a(%ebp)
    129b:	bb 70 00 00 00       	mov    $0x70,%ebx
    12a0:	83 ec 08             	sub    $0x8,%esp
    12a3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    12a7:	88 5d c8             	mov    %bl,-0x38(%ebp)
    12aa:	6a 00                	push   $0x0
    12ac:	ff 75 c0             	pushl  -0x40(%ebp)
    12af:	88 45 c9             	mov    %al,-0x37(%ebp)
    12b2:	e8 5b 26 00 00       	call   3912 <open>
    12b7:	83 c4 10             	add    $0x10,%esp
    12ba:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    12be:	0f 84 8c 00 00 00    	je     1350 <createdelete+0x130>
    12c4:	85 c0                	test   %eax,%eax
    12c6:	0f 88 21 01 00 00    	js     13ed <createdelete+0x1cd>
    12cc:	83 ff 08             	cmp    $0x8,%edi
    12cf:	0f 86 60 01 00 00    	jbe    1435 <createdelete+0x215>
    12d5:	83 ec 0c             	sub    $0xc,%esp
    12d8:	50                   	push   %eax
    12d9:	e8 1c 26 00 00       	call   38fa <close>
    12de:	83 c4 10             	add    $0x10,%esp
    12e1:	83 c3 01             	add    $0x1,%ebx
    12e4:	80 fb 74             	cmp    $0x74,%bl
    12e7:	75 b7                	jne    12a0 <createdelete+0x80>
    12e9:	83 fe 13             	cmp    $0x13,%esi
    12ec:	75 92                	jne    1280 <createdelete+0x60>
    12ee:	8b 7d c0             	mov    -0x40(%ebp),%edi
    12f1:	be 70 00 00 00       	mov    $0x70,%esi
    12f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12fd:	8d 76 00             	lea    0x0(%esi),%esi
    1300:	8d 46 c0             	lea    -0x40(%esi),%eax
    1303:	bb 04 00 00 00       	mov    $0x4,%ebx
    1308:	88 45 c7             	mov    %al,-0x39(%ebp)
    130b:	83 ec 0c             	sub    $0xc,%esp
    130e:	89 f0                	mov    %esi,%eax
    1310:	57                   	push   %edi
    1311:	88 45 c8             	mov    %al,-0x38(%ebp)
    1314:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    1318:	88 45 c9             	mov    %al,-0x37(%ebp)
    131b:	e8 02 26 00 00       	call   3922 <unlink>
    1320:	83 c4 10             	add    $0x10,%esp
    1323:	83 eb 01             	sub    $0x1,%ebx
    1326:	75 e3                	jne    130b <createdelete+0xeb>
    1328:	83 c6 01             	add    $0x1,%esi
    132b:	89 f0                	mov    %esi,%eax
    132d:	3c 84                	cmp    $0x84,%al
    132f:	75 cf                	jne    1300 <createdelete+0xe0>
    1331:	83 ec 08             	sub    $0x8,%esp
    1334:	68 43 42 00 00       	push   $0x4243
    1339:	6a 01                	push   $0x1
    133b:	e8 e0 26 00 00       	call   3a20 <printf>
    1340:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1343:	5b                   	pop    %ebx
    1344:	5e                   	pop    %esi
    1345:	5f                   	pop    %edi
    1346:	5d                   	pop    %ebp
    1347:	c3                   	ret    
    1348:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop
    1350:	83 ff 08             	cmp    $0x8,%edi
    1353:	0f 86 d4 00 00 00    	jbe    142d <createdelete+0x20d>
    1359:	85 c0                	test   %eax,%eax
    135b:	78 84                	js     12e1 <createdelete+0xc1>
    135d:	e9 73 ff ff ff       	jmp    12d5 <createdelete+0xb5>
    1362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1368:	83 c3 70             	add    $0x70,%ebx
    136b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    136f:	8d 7d c8             	lea    -0x38(%ebp),%edi
    1372:	88 5d c8             	mov    %bl,-0x38(%ebp)
    1375:	31 db                	xor    %ebx,%ebx
    1377:	eb 0f                	jmp    1388 <createdelete+0x168>
    1379:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1380:	83 fb 13             	cmp    $0x13,%ebx
    1383:	74 63                	je     13e8 <createdelete+0x1c8>
    1385:	83 c3 01             	add    $0x1,%ebx
    1388:	83 ec 08             	sub    $0x8,%esp
    138b:	8d 43 30             	lea    0x30(%ebx),%eax
    138e:	68 02 02 00 00       	push   $0x202
    1393:	57                   	push   %edi
    1394:	88 45 c9             	mov    %al,-0x37(%ebp)
    1397:	e8 76 25 00 00       	call   3912 <open>
    139c:	83 c4 10             	add    $0x10,%esp
    139f:	85 c0                	test   %eax,%eax
    13a1:	78 62                	js     1405 <createdelete+0x1e5>
    13a3:	83 ec 0c             	sub    $0xc,%esp
    13a6:	50                   	push   %eax
    13a7:	e8 4e 25 00 00       	call   38fa <close>
    13ac:	83 c4 10             	add    $0x10,%esp
    13af:	85 db                	test   %ebx,%ebx
    13b1:	74 d2                	je     1385 <createdelete+0x165>
    13b3:	f6 c3 01             	test   $0x1,%bl
    13b6:	75 c8                	jne    1380 <createdelete+0x160>
    13b8:	83 ec 0c             	sub    $0xc,%esp
    13bb:	89 d8                	mov    %ebx,%eax
    13bd:	57                   	push   %edi
    13be:	d1 f8                	sar    %eax
    13c0:	83 c0 30             	add    $0x30,%eax
    13c3:	88 45 c9             	mov    %al,-0x37(%ebp)
    13c6:	e8 57 25 00 00       	call   3922 <unlink>
    13cb:	83 c4 10             	add    $0x10,%esp
    13ce:	85 c0                	test   %eax,%eax
    13d0:	79 ae                	jns    1380 <createdelete+0x160>
    13d2:	52                   	push   %edx
    13d3:	52                   	push   %edx
    13d4:	68 31 3e 00 00       	push   $0x3e31
    13d9:	6a 01                	push   $0x1
    13db:	e8 40 26 00 00       	call   3a20 <printf>
    13e0:	e8 ed 24 00 00       	call   38d2 <exit>
    13e5:	8d 76 00             	lea    0x0(%esi),%esi
    13e8:	e8 e5 24 00 00       	call   38d2 <exit>
    13ed:	8b 7d c0             	mov    -0x40(%ebp),%edi
    13f0:	83 ec 04             	sub    $0x4,%esp
    13f3:	57                   	push   %edi
    13f4:	68 f0 4e 00 00       	push   $0x4ef0
    13f9:	6a 01                	push   $0x1
    13fb:	e8 20 26 00 00       	call   3a20 <printf>
    1400:	e8 cd 24 00 00       	call   38d2 <exit>
    1405:	83 ec 08             	sub    $0x8,%esp
    1408:	68 7f 44 00 00       	push   $0x447f
    140d:	6a 01                	push   $0x1
    140f:	e8 0c 26 00 00       	call   3a20 <printf>
    1414:	e8 b9 24 00 00       	call   38d2 <exit>
    1419:	83 ec 08             	sub    $0x8,%esp
    141c:	68 b9 4c 00 00       	push   $0x4cb9
    1421:	6a 01                	push   $0x1
    1423:	e8 f8 25 00 00       	call   3a20 <printf>
    1428:	e8 a5 24 00 00       	call   38d2 <exit>
    142d:	85 c0                	test   %eax,%eax
    142f:	0f 88 ac fe ff ff    	js     12e1 <createdelete+0xc1>
    1435:	8b 7d c0             	mov    -0x40(%ebp),%edi
    1438:	50                   	push   %eax
    1439:	57                   	push   %edi
    143a:	68 14 4f 00 00       	push   $0x4f14
    143f:	6a 01                	push   $0x1
    1441:	e8 da 25 00 00       	call   3a20 <printf>
    1446:	e8 87 24 00 00       	call   38d2 <exit>
    144b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    144f:	90                   	nop

00001450 <unlinkread>:
    1450:	55                   	push   %ebp
    1451:	89 e5                	mov    %esp,%ebp
    1453:	56                   	push   %esi
    1454:	53                   	push   %ebx
    1455:	83 ec 08             	sub    $0x8,%esp
    1458:	68 54 42 00 00       	push   $0x4254
    145d:	6a 01                	push   $0x1
    145f:	e8 bc 25 00 00       	call   3a20 <printf>
    1464:	5b                   	pop    %ebx
    1465:	5e                   	pop    %esi
    1466:	68 02 02 00 00       	push   $0x202
    146b:	68 65 42 00 00       	push   $0x4265
    1470:	e8 9d 24 00 00       	call   3912 <open>
    1475:	83 c4 10             	add    $0x10,%esp
    1478:	85 c0                	test   %eax,%eax
    147a:	0f 88 e6 00 00 00    	js     1566 <unlinkread+0x116>
    1480:	83 ec 04             	sub    $0x4,%esp
    1483:	89 c3                	mov    %eax,%ebx
    1485:	6a 05                	push   $0x5
    1487:	68 8a 42 00 00       	push   $0x428a
    148c:	50                   	push   %eax
    148d:	e8 60 24 00 00       	call   38f2 <write>
    1492:	89 1c 24             	mov    %ebx,(%esp)
    1495:	e8 60 24 00 00       	call   38fa <close>
    149a:	58                   	pop    %eax
    149b:	5a                   	pop    %edx
    149c:	6a 02                	push   $0x2
    149e:	68 65 42 00 00       	push   $0x4265
    14a3:	e8 6a 24 00 00       	call   3912 <open>
    14a8:	83 c4 10             	add    $0x10,%esp
    14ab:	89 c3                	mov    %eax,%ebx
    14ad:	85 c0                	test   %eax,%eax
    14af:	0f 88 10 01 00 00    	js     15c5 <unlinkread+0x175>
    14b5:	83 ec 0c             	sub    $0xc,%esp
    14b8:	68 65 42 00 00       	push   $0x4265
    14bd:	e8 60 24 00 00       	call   3922 <unlink>
    14c2:	83 c4 10             	add    $0x10,%esp
    14c5:	85 c0                	test   %eax,%eax
    14c7:	0f 85 e5 00 00 00    	jne    15b2 <unlinkread+0x162>
    14cd:	83 ec 08             	sub    $0x8,%esp
    14d0:	68 02 02 00 00       	push   $0x202
    14d5:	68 65 42 00 00       	push   $0x4265
    14da:	e8 33 24 00 00       	call   3912 <open>
    14df:	83 c4 0c             	add    $0xc,%esp
    14e2:	6a 03                	push   $0x3
    14e4:	89 c6                	mov    %eax,%esi
    14e6:	68 c2 42 00 00       	push   $0x42c2
    14eb:	50                   	push   %eax
    14ec:	e8 01 24 00 00       	call   38f2 <write>
    14f1:	89 34 24             	mov    %esi,(%esp)
    14f4:	e8 01 24 00 00       	call   38fa <close>
    14f9:	83 c4 0c             	add    $0xc,%esp
    14fc:	68 00 20 00 00       	push   $0x2000
    1501:	68 00 86 00 00       	push   $0x8600
    1506:	53                   	push   %ebx
    1507:	e8 de 23 00 00       	call   38ea <read>
    150c:	83 c4 10             	add    $0x10,%esp
    150f:	83 f8 05             	cmp    $0x5,%eax
    1512:	0f 85 87 00 00 00    	jne    159f <unlinkread+0x14f>
    1518:	80 3d 00 86 00 00 68 	cmpb   $0x68,0x8600
    151f:	75 6b                	jne    158c <unlinkread+0x13c>
    1521:	83 ec 04             	sub    $0x4,%esp
    1524:	6a 0a                	push   $0xa
    1526:	68 00 86 00 00       	push   $0x8600
    152b:	53                   	push   %ebx
    152c:	e8 c1 23 00 00       	call   38f2 <write>
    1531:	83 c4 10             	add    $0x10,%esp
    1534:	83 f8 0a             	cmp    $0xa,%eax
    1537:	75 40                	jne    1579 <unlinkread+0x129>
    1539:	83 ec 0c             	sub    $0xc,%esp
    153c:	53                   	push   %ebx
    153d:	e8 b8 23 00 00       	call   38fa <close>
    1542:	c7 04 24 65 42 00 00 	movl   $0x4265,(%esp)
    1549:	e8 d4 23 00 00       	call   3922 <unlink>
    154e:	58                   	pop    %eax
    154f:	5a                   	pop    %edx
    1550:	68 0d 43 00 00       	push   $0x430d
    1555:	6a 01                	push   $0x1
    1557:	e8 c4 24 00 00       	call   3a20 <printf>
    155c:	83 c4 10             	add    $0x10,%esp
    155f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1562:	5b                   	pop    %ebx
    1563:	5e                   	pop    %esi
    1564:	5d                   	pop    %ebp
    1565:	c3                   	ret    
    1566:	51                   	push   %ecx
    1567:	51                   	push   %ecx
    1568:	68 70 42 00 00       	push   $0x4270
    156d:	6a 01                	push   $0x1
    156f:	e8 ac 24 00 00       	call   3a20 <printf>
    1574:	e8 59 23 00 00       	call   38d2 <exit>
    1579:	51                   	push   %ecx
    157a:	51                   	push   %ecx
    157b:	68 f4 42 00 00       	push   $0x42f4
    1580:	6a 01                	push   $0x1
    1582:	e8 99 24 00 00       	call   3a20 <printf>
    1587:	e8 46 23 00 00       	call   38d2 <exit>
    158c:	53                   	push   %ebx
    158d:	53                   	push   %ebx
    158e:	68 dd 42 00 00       	push   $0x42dd
    1593:	6a 01                	push   $0x1
    1595:	e8 86 24 00 00       	call   3a20 <printf>
    159a:	e8 33 23 00 00       	call   38d2 <exit>
    159f:	56                   	push   %esi
    15a0:	56                   	push   %esi
    15a1:	68 c6 42 00 00       	push   $0x42c6
    15a6:	6a 01                	push   $0x1
    15a8:	e8 73 24 00 00       	call   3a20 <printf>
    15ad:	e8 20 23 00 00       	call   38d2 <exit>
    15b2:	50                   	push   %eax
    15b3:	50                   	push   %eax
    15b4:	68 a8 42 00 00       	push   $0x42a8
    15b9:	6a 01                	push   $0x1
    15bb:	e8 60 24 00 00       	call   3a20 <printf>
    15c0:	e8 0d 23 00 00       	call   38d2 <exit>
    15c5:	50                   	push   %eax
    15c6:	50                   	push   %eax
    15c7:	68 90 42 00 00       	push   $0x4290
    15cc:	6a 01                	push   $0x1
    15ce:	e8 4d 24 00 00       	call   3a20 <printf>
    15d3:	e8 fa 22 00 00       	call   38d2 <exit>
    15d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15df:	90                   	nop

000015e0 <linktest>:
    15e0:	55                   	push   %ebp
    15e1:	89 e5                	mov    %esp,%ebp
    15e3:	53                   	push   %ebx
    15e4:	83 ec 0c             	sub    $0xc,%esp
    15e7:	68 1c 43 00 00       	push   $0x431c
    15ec:	6a 01                	push   $0x1
    15ee:	e8 2d 24 00 00       	call   3a20 <printf>
    15f3:	c7 04 24 26 43 00 00 	movl   $0x4326,(%esp)
    15fa:	e8 23 23 00 00       	call   3922 <unlink>
    15ff:	c7 04 24 2a 43 00 00 	movl   $0x432a,(%esp)
    1606:	e8 17 23 00 00       	call   3922 <unlink>
    160b:	58                   	pop    %eax
    160c:	5a                   	pop    %edx
    160d:	68 02 02 00 00       	push   $0x202
    1612:	68 26 43 00 00       	push   $0x4326
    1617:	e8 f6 22 00 00       	call   3912 <open>
    161c:	83 c4 10             	add    $0x10,%esp
    161f:	85 c0                	test   %eax,%eax
    1621:	0f 88 1e 01 00 00    	js     1745 <linktest+0x165>
    1627:	83 ec 04             	sub    $0x4,%esp
    162a:	89 c3                	mov    %eax,%ebx
    162c:	6a 05                	push   $0x5
    162e:	68 8a 42 00 00       	push   $0x428a
    1633:	50                   	push   %eax
    1634:	e8 b9 22 00 00       	call   38f2 <write>
    1639:	83 c4 10             	add    $0x10,%esp
    163c:	83 f8 05             	cmp    $0x5,%eax
    163f:	0f 85 98 01 00 00    	jne    17dd <linktest+0x1fd>
    1645:	83 ec 0c             	sub    $0xc,%esp
    1648:	53                   	push   %ebx
    1649:	e8 ac 22 00 00       	call   38fa <close>
    164e:	5b                   	pop    %ebx
    164f:	58                   	pop    %eax
    1650:	68 2a 43 00 00       	push   $0x432a
    1655:	68 26 43 00 00       	push   $0x4326
    165a:	e8 d3 22 00 00       	call   3932 <link>
    165f:	83 c4 10             	add    $0x10,%esp
    1662:	85 c0                	test   %eax,%eax
    1664:	0f 88 60 01 00 00    	js     17ca <linktest+0x1ea>
    166a:	83 ec 0c             	sub    $0xc,%esp
    166d:	68 26 43 00 00       	push   $0x4326
    1672:	e8 ab 22 00 00       	call   3922 <unlink>
    1677:	58                   	pop    %eax
    1678:	5a                   	pop    %edx
    1679:	6a 00                	push   $0x0
    167b:	68 26 43 00 00       	push   $0x4326
    1680:	e8 8d 22 00 00       	call   3912 <open>
    1685:	83 c4 10             	add    $0x10,%esp
    1688:	85 c0                	test   %eax,%eax
    168a:	0f 89 27 01 00 00    	jns    17b7 <linktest+0x1d7>
    1690:	83 ec 08             	sub    $0x8,%esp
    1693:	6a 00                	push   $0x0
    1695:	68 2a 43 00 00       	push   $0x432a
    169a:	e8 73 22 00 00       	call   3912 <open>
    169f:	83 c4 10             	add    $0x10,%esp
    16a2:	89 c3                	mov    %eax,%ebx
    16a4:	85 c0                	test   %eax,%eax
    16a6:	0f 88 f8 00 00 00    	js     17a4 <linktest+0x1c4>
    16ac:	83 ec 04             	sub    $0x4,%esp
    16af:	68 00 20 00 00       	push   $0x2000
    16b4:	68 00 86 00 00       	push   $0x8600
    16b9:	50                   	push   %eax
    16ba:	e8 2b 22 00 00       	call   38ea <read>
    16bf:	83 c4 10             	add    $0x10,%esp
    16c2:	83 f8 05             	cmp    $0x5,%eax
    16c5:	0f 85 c6 00 00 00    	jne    1791 <linktest+0x1b1>
    16cb:	83 ec 0c             	sub    $0xc,%esp
    16ce:	53                   	push   %ebx
    16cf:	e8 26 22 00 00       	call   38fa <close>
    16d4:	58                   	pop    %eax
    16d5:	5a                   	pop    %edx
    16d6:	68 2a 43 00 00       	push   $0x432a
    16db:	68 2a 43 00 00       	push   $0x432a
    16e0:	e8 4d 22 00 00       	call   3932 <link>
    16e5:	83 c4 10             	add    $0x10,%esp
    16e8:	85 c0                	test   %eax,%eax
    16ea:	0f 89 8e 00 00 00    	jns    177e <linktest+0x19e>
    16f0:	83 ec 0c             	sub    $0xc,%esp
    16f3:	68 2a 43 00 00       	push   $0x432a
    16f8:	e8 25 22 00 00       	call   3922 <unlink>
    16fd:	59                   	pop    %ecx
    16fe:	5b                   	pop    %ebx
    16ff:	68 26 43 00 00       	push   $0x4326
    1704:	68 2a 43 00 00       	push   $0x432a
    1709:	e8 24 22 00 00       	call   3932 <link>
    170e:	83 c4 10             	add    $0x10,%esp
    1711:	85 c0                	test   %eax,%eax
    1713:	79 56                	jns    176b <linktest+0x18b>
    1715:	83 ec 08             	sub    $0x8,%esp
    1718:	68 26 43 00 00       	push   $0x4326
    171d:	68 ee 45 00 00       	push   $0x45ee
    1722:	e8 0b 22 00 00       	call   3932 <link>
    1727:	83 c4 10             	add    $0x10,%esp
    172a:	85 c0                	test   %eax,%eax
    172c:	79 2a                	jns    1758 <linktest+0x178>
    172e:	83 ec 08             	sub    $0x8,%esp
    1731:	68 c4 43 00 00       	push   $0x43c4
    1736:	6a 01                	push   $0x1
    1738:	e8 e3 22 00 00       	call   3a20 <printf>
    173d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1740:	83 c4 10             	add    $0x10,%esp
    1743:	c9                   	leave  
    1744:	c3                   	ret    
    1745:	50                   	push   %eax
    1746:	50                   	push   %eax
    1747:	68 2e 43 00 00       	push   $0x432e
    174c:	6a 01                	push   $0x1
    174e:	e8 cd 22 00 00       	call   3a20 <printf>
    1753:	e8 7a 21 00 00       	call   38d2 <exit>
    1758:	50                   	push   %eax
    1759:	50                   	push   %eax
    175a:	68 a8 43 00 00       	push   $0x43a8
    175f:	6a 01                	push   $0x1
    1761:	e8 ba 22 00 00       	call   3a20 <printf>
    1766:	e8 67 21 00 00       	call   38d2 <exit>
    176b:	52                   	push   %edx
    176c:	52                   	push   %edx
    176d:	68 5c 4f 00 00       	push   $0x4f5c
    1772:	6a 01                	push   $0x1
    1774:	e8 a7 22 00 00       	call   3a20 <printf>
    1779:	e8 54 21 00 00       	call   38d2 <exit>
    177e:	50                   	push   %eax
    177f:	50                   	push   %eax
    1780:	68 8a 43 00 00       	push   $0x438a
    1785:	6a 01                	push   $0x1
    1787:	e8 94 22 00 00       	call   3a20 <printf>
    178c:	e8 41 21 00 00       	call   38d2 <exit>
    1791:	51                   	push   %ecx
    1792:	51                   	push   %ecx
    1793:	68 79 43 00 00       	push   $0x4379
    1798:	6a 01                	push   $0x1
    179a:	e8 81 22 00 00       	call   3a20 <printf>
    179f:	e8 2e 21 00 00       	call   38d2 <exit>
    17a4:	53                   	push   %ebx
    17a5:	53                   	push   %ebx
    17a6:	68 68 43 00 00       	push   $0x4368
    17ab:	6a 01                	push   $0x1
    17ad:	e8 6e 22 00 00       	call   3a20 <printf>
    17b2:	e8 1b 21 00 00       	call   38d2 <exit>
    17b7:	50                   	push   %eax
    17b8:	50                   	push   %eax
    17b9:	68 34 4f 00 00       	push   $0x4f34
    17be:	6a 01                	push   $0x1
    17c0:	e8 5b 22 00 00       	call   3a20 <printf>
    17c5:	e8 08 21 00 00       	call   38d2 <exit>
    17ca:	51                   	push   %ecx
    17cb:	51                   	push   %ecx
    17cc:	68 53 43 00 00       	push   $0x4353
    17d1:	6a 01                	push   $0x1
    17d3:	e8 48 22 00 00       	call   3a20 <printf>
    17d8:	e8 f5 20 00 00       	call   38d2 <exit>
    17dd:	50                   	push   %eax
    17de:	50                   	push   %eax
    17df:	68 41 43 00 00       	push   $0x4341
    17e4:	6a 01                	push   $0x1
    17e6:	e8 35 22 00 00       	call   3a20 <printf>
    17eb:	e8 e2 20 00 00       	call   38d2 <exit>

000017f0 <concreate>:
    17f0:	55                   	push   %ebp
    17f1:	89 e5                	mov    %esp,%ebp
    17f3:	57                   	push   %edi
    17f4:	56                   	push   %esi
    17f5:	31 f6                	xor    %esi,%esi
    17f7:	53                   	push   %ebx
    17f8:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    17fb:	83 ec 64             	sub    $0x64,%esp
    17fe:	68 d1 43 00 00       	push   $0x43d1
    1803:	6a 01                	push   $0x1
    1805:	e8 16 22 00 00       	call   3a20 <printf>
    180a:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
    180e:	83 c4 10             	add    $0x10,%esp
    1811:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1815:	eb 4c                	jmp    1863 <concreate+0x73>
    1817:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    181e:	66 90                	xchg   %ax,%ax
    1820:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    1826:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    182b:	0f 83 af 00 00 00    	jae    18e0 <concreate+0xf0>
    1831:	83 ec 08             	sub    $0x8,%esp
    1834:	68 02 02 00 00       	push   $0x202
    1839:	53                   	push   %ebx
    183a:	e8 d3 20 00 00       	call   3912 <open>
    183f:	83 c4 10             	add    $0x10,%esp
    1842:	85 c0                	test   %eax,%eax
    1844:	78 5f                	js     18a5 <concreate+0xb5>
    1846:	83 ec 0c             	sub    $0xc,%esp
    1849:	83 c6 01             	add    $0x1,%esi
    184c:	50                   	push   %eax
    184d:	e8 a8 20 00 00       	call   38fa <close>
    1852:	83 c4 10             	add    $0x10,%esp
    1855:	e8 80 20 00 00       	call   38da <wait>
    185a:	83 fe 28             	cmp    $0x28,%esi
    185d:	0f 84 9f 00 00 00    	je     1902 <concreate+0x112>
    1863:	83 ec 0c             	sub    $0xc,%esp
    1866:	8d 46 30             	lea    0x30(%esi),%eax
    1869:	53                   	push   %ebx
    186a:	88 45 ae             	mov    %al,-0x52(%ebp)
    186d:	e8 b0 20 00 00       	call   3922 <unlink>
    1872:	e8 53 20 00 00       	call   38ca <fork>
    1877:	83 c4 10             	add    $0x10,%esp
    187a:	85 c0                	test   %eax,%eax
    187c:	75 a2                	jne    1820 <concreate+0x30>
    187e:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    1884:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    188a:	73 34                	jae    18c0 <concreate+0xd0>
    188c:	83 ec 08             	sub    $0x8,%esp
    188f:	68 02 02 00 00       	push   $0x202
    1894:	53                   	push   %ebx
    1895:	e8 78 20 00 00       	call   3912 <open>
    189a:	83 c4 10             	add    $0x10,%esp
    189d:	85 c0                	test   %eax,%eax
    189f:	0f 89 39 02 00 00    	jns    1ade <concreate+0x2ee>
    18a5:	83 ec 04             	sub    $0x4,%esp
    18a8:	53                   	push   %ebx
    18a9:	68 e4 43 00 00       	push   $0x43e4
    18ae:	6a 01                	push   $0x1
    18b0:	e8 6b 21 00 00       	call   3a20 <printf>
    18b5:	e8 18 20 00 00       	call   38d2 <exit>
    18ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    18c0:	83 ec 08             	sub    $0x8,%esp
    18c3:	53                   	push   %ebx
    18c4:	68 e1 43 00 00       	push   $0x43e1
    18c9:	e8 64 20 00 00       	call   3932 <link>
    18ce:	83 c4 10             	add    $0x10,%esp
    18d1:	e8 fc 1f 00 00       	call   38d2 <exit>
    18d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18dd:	8d 76 00             	lea    0x0(%esi),%esi
    18e0:	83 ec 08             	sub    $0x8,%esp
    18e3:	83 c6 01             	add    $0x1,%esi
    18e6:	53                   	push   %ebx
    18e7:	68 e1 43 00 00       	push   $0x43e1
    18ec:	e8 41 20 00 00       	call   3932 <link>
    18f1:	83 c4 10             	add    $0x10,%esp
    18f4:	e8 e1 1f 00 00       	call   38da <wait>
    18f9:	83 fe 28             	cmp    $0x28,%esi
    18fc:	0f 85 61 ff ff ff    	jne    1863 <concreate+0x73>
    1902:	83 ec 04             	sub    $0x4,%esp
    1905:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1908:	6a 28                	push   $0x28
    190a:	6a 00                	push   $0x0
    190c:	50                   	push   %eax
    190d:	e8 1e 1e 00 00       	call   3730 <memset>
    1912:	5e                   	pop    %esi
    1913:	5f                   	pop    %edi
    1914:	6a 00                	push   $0x0
    1916:	68 ee 45 00 00       	push   $0x45ee
    191b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    191e:	e8 ef 1f 00 00       	call   3912 <open>
    1923:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    192a:	83 c4 10             	add    $0x10,%esp
    192d:	89 c6                	mov    %eax,%esi
    192f:	90                   	nop
    1930:	83 ec 04             	sub    $0x4,%esp
    1933:	6a 10                	push   $0x10
    1935:	57                   	push   %edi
    1936:	56                   	push   %esi
    1937:	e8 ae 1f 00 00       	call   38ea <read>
    193c:	83 c4 10             	add    $0x10,%esp
    193f:	85 c0                	test   %eax,%eax
    1941:	7e 3d                	jle    1980 <concreate+0x190>
    1943:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1948:	74 e6                	je     1930 <concreate+0x140>
    194a:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    194e:	75 e0                	jne    1930 <concreate+0x140>
    1950:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1954:	75 da                	jne    1930 <concreate+0x140>
    1956:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    195a:	83 e8 30             	sub    $0x30,%eax
    195d:	83 f8 27             	cmp    $0x27,%eax
    1960:	0f 87 60 01 00 00    	ja     1ac6 <concreate+0x2d6>
    1966:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    196b:	0f 85 3d 01 00 00    	jne    1aae <concreate+0x2be>
    1971:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1975:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
    197a:	eb b4                	jmp    1930 <concreate+0x140>
    197c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1980:	83 ec 0c             	sub    $0xc,%esp
    1983:	56                   	push   %esi
    1984:	e8 71 1f 00 00       	call   38fa <close>
    1989:	83 c4 10             	add    $0x10,%esp
    198c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1990:	0f 85 05 01 00 00    	jne    1a9b <concreate+0x2ab>
    1996:	31 f6                	xor    %esi,%esi
    1998:	eb 4c                	jmp    19e6 <concreate+0x1f6>
    199a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    19a0:	85 ff                	test   %edi,%edi
    19a2:	74 05                	je     19a9 <concreate+0x1b9>
    19a4:	83 f8 01             	cmp    $0x1,%eax
    19a7:	74 6c                	je     1a15 <concreate+0x225>
    19a9:	83 ec 0c             	sub    $0xc,%esp
    19ac:	53                   	push   %ebx
    19ad:	e8 70 1f 00 00       	call   3922 <unlink>
    19b2:	89 1c 24             	mov    %ebx,(%esp)
    19b5:	e8 68 1f 00 00       	call   3922 <unlink>
    19ba:	89 1c 24             	mov    %ebx,(%esp)
    19bd:	e8 60 1f 00 00       	call   3922 <unlink>
    19c2:	89 1c 24             	mov    %ebx,(%esp)
    19c5:	e8 58 1f 00 00       	call   3922 <unlink>
    19ca:	83 c4 10             	add    $0x10,%esp
    19cd:	85 ff                	test   %edi,%edi
    19cf:	0f 84 fc fe ff ff    	je     18d1 <concreate+0xe1>
    19d5:	e8 00 1f 00 00       	call   38da <wait>
    19da:	83 c6 01             	add    $0x1,%esi
    19dd:	83 fe 28             	cmp    $0x28,%esi
    19e0:	0f 84 8a 00 00 00    	je     1a70 <concreate+0x280>
    19e6:	8d 46 30             	lea    0x30(%esi),%eax
    19e9:	88 45 ae             	mov    %al,-0x52(%ebp)
    19ec:	e8 d9 1e 00 00       	call   38ca <fork>
    19f1:	89 c7                	mov    %eax,%edi
    19f3:	85 c0                	test   %eax,%eax
    19f5:	0f 88 8c 00 00 00    	js     1a87 <concreate+0x297>
    19fb:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1a00:	f7 e6                	mul    %esi
    1a02:	89 d0                	mov    %edx,%eax
    1a04:	83 e2 fe             	and    $0xfffffffe,%edx
    1a07:	d1 e8                	shr    %eax
    1a09:	01 c2                	add    %eax,%edx
    1a0b:	89 f0                	mov    %esi,%eax
    1a0d:	29 d0                	sub    %edx,%eax
    1a0f:	89 c1                	mov    %eax,%ecx
    1a11:	09 f9                	or     %edi,%ecx
    1a13:	75 8b                	jne    19a0 <concreate+0x1b0>
    1a15:	83 ec 08             	sub    $0x8,%esp
    1a18:	6a 00                	push   $0x0
    1a1a:	53                   	push   %ebx
    1a1b:	e8 f2 1e 00 00       	call   3912 <open>
    1a20:	89 04 24             	mov    %eax,(%esp)
    1a23:	e8 d2 1e 00 00       	call   38fa <close>
    1a28:	58                   	pop    %eax
    1a29:	5a                   	pop    %edx
    1a2a:	6a 00                	push   $0x0
    1a2c:	53                   	push   %ebx
    1a2d:	e8 e0 1e 00 00       	call   3912 <open>
    1a32:	89 04 24             	mov    %eax,(%esp)
    1a35:	e8 c0 1e 00 00       	call   38fa <close>
    1a3a:	59                   	pop    %ecx
    1a3b:	58                   	pop    %eax
    1a3c:	6a 00                	push   $0x0
    1a3e:	53                   	push   %ebx
    1a3f:	e8 ce 1e 00 00       	call   3912 <open>
    1a44:	89 04 24             	mov    %eax,(%esp)
    1a47:	e8 ae 1e 00 00       	call   38fa <close>
    1a4c:	58                   	pop    %eax
    1a4d:	5a                   	pop    %edx
    1a4e:	6a 00                	push   $0x0
    1a50:	53                   	push   %ebx
    1a51:	e8 bc 1e 00 00       	call   3912 <open>
    1a56:	89 04 24             	mov    %eax,(%esp)
    1a59:	e8 9c 1e 00 00       	call   38fa <close>
    1a5e:	83 c4 10             	add    $0x10,%esp
    1a61:	e9 67 ff ff ff       	jmp    19cd <concreate+0x1dd>
    1a66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a6d:	8d 76 00             	lea    0x0(%esi),%esi
    1a70:	83 ec 08             	sub    $0x8,%esp
    1a73:	68 36 44 00 00       	push   $0x4436
    1a78:	6a 01                	push   $0x1
    1a7a:	e8 a1 1f 00 00       	call   3a20 <printf>
    1a7f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a82:	5b                   	pop    %ebx
    1a83:	5e                   	pop    %esi
    1a84:	5f                   	pop    %edi
    1a85:	5d                   	pop    %ebp
    1a86:	c3                   	ret    
    1a87:	83 ec 08             	sub    $0x8,%esp
    1a8a:	68 b9 4c 00 00       	push   $0x4cb9
    1a8f:	6a 01                	push   $0x1
    1a91:	e8 8a 1f 00 00       	call   3a20 <printf>
    1a96:	e8 37 1e 00 00       	call   38d2 <exit>
    1a9b:	51                   	push   %ecx
    1a9c:	51                   	push   %ecx
    1a9d:	68 80 4f 00 00       	push   $0x4f80
    1aa2:	6a 01                	push   $0x1
    1aa4:	e8 77 1f 00 00       	call   3a20 <printf>
    1aa9:	e8 24 1e 00 00       	call   38d2 <exit>
    1aae:	83 ec 04             	sub    $0x4,%esp
    1ab1:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1ab4:	50                   	push   %eax
    1ab5:	68 19 44 00 00       	push   $0x4419
    1aba:	6a 01                	push   $0x1
    1abc:	e8 5f 1f 00 00       	call   3a20 <printf>
    1ac1:	e8 0c 1e 00 00       	call   38d2 <exit>
    1ac6:	83 ec 04             	sub    $0x4,%esp
    1ac9:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1acc:	50                   	push   %eax
    1acd:	68 00 44 00 00       	push   $0x4400
    1ad2:	6a 01                	push   $0x1
    1ad4:	e8 47 1f 00 00       	call   3a20 <printf>
    1ad9:	e8 f4 1d 00 00       	call   38d2 <exit>
    1ade:	83 ec 0c             	sub    $0xc,%esp
    1ae1:	50                   	push   %eax
    1ae2:	e8 13 1e 00 00       	call   38fa <close>
    1ae7:	83 c4 10             	add    $0x10,%esp
    1aea:	e9 e2 fd ff ff       	jmp    18d1 <concreate+0xe1>
    1aef:	90                   	nop

00001af0 <linkunlink>:
    1af0:	55                   	push   %ebp
    1af1:	89 e5                	mov    %esp,%ebp
    1af3:	57                   	push   %edi
    1af4:	56                   	push   %esi
    1af5:	53                   	push   %ebx
    1af6:	83 ec 24             	sub    $0x24,%esp
    1af9:	68 44 44 00 00       	push   $0x4444
    1afe:	6a 01                	push   $0x1
    1b00:	e8 1b 1f 00 00       	call   3a20 <printf>
    1b05:	c7 04 24 d1 46 00 00 	movl   $0x46d1,(%esp)
    1b0c:	e8 11 1e 00 00       	call   3922 <unlink>
    1b11:	e8 b4 1d 00 00       	call   38ca <fork>
    1b16:	83 c4 10             	add    $0x10,%esp
    1b19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1b1c:	85 c0                	test   %eax,%eax
    1b1e:	0f 88 b6 00 00 00    	js     1bda <linkunlink+0xea>
    1b24:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1b28:	bb 64 00 00 00       	mov    $0x64,%ebx
    1b2d:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
    1b32:	19 ff                	sbb    %edi,%edi
    1b34:	83 e7 60             	and    $0x60,%edi
    1b37:	83 c7 01             	add    $0x1,%edi
    1b3a:	eb 1e                	jmp    1b5a <linkunlink+0x6a>
    1b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1b40:	83 f8 01             	cmp    $0x1,%eax
    1b43:	74 7b                	je     1bc0 <linkunlink+0xd0>
    1b45:	83 ec 0c             	sub    $0xc,%esp
    1b48:	68 d1 46 00 00       	push   $0x46d1
    1b4d:	e8 d0 1d 00 00       	call   3922 <unlink>
    1b52:	83 c4 10             	add    $0x10,%esp
    1b55:	83 eb 01             	sub    $0x1,%ebx
    1b58:	74 41                	je     1b9b <linkunlink+0xab>
    1b5a:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1b60:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    1b66:	89 f8                	mov    %edi,%eax
    1b68:	f7 e6                	mul    %esi
    1b6a:	89 d0                	mov    %edx,%eax
    1b6c:	83 e2 fe             	and    $0xfffffffe,%edx
    1b6f:	d1 e8                	shr    %eax
    1b71:	01 c2                	add    %eax,%edx
    1b73:	89 f8                	mov    %edi,%eax
    1b75:	29 d0                	sub    %edx,%eax
    1b77:	75 c7                	jne    1b40 <linkunlink+0x50>
    1b79:	83 ec 08             	sub    $0x8,%esp
    1b7c:	68 02 02 00 00       	push   $0x202
    1b81:	68 d1 46 00 00       	push   $0x46d1
    1b86:	e8 87 1d 00 00       	call   3912 <open>
    1b8b:	89 04 24             	mov    %eax,(%esp)
    1b8e:	e8 67 1d 00 00       	call   38fa <close>
    1b93:	83 c4 10             	add    $0x10,%esp
    1b96:	83 eb 01             	sub    $0x1,%ebx
    1b99:	75 bf                	jne    1b5a <linkunlink+0x6a>
    1b9b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    1b9e:	85 c0                	test   %eax,%eax
    1ba0:	74 4b                	je     1bed <linkunlink+0xfd>
    1ba2:	e8 33 1d 00 00       	call   38da <wait>
    1ba7:	83 ec 08             	sub    $0x8,%esp
    1baa:	68 59 44 00 00       	push   $0x4459
    1baf:	6a 01                	push   $0x1
    1bb1:	e8 6a 1e 00 00       	call   3a20 <printf>
    1bb6:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1bb9:	5b                   	pop    %ebx
    1bba:	5e                   	pop    %esi
    1bbb:	5f                   	pop    %edi
    1bbc:	5d                   	pop    %ebp
    1bbd:	c3                   	ret    
    1bbe:	66 90                	xchg   %ax,%ax
    1bc0:	83 ec 08             	sub    $0x8,%esp
    1bc3:	68 d1 46 00 00       	push   $0x46d1
    1bc8:	68 55 44 00 00       	push   $0x4455
    1bcd:	e8 60 1d 00 00       	call   3932 <link>
    1bd2:	83 c4 10             	add    $0x10,%esp
    1bd5:	e9 7b ff ff ff       	jmp    1b55 <linkunlink+0x65>
    1bda:	52                   	push   %edx
    1bdb:	52                   	push   %edx
    1bdc:	68 b9 4c 00 00       	push   $0x4cb9
    1be1:	6a 01                	push   $0x1
    1be3:	e8 38 1e 00 00       	call   3a20 <printf>
    1be8:	e8 e5 1c 00 00       	call   38d2 <exit>
    1bed:	e8 e0 1c 00 00       	call   38d2 <exit>
    1bf2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001c00 <bigdir>:
    1c00:	55                   	push   %ebp
    1c01:	89 e5                	mov    %esp,%ebp
    1c03:	57                   	push   %edi
    1c04:	56                   	push   %esi
    1c05:	53                   	push   %ebx
    1c06:	83 ec 24             	sub    $0x24,%esp
    1c09:	68 68 44 00 00       	push   $0x4468
    1c0e:	6a 01                	push   $0x1
    1c10:	e8 0b 1e 00 00       	call   3a20 <printf>
    1c15:	c7 04 24 75 44 00 00 	movl   $0x4475,(%esp)
    1c1c:	e8 01 1d 00 00       	call   3922 <unlink>
    1c21:	5a                   	pop    %edx
    1c22:	59                   	pop    %ecx
    1c23:	68 00 02 00 00       	push   $0x200
    1c28:	68 75 44 00 00       	push   $0x4475
    1c2d:	e8 e0 1c 00 00       	call   3912 <open>
    1c32:	83 c4 10             	add    $0x10,%esp
    1c35:	85 c0                	test   %eax,%eax
    1c37:	0f 88 de 00 00 00    	js     1d1b <bigdir+0x11b>
    1c3d:	83 ec 0c             	sub    $0xc,%esp
    1c40:	31 f6                	xor    %esi,%esi
    1c42:	8d 7d de             	lea    -0x22(%ebp),%edi
    1c45:	50                   	push   %eax
    1c46:	e8 af 1c 00 00       	call   38fa <close>
    1c4b:	83 c4 10             	add    $0x10,%esp
    1c4e:	66 90                	xchg   %ax,%ax
    1c50:	89 f0                	mov    %esi,%eax
    1c52:	83 ec 08             	sub    $0x8,%esp
    1c55:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    1c59:	c1 f8 06             	sar    $0x6,%eax
    1c5c:	57                   	push   %edi
    1c5d:	83 c0 30             	add    $0x30,%eax
    1c60:	68 75 44 00 00       	push   $0x4475
    1c65:	88 45 df             	mov    %al,-0x21(%ebp)
    1c68:	89 f0                	mov    %esi,%eax
    1c6a:	83 e0 3f             	and    $0x3f,%eax
    1c6d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    1c71:	83 c0 30             	add    $0x30,%eax
    1c74:	88 45 e0             	mov    %al,-0x20(%ebp)
    1c77:	e8 b6 1c 00 00       	call   3932 <link>
    1c7c:	83 c4 10             	add    $0x10,%esp
    1c7f:	89 c3                	mov    %eax,%ebx
    1c81:	85 c0                	test   %eax,%eax
    1c83:	75 6e                	jne    1cf3 <bigdir+0xf3>
    1c85:	83 c6 01             	add    $0x1,%esi
    1c88:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1c8e:	75 c0                	jne    1c50 <bigdir+0x50>
    1c90:	83 ec 0c             	sub    $0xc,%esp
    1c93:	68 75 44 00 00       	push   $0x4475
    1c98:	e8 85 1c 00 00       	call   3922 <unlink>
    1c9d:	83 c4 10             	add    $0x10,%esp
    1ca0:	89 d8                	mov    %ebx,%eax
    1ca2:	83 ec 0c             	sub    $0xc,%esp
    1ca5:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    1ca9:	c1 f8 06             	sar    $0x6,%eax
    1cac:	57                   	push   %edi
    1cad:	83 c0 30             	add    $0x30,%eax
    1cb0:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    1cb4:	88 45 df             	mov    %al,-0x21(%ebp)
    1cb7:	89 d8                	mov    %ebx,%eax
    1cb9:	83 e0 3f             	and    $0x3f,%eax
    1cbc:	83 c0 30             	add    $0x30,%eax
    1cbf:	88 45 e0             	mov    %al,-0x20(%ebp)
    1cc2:	e8 5b 1c 00 00       	call   3922 <unlink>
    1cc7:	83 c4 10             	add    $0x10,%esp
    1cca:	85 c0                	test   %eax,%eax
    1ccc:	75 39                	jne    1d07 <bigdir+0x107>
    1cce:	83 c3 01             	add    $0x1,%ebx
    1cd1:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1cd7:	75 c7                	jne    1ca0 <bigdir+0xa0>
    1cd9:	83 ec 08             	sub    $0x8,%esp
    1cdc:	68 b7 44 00 00       	push   $0x44b7
    1ce1:	6a 01                	push   $0x1
    1ce3:	e8 38 1d 00 00       	call   3a20 <printf>
    1ce8:	83 c4 10             	add    $0x10,%esp
    1ceb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cee:	5b                   	pop    %ebx
    1cef:	5e                   	pop    %esi
    1cf0:	5f                   	pop    %edi
    1cf1:	5d                   	pop    %ebp
    1cf2:	c3                   	ret    
    1cf3:	83 ec 08             	sub    $0x8,%esp
    1cf6:	68 8e 44 00 00       	push   $0x448e
    1cfb:	6a 01                	push   $0x1
    1cfd:	e8 1e 1d 00 00       	call   3a20 <printf>
    1d02:	e8 cb 1b 00 00       	call   38d2 <exit>
    1d07:	83 ec 08             	sub    $0x8,%esp
    1d0a:	68 a2 44 00 00       	push   $0x44a2
    1d0f:	6a 01                	push   $0x1
    1d11:	e8 0a 1d 00 00       	call   3a20 <printf>
    1d16:	e8 b7 1b 00 00       	call   38d2 <exit>
    1d1b:	50                   	push   %eax
    1d1c:	50                   	push   %eax
    1d1d:	68 78 44 00 00       	push   $0x4478
    1d22:	6a 01                	push   $0x1
    1d24:	e8 f7 1c 00 00       	call   3a20 <printf>
    1d29:	e8 a4 1b 00 00       	call   38d2 <exit>
    1d2e:	66 90                	xchg   %ax,%ax

00001d30 <subdir>:
    1d30:	55                   	push   %ebp
    1d31:	89 e5                	mov    %esp,%ebp
    1d33:	53                   	push   %ebx
    1d34:	83 ec 0c             	sub    $0xc,%esp
    1d37:	68 c2 44 00 00       	push   $0x44c2
    1d3c:	6a 01                	push   $0x1
    1d3e:	e8 dd 1c 00 00       	call   3a20 <printf>
    1d43:	c7 04 24 4b 45 00 00 	movl   $0x454b,(%esp)
    1d4a:	e8 d3 1b 00 00       	call   3922 <unlink>
    1d4f:	c7 04 24 e8 45 00 00 	movl   $0x45e8,(%esp)
    1d56:	e8 df 1b 00 00       	call   393a <mkdir>
    1d5b:	83 c4 10             	add    $0x10,%esp
    1d5e:	85 c0                	test   %eax,%eax
    1d60:	0f 85 b3 05 00 00    	jne    2319 <subdir+0x5e9>
    1d66:	83 ec 08             	sub    $0x8,%esp
    1d69:	68 02 02 00 00       	push   $0x202
    1d6e:	68 21 45 00 00       	push   $0x4521
    1d73:	e8 9a 1b 00 00       	call   3912 <open>
    1d78:	83 c4 10             	add    $0x10,%esp
    1d7b:	89 c3                	mov    %eax,%ebx
    1d7d:	85 c0                	test   %eax,%eax
    1d7f:	0f 88 81 05 00 00    	js     2306 <subdir+0x5d6>
    1d85:	83 ec 04             	sub    $0x4,%esp
    1d88:	6a 02                	push   $0x2
    1d8a:	68 4b 45 00 00       	push   $0x454b
    1d8f:	50                   	push   %eax
    1d90:	e8 5d 1b 00 00       	call   38f2 <write>
    1d95:	89 1c 24             	mov    %ebx,(%esp)
    1d98:	e8 5d 1b 00 00       	call   38fa <close>
    1d9d:	c7 04 24 e8 45 00 00 	movl   $0x45e8,(%esp)
    1da4:	e8 79 1b 00 00       	call   3922 <unlink>
    1da9:	83 c4 10             	add    $0x10,%esp
    1dac:	85 c0                	test   %eax,%eax
    1dae:	0f 89 3f 05 00 00    	jns    22f3 <subdir+0x5c3>
    1db4:	83 ec 0c             	sub    $0xc,%esp
    1db7:	68 fc 44 00 00       	push   $0x44fc
    1dbc:	e8 79 1b 00 00       	call   393a <mkdir>
    1dc1:	83 c4 10             	add    $0x10,%esp
    1dc4:	85 c0                	test   %eax,%eax
    1dc6:	0f 85 14 05 00 00    	jne    22e0 <subdir+0x5b0>
    1dcc:	83 ec 08             	sub    $0x8,%esp
    1dcf:	68 02 02 00 00       	push   $0x202
    1dd4:	68 1e 45 00 00       	push   $0x451e
    1dd9:	e8 34 1b 00 00       	call   3912 <open>
    1dde:	83 c4 10             	add    $0x10,%esp
    1de1:	89 c3                	mov    %eax,%ebx
    1de3:	85 c0                	test   %eax,%eax
    1de5:	0f 88 24 04 00 00    	js     220f <subdir+0x4df>
    1deb:	83 ec 04             	sub    $0x4,%esp
    1dee:	6a 02                	push   $0x2
    1df0:	68 3f 45 00 00       	push   $0x453f
    1df5:	50                   	push   %eax
    1df6:	e8 f7 1a 00 00       	call   38f2 <write>
    1dfb:	89 1c 24             	mov    %ebx,(%esp)
    1dfe:	e8 f7 1a 00 00       	call   38fa <close>
    1e03:	58                   	pop    %eax
    1e04:	5a                   	pop    %edx
    1e05:	6a 00                	push   $0x0
    1e07:	68 42 45 00 00       	push   $0x4542
    1e0c:	e8 01 1b 00 00       	call   3912 <open>
    1e11:	83 c4 10             	add    $0x10,%esp
    1e14:	89 c3                	mov    %eax,%ebx
    1e16:	85 c0                	test   %eax,%eax
    1e18:	0f 88 de 03 00 00    	js     21fc <subdir+0x4cc>
    1e1e:	83 ec 04             	sub    $0x4,%esp
    1e21:	68 00 20 00 00       	push   $0x2000
    1e26:	68 00 86 00 00       	push   $0x8600
    1e2b:	50                   	push   %eax
    1e2c:	e8 b9 1a 00 00       	call   38ea <read>
    1e31:	83 c4 10             	add    $0x10,%esp
    1e34:	83 f8 02             	cmp    $0x2,%eax
    1e37:	0f 85 3a 03 00 00    	jne    2177 <subdir+0x447>
    1e3d:	80 3d 00 86 00 00 66 	cmpb   $0x66,0x8600
    1e44:	0f 85 2d 03 00 00    	jne    2177 <subdir+0x447>
    1e4a:	83 ec 0c             	sub    $0xc,%esp
    1e4d:	53                   	push   %ebx
    1e4e:	e8 a7 1a 00 00       	call   38fa <close>
    1e53:	59                   	pop    %ecx
    1e54:	5b                   	pop    %ebx
    1e55:	68 82 45 00 00       	push   $0x4582
    1e5a:	68 1e 45 00 00       	push   $0x451e
    1e5f:	e8 ce 1a 00 00       	call   3932 <link>
    1e64:	83 c4 10             	add    $0x10,%esp
    1e67:	85 c0                	test   %eax,%eax
    1e69:	0f 85 c6 03 00 00    	jne    2235 <subdir+0x505>
    1e6f:	83 ec 0c             	sub    $0xc,%esp
    1e72:	68 1e 45 00 00       	push   $0x451e
    1e77:	e8 a6 1a 00 00       	call   3922 <unlink>
    1e7c:	83 c4 10             	add    $0x10,%esp
    1e7f:	85 c0                	test   %eax,%eax
    1e81:	0f 85 16 03 00 00    	jne    219d <subdir+0x46d>
    1e87:	83 ec 08             	sub    $0x8,%esp
    1e8a:	6a 00                	push   $0x0
    1e8c:	68 1e 45 00 00       	push   $0x451e
    1e91:	e8 7c 1a 00 00       	call   3912 <open>
    1e96:	83 c4 10             	add    $0x10,%esp
    1e99:	85 c0                	test   %eax,%eax
    1e9b:	0f 89 2c 04 00 00    	jns    22cd <subdir+0x59d>
    1ea1:	83 ec 0c             	sub    $0xc,%esp
    1ea4:	68 e8 45 00 00       	push   $0x45e8
    1ea9:	e8 94 1a 00 00       	call   3942 <chdir>
    1eae:	83 c4 10             	add    $0x10,%esp
    1eb1:	85 c0                	test   %eax,%eax
    1eb3:	0f 85 01 04 00 00    	jne    22ba <subdir+0x58a>
    1eb9:	83 ec 0c             	sub    $0xc,%esp
    1ebc:	68 b6 45 00 00       	push   $0x45b6
    1ec1:	e8 7c 1a 00 00       	call   3942 <chdir>
    1ec6:	83 c4 10             	add    $0x10,%esp
    1ec9:	85 c0                	test   %eax,%eax
    1ecb:	0f 85 b9 02 00 00    	jne    218a <subdir+0x45a>
    1ed1:	83 ec 0c             	sub    $0xc,%esp
    1ed4:	68 dc 45 00 00       	push   $0x45dc
    1ed9:	e8 64 1a 00 00       	call   3942 <chdir>
    1ede:	83 c4 10             	add    $0x10,%esp
    1ee1:	85 c0                	test   %eax,%eax
    1ee3:	0f 85 a1 02 00 00    	jne    218a <subdir+0x45a>
    1ee9:	83 ec 0c             	sub    $0xc,%esp
    1eec:	68 eb 45 00 00       	push   $0x45eb
    1ef1:	e8 4c 1a 00 00       	call   3942 <chdir>
    1ef6:	83 c4 10             	add    $0x10,%esp
    1ef9:	85 c0                	test   %eax,%eax
    1efb:	0f 85 21 03 00 00    	jne    2222 <subdir+0x4f2>
    1f01:	83 ec 08             	sub    $0x8,%esp
    1f04:	6a 00                	push   $0x0
    1f06:	68 82 45 00 00       	push   $0x4582
    1f0b:	e8 02 1a 00 00       	call   3912 <open>
    1f10:	83 c4 10             	add    $0x10,%esp
    1f13:	89 c3                	mov    %eax,%ebx
    1f15:	85 c0                	test   %eax,%eax
    1f17:	0f 88 e0 04 00 00    	js     23fd <subdir+0x6cd>
    1f1d:	83 ec 04             	sub    $0x4,%esp
    1f20:	68 00 20 00 00       	push   $0x2000
    1f25:	68 00 86 00 00       	push   $0x8600
    1f2a:	50                   	push   %eax
    1f2b:	e8 ba 19 00 00       	call   38ea <read>
    1f30:	83 c4 10             	add    $0x10,%esp
    1f33:	83 f8 02             	cmp    $0x2,%eax
    1f36:	0f 85 ae 04 00 00    	jne    23ea <subdir+0x6ba>
    1f3c:	83 ec 0c             	sub    $0xc,%esp
    1f3f:	53                   	push   %ebx
    1f40:	e8 b5 19 00 00       	call   38fa <close>
    1f45:	58                   	pop    %eax
    1f46:	5a                   	pop    %edx
    1f47:	6a 00                	push   $0x0
    1f49:	68 1e 45 00 00       	push   $0x451e
    1f4e:	e8 bf 19 00 00       	call   3912 <open>
    1f53:	83 c4 10             	add    $0x10,%esp
    1f56:	85 c0                	test   %eax,%eax
    1f58:	0f 89 65 02 00 00    	jns    21c3 <subdir+0x493>
    1f5e:	83 ec 08             	sub    $0x8,%esp
    1f61:	68 02 02 00 00       	push   $0x202
    1f66:	68 36 46 00 00       	push   $0x4636
    1f6b:	e8 a2 19 00 00       	call   3912 <open>
    1f70:	83 c4 10             	add    $0x10,%esp
    1f73:	85 c0                	test   %eax,%eax
    1f75:	0f 89 35 02 00 00    	jns    21b0 <subdir+0x480>
    1f7b:	83 ec 08             	sub    $0x8,%esp
    1f7e:	68 02 02 00 00       	push   $0x202
    1f83:	68 5b 46 00 00       	push   $0x465b
    1f88:	e8 85 19 00 00       	call   3912 <open>
    1f8d:	83 c4 10             	add    $0x10,%esp
    1f90:	85 c0                	test   %eax,%eax
    1f92:	0f 89 0f 03 00 00    	jns    22a7 <subdir+0x577>
    1f98:	83 ec 08             	sub    $0x8,%esp
    1f9b:	68 00 02 00 00       	push   $0x200
    1fa0:	68 e8 45 00 00       	push   $0x45e8
    1fa5:	e8 68 19 00 00       	call   3912 <open>
    1faa:	83 c4 10             	add    $0x10,%esp
    1fad:	85 c0                	test   %eax,%eax
    1faf:	0f 89 df 02 00 00    	jns    2294 <subdir+0x564>
    1fb5:	83 ec 08             	sub    $0x8,%esp
    1fb8:	6a 02                	push   $0x2
    1fba:	68 e8 45 00 00       	push   $0x45e8
    1fbf:	e8 4e 19 00 00       	call   3912 <open>
    1fc4:	83 c4 10             	add    $0x10,%esp
    1fc7:	85 c0                	test   %eax,%eax
    1fc9:	0f 89 b2 02 00 00    	jns    2281 <subdir+0x551>
    1fcf:	83 ec 08             	sub    $0x8,%esp
    1fd2:	6a 01                	push   $0x1
    1fd4:	68 e8 45 00 00       	push   $0x45e8
    1fd9:	e8 34 19 00 00       	call   3912 <open>
    1fde:	83 c4 10             	add    $0x10,%esp
    1fe1:	85 c0                	test   %eax,%eax
    1fe3:	0f 89 85 02 00 00    	jns    226e <subdir+0x53e>
    1fe9:	83 ec 08             	sub    $0x8,%esp
    1fec:	68 ca 46 00 00       	push   $0x46ca
    1ff1:	68 36 46 00 00       	push   $0x4636
    1ff6:	e8 37 19 00 00       	call   3932 <link>
    1ffb:	83 c4 10             	add    $0x10,%esp
    1ffe:	85 c0                	test   %eax,%eax
    2000:	0f 84 55 02 00 00    	je     225b <subdir+0x52b>
    2006:	83 ec 08             	sub    $0x8,%esp
    2009:	68 ca 46 00 00       	push   $0x46ca
    200e:	68 5b 46 00 00       	push   $0x465b
    2013:	e8 1a 19 00 00       	call   3932 <link>
    2018:	83 c4 10             	add    $0x10,%esp
    201b:	85 c0                	test   %eax,%eax
    201d:	0f 84 25 02 00 00    	je     2248 <subdir+0x518>
    2023:	83 ec 08             	sub    $0x8,%esp
    2026:	68 82 45 00 00       	push   $0x4582
    202b:	68 21 45 00 00       	push   $0x4521
    2030:	e8 fd 18 00 00       	call   3932 <link>
    2035:	83 c4 10             	add    $0x10,%esp
    2038:	85 c0                	test   %eax,%eax
    203a:	0f 84 a9 01 00 00    	je     21e9 <subdir+0x4b9>
    2040:	83 ec 0c             	sub    $0xc,%esp
    2043:	68 36 46 00 00       	push   $0x4636
    2048:	e8 ed 18 00 00       	call   393a <mkdir>
    204d:	83 c4 10             	add    $0x10,%esp
    2050:	85 c0                	test   %eax,%eax
    2052:	0f 84 7e 01 00 00    	je     21d6 <subdir+0x4a6>
    2058:	83 ec 0c             	sub    $0xc,%esp
    205b:	68 5b 46 00 00       	push   $0x465b
    2060:	e8 d5 18 00 00       	call   393a <mkdir>
    2065:	83 c4 10             	add    $0x10,%esp
    2068:	85 c0                	test   %eax,%eax
    206a:	0f 84 67 03 00 00    	je     23d7 <subdir+0x6a7>
    2070:	83 ec 0c             	sub    $0xc,%esp
    2073:	68 82 45 00 00       	push   $0x4582
    2078:	e8 bd 18 00 00       	call   393a <mkdir>
    207d:	83 c4 10             	add    $0x10,%esp
    2080:	85 c0                	test   %eax,%eax
    2082:	0f 84 3c 03 00 00    	je     23c4 <subdir+0x694>
    2088:	83 ec 0c             	sub    $0xc,%esp
    208b:	68 5b 46 00 00       	push   $0x465b
    2090:	e8 8d 18 00 00       	call   3922 <unlink>
    2095:	83 c4 10             	add    $0x10,%esp
    2098:	85 c0                	test   %eax,%eax
    209a:	0f 84 11 03 00 00    	je     23b1 <subdir+0x681>
    20a0:	83 ec 0c             	sub    $0xc,%esp
    20a3:	68 36 46 00 00       	push   $0x4636
    20a8:	e8 75 18 00 00       	call   3922 <unlink>
    20ad:	83 c4 10             	add    $0x10,%esp
    20b0:	85 c0                	test   %eax,%eax
    20b2:	0f 84 e6 02 00 00    	je     239e <subdir+0x66e>
    20b8:	83 ec 0c             	sub    $0xc,%esp
    20bb:	68 21 45 00 00       	push   $0x4521
    20c0:	e8 7d 18 00 00       	call   3942 <chdir>
    20c5:	83 c4 10             	add    $0x10,%esp
    20c8:	85 c0                	test   %eax,%eax
    20ca:	0f 84 bb 02 00 00    	je     238b <subdir+0x65b>
    20d0:	83 ec 0c             	sub    $0xc,%esp
    20d3:	68 cd 46 00 00       	push   $0x46cd
    20d8:	e8 65 18 00 00       	call   3942 <chdir>
    20dd:	83 c4 10             	add    $0x10,%esp
    20e0:	85 c0                	test   %eax,%eax
    20e2:	0f 84 90 02 00 00    	je     2378 <subdir+0x648>
    20e8:	83 ec 0c             	sub    $0xc,%esp
    20eb:	68 82 45 00 00       	push   $0x4582
    20f0:	e8 2d 18 00 00       	call   3922 <unlink>
    20f5:	83 c4 10             	add    $0x10,%esp
    20f8:	85 c0                	test   %eax,%eax
    20fa:	0f 85 9d 00 00 00    	jne    219d <subdir+0x46d>
    2100:	83 ec 0c             	sub    $0xc,%esp
    2103:	68 21 45 00 00       	push   $0x4521
    2108:	e8 15 18 00 00       	call   3922 <unlink>
    210d:	83 c4 10             	add    $0x10,%esp
    2110:	85 c0                	test   %eax,%eax
    2112:	0f 85 4d 02 00 00    	jne    2365 <subdir+0x635>
    2118:	83 ec 0c             	sub    $0xc,%esp
    211b:	68 e8 45 00 00       	push   $0x45e8
    2120:	e8 fd 17 00 00       	call   3922 <unlink>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	0f 84 22 02 00 00    	je     2352 <subdir+0x622>
    2130:	83 ec 0c             	sub    $0xc,%esp
    2133:	68 fd 44 00 00       	push   $0x44fd
    2138:	e8 e5 17 00 00       	call   3922 <unlink>
    213d:	83 c4 10             	add    $0x10,%esp
    2140:	85 c0                	test   %eax,%eax
    2142:	0f 88 f7 01 00 00    	js     233f <subdir+0x60f>
    2148:	83 ec 0c             	sub    $0xc,%esp
    214b:	68 e8 45 00 00       	push   $0x45e8
    2150:	e8 cd 17 00 00       	call   3922 <unlink>
    2155:	83 c4 10             	add    $0x10,%esp
    2158:	85 c0                	test   %eax,%eax
    215a:	0f 88 cc 01 00 00    	js     232c <subdir+0x5fc>
    2160:	83 ec 08             	sub    $0x8,%esp
    2163:	68 ca 47 00 00       	push   $0x47ca
    2168:	6a 01                	push   $0x1
    216a:	e8 b1 18 00 00       	call   3a20 <printf>
    216f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2172:	83 c4 10             	add    $0x10,%esp
    2175:	c9                   	leave  
    2176:	c3                   	ret    
    2177:	50                   	push   %eax
    2178:	50                   	push   %eax
    2179:	68 67 45 00 00       	push   $0x4567
    217e:	6a 01                	push   $0x1
    2180:	e8 9b 18 00 00       	call   3a20 <printf>
    2185:	e8 48 17 00 00       	call   38d2 <exit>
    218a:	50                   	push   %eax
    218b:	50                   	push   %eax
    218c:	68 c2 45 00 00       	push   $0x45c2
    2191:	6a 01                	push   $0x1
    2193:	e8 88 18 00 00       	call   3a20 <printf>
    2198:	e8 35 17 00 00       	call   38d2 <exit>
    219d:	50                   	push   %eax
    219e:	50                   	push   %eax
    219f:	68 8d 45 00 00       	push   $0x458d
    21a4:	6a 01                	push   $0x1
    21a6:	e8 75 18 00 00       	call   3a20 <printf>
    21ab:	e8 22 17 00 00       	call   38d2 <exit>
    21b0:	51                   	push   %ecx
    21b1:	51                   	push   %ecx
    21b2:	68 3f 46 00 00       	push   $0x463f
    21b7:	6a 01                	push   $0x1
    21b9:	e8 62 18 00 00       	call   3a20 <printf>
    21be:	e8 0f 17 00 00       	call   38d2 <exit>
    21c3:	53                   	push   %ebx
    21c4:	53                   	push   %ebx
    21c5:	68 24 50 00 00       	push   $0x5024
    21ca:	6a 01                	push   $0x1
    21cc:	e8 4f 18 00 00       	call   3a20 <printf>
    21d1:	e8 fc 16 00 00       	call   38d2 <exit>
    21d6:	51                   	push   %ecx
    21d7:	51                   	push   %ecx
    21d8:	68 d3 46 00 00       	push   $0x46d3
    21dd:	6a 01                	push   $0x1
    21df:	e8 3c 18 00 00       	call   3a20 <printf>
    21e4:	e8 e9 16 00 00       	call   38d2 <exit>
    21e9:	53                   	push   %ebx
    21ea:	53                   	push   %ebx
    21eb:	68 94 50 00 00       	push   $0x5094
    21f0:	6a 01                	push   $0x1
    21f2:	e8 29 18 00 00       	call   3a20 <printf>
    21f7:	e8 d6 16 00 00       	call   38d2 <exit>
    21fc:	50                   	push   %eax
    21fd:	50                   	push   %eax
    21fe:	68 4e 45 00 00       	push   $0x454e
    2203:	6a 01                	push   $0x1
    2205:	e8 16 18 00 00       	call   3a20 <printf>
    220a:	e8 c3 16 00 00       	call   38d2 <exit>
    220f:	51                   	push   %ecx
    2210:	51                   	push   %ecx
    2211:	68 27 45 00 00       	push   $0x4527
    2216:	6a 01                	push   $0x1
    2218:	e8 03 18 00 00       	call   3a20 <printf>
    221d:	e8 b0 16 00 00       	call   38d2 <exit>
    2222:	50                   	push   %eax
    2223:	50                   	push   %eax
    2224:	68 f0 45 00 00       	push   $0x45f0
    2229:	6a 01                	push   $0x1
    222b:	e8 f0 17 00 00       	call   3a20 <printf>
    2230:	e8 9d 16 00 00       	call   38d2 <exit>
    2235:	52                   	push   %edx
    2236:	52                   	push   %edx
    2237:	68 dc 4f 00 00       	push   $0x4fdc
    223c:	6a 01                	push   $0x1
    223e:	e8 dd 17 00 00       	call   3a20 <printf>
    2243:	e8 8a 16 00 00       	call   38d2 <exit>
    2248:	50                   	push   %eax
    2249:	50                   	push   %eax
    224a:	68 70 50 00 00       	push   $0x5070
    224f:	6a 01                	push   $0x1
    2251:	e8 ca 17 00 00       	call   3a20 <printf>
    2256:	e8 77 16 00 00       	call   38d2 <exit>
    225b:	50                   	push   %eax
    225c:	50                   	push   %eax
    225d:	68 4c 50 00 00       	push   $0x504c
    2262:	6a 01                	push   $0x1
    2264:	e8 b7 17 00 00       	call   3a20 <printf>
    2269:	e8 64 16 00 00       	call   38d2 <exit>
    226e:	50                   	push   %eax
    226f:	50                   	push   %eax
    2270:	68 af 46 00 00       	push   $0x46af
    2275:	6a 01                	push   $0x1
    2277:	e8 a4 17 00 00       	call   3a20 <printf>
    227c:	e8 51 16 00 00       	call   38d2 <exit>
    2281:	50                   	push   %eax
    2282:	50                   	push   %eax
    2283:	68 96 46 00 00       	push   $0x4696
    2288:	6a 01                	push   $0x1
    228a:	e8 91 17 00 00       	call   3a20 <printf>
    228f:	e8 3e 16 00 00       	call   38d2 <exit>
    2294:	50                   	push   %eax
    2295:	50                   	push   %eax
    2296:	68 80 46 00 00       	push   $0x4680
    229b:	6a 01                	push   $0x1
    229d:	e8 7e 17 00 00       	call   3a20 <printf>
    22a2:	e8 2b 16 00 00       	call   38d2 <exit>
    22a7:	52                   	push   %edx
    22a8:	52                   	push   %edx
    22a9:	68 64 46 00 00       	push   $0x4664
    22ae:	6a 01                	push   $0x1
    22b0:	e8 6b 17 00 00       	call   3a20 <printf>
    22b5:	e8 18 16 00 00       	call   38d2 <exit>
    22ba:	50                   	push   %eax
    22bb:	50                   	push   %eax
    22bc:	68 a5 45 00 00       	push   $0x45a5
    22c1:	6a 01                	push   $0x1
    22c3:	e8 58 17 00 00       	call   3a20 <printf>
    22c8:	e8 05 16 00 00       	call   38d2 <exit>
    22cd:	50                   	push   %eax
    22ce:	50                   	push   %eax
    22cf:	68 00 50 00 00       	push   $0x5000
    22d4:	6a 01                	push   $0x1
    22d6:	e8 45 17 00 00       	call   3a20 <printf>
    22db:	e8 f2 15 00 00       	call   38d2 <exit>
    22e0:	53                   	push   %ebx
    22e1:	53                   	push   %ebx
    22e2:	68 03 45 00 00       	push   $0x4503
    22e7:	6a 01                	push   $0x1
    22e9:	e8 32 17 00 00       	call   3a20 <printf>
    22ee:	e8 df 15 00 00       	call   38d2 <exit>
    22f3:	50                   	push   %eax
    22f4:	50                   	push   %eax
    22f5:	68 b4 4f 00 00       	push   $0x4fb4
    22fa:	6a 01                	push   $0x1
    22fc:	e8 1f 17 00 00       	call   3a20 <printf>
    2301:	e8 cc 15 00 00       	call   38d2 <exit>
    2306:	50                   	push   %eax
    2307:	50                   	push   %eax
    2308:	68 e7 44 00 00       	push   $0x44e7
    230d:	6a 01                	push   $0x1
    230f:	e8 0c 17 00 00       	call   3a20 <printf>
    2314:	e8 b9 15 00 00       	call   38d2 <exit>
    2319:	50                   	push   %eax
    231a:	50                   	push   %eax
    231b:	68 cf 44 00 00       	push   $0x44cf
    2320:	6a 01                	push   $0x1
    2322:	e8 f9 16 00 00       	call   3a20 <printf>
    2327:	e8 a6 15 00 00       	call   38d2 <exit>
    232c:	50                   	push   %eax
    232d:	50                   	push   %eax
    232e:	68 b8 47 00 00       	push   $0x47b8
    2333:	6a 01                	push   $0x1
    2335:	e8 e6 16 00 00       	call   3a20 <printf>
    233a:	e8 93 15 00 00       	call   38d2 <exit>
    233f:	52                   	push   %edx
    2340:	52                   	push   %edx
    2341:	68 a3 47 00 00       	push   $0x47a3
    2346:	6a 01                	push   $0x1
    2348:	e8 d3 16 00 00       	call   3a20 <printf>
    234d:	e8 80 15 00 00       	call   38d2 <exit>
    2352:	51                   	push   %ecx
    2353:	51                   	push   %ecx
    2354:	68 b8 50 00 00       	push   $0x50b8
    2359:	6a 01                	push   $0x1
    235b:	e8 c0 16 00 00       	call   3a20 <printf>
    2360:	e8 6d 15 00 00       	call   38d2 <exit>
    2365:	53                   	push   %ebx
    2366:	53                   	push   %ebx
    2367:	68 8e 47 00 00       	push   $0x478e
    236c:	6a 01                	push   $0x1
    236e:	e8 ad 16 00 00       	call   3a20 <printf>
    2373:	e8 5a 15 00 00       	call   38d2 <exit>
    2378:	50                   	push   %eax
    2379:	50                   	push   %eax
    237a:	68 76 47 00 00       	push   $0x4776
    237f:	6a 01                	push   $0x1
    2381:	e8 9a 16 00 00       	call   3a20 <printf>
    2386:	e8 47 15 00 00       	call   38d2 <exit>
    238b:	50                   	push   %eax
    238c:	50                   	push   %eax
    238d:	68 5e 47 00 00       	push   $0x475e
    2392:	6a 01                	push   $0x1
    2394:	e8 87 16 00 00       	call   3a20 <printf>
    2399:	e8 34 15 00 00       	call   38d2 <exit>
    239e:	50                   	push   %eax
    239f:	50                   	push   %eax
    23a0:	68 42 47 00 00       	push   $0x4742
    23a5:	6a 01                	push   $0x1
    23a7:	e8 74 16 00 00       	call   3a20 <printf>
    23ac:	e8 21 15 00 00       	call   38d2 <exit>
    23b1:	50                   	push   %eax
    23b2:	50                   	push   %eax
    23b3:	68 26 47 00 00       	push   $0x4726
    23b8:	6a 01                	push   $0x1
    23ba:	e8 61 16 00 00       	call   3a20 <printf>
    23bf:	e8 0e 15 00 00       	call   38d2 <exit>
    23c4:	50                   	push   %eax
    23c5:	50                   	push   %eax
    23c6:	68 09 47 00 00       	push   $0x4709
    23cb:	6a 01                	push   $0x1
    23cd:	e8 4e 16 00 00       	call   3a20 <printf>
    23d2:	e8 fb 14 00 00       	call   38d2 <exit>
    23d7:	52                   	push   %edx
    23d8:	52                   	push   %edx
    23d9:	68 ee 46 00 00       	push   $0x46ee
    23de:	6a 01                	push   $0x1
    23e0:	e8 3b 16 00 00       	call   3a20 <printf>
    23e5:	e8 e8 14 00 00       	call   38d2 <exit>
    23ea:	51                   	push   %ecx
    23eb:	51                   	push   %ecx
    23ec:	68 1b 46 00 00       	push   $0x461b
    23f1:	6a 01                	push   $0x1
    23f3:	e8 28 16 00 00       	call   3a20 <printf>
    23f8:	e8 d5 14 00 00       	call   38d2 <exit>
    23fd:	53                   	push   %ebx
    23fe:	53                   	push   %ebx
    23ff:	68 03 46 00 00       	push   $0x4603
    2404:	6a 01                	push   $0x1
    2406:	e8 15 16 00 00       	call   3a20 <printf>
    240b:	e8 c2 14 00 00       	call   38d2 <exit>

00002410 <bigwrite>:
    2410:	55                   	push   %ebp
    2411:	89 e5                	mov    %esp,%ebp
    2413:	56                   	push   %esi
    2414:	53                   	push   %ebx
    2415:	bb f3 01 00 00       	mov    $0x1f3,%ebx
    241a:	83 ec 08             	sub    $0x8,%esp
    241d:	68 d5 47 00 00       	push   $0x47d5
    2422:	6a 01                	push   $0x1
    2424:	e8 f7 15 00 00       	call   3a20 <printf>
    2429:	c7 04 24 e4 47 00 00 	movl   $0x47e4,(%esp)
    2430:	e8 ed 14 00 00       	call   3922 <unlink>
    2435:	83 c4 10             	add    $0x10,%esp
    2438:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    243f:	90                   	nop
    2440:	83 ec 08             	sub    $0x8,%esp
    2443:	68 02 02 00 00       	push   $0x202
    2448:	68 e4 47 00 00       	push   $0x47e4
    244d:	e8 c0 14 00 00       	call   3912 <open>
    2452:	83 c4 10             	add    $0x10,%esp
    2455:	89 c6                	mov    %eax,%esi
    2457:	85 c0                	test   %eax,%eax
    2459:	78 7e                	js     24d9 <bigwrite+0xc9>
    245b:	83 ec 04             	sub    $0x4,%esp
    245e:	53                   	push   %ebx
    245f:	68 00 86 00 00       	push   $0x8600
    2464:	50                   	push   %eax
    2465:	e8 88 14 00 00       	call   38f2 <write>
    246a:	83 c4 10             	add    $0x10,%esp
    246d:	39 d8                	cmp    %ebx,%eax
    246f:	75 55                	jne    24c6 <bigwrite+0xb6>
    2471:	83 ec 04             	sub    $0x4,%esp
    2474:	53                   	push   %ebx
    2475:	68 00 86 00 00       	push   $0x8600
    247a:	56                   	push   %esi
    247b:	e8 72 14 00 00       	call   38f2 <write>
    2480:	83 c4 10             	add    $0x10,%esp
    2483:	39 d8                	cmp    %ebx,%eax
    2485:	75 3f                	jne    24c6 <bigwrite+0xb6>
    2487:	83 ec 0c             	sub    $0xc,%esp
    248a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    2490:	56                   	push   %esi
    2491:	e8 64 14 00 00       	call   38fa <close>
    2496:	c7 04 24 e4 47 00 00 	movl   $0x47e4,(%esp)
    249d:	e8 80 14 00 00       	call   3922 <unlink>
    24a2:	83 c4 10             	add    $0x10,%esp
    24a5:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    24ab:	75 93                	jne    2440 <bigwrite+0x30>
    24ad:	83 ec 08             	sub    $0x8,%esp
    24b0:	68 17 48 00 00       	push   $0x4817
    24b5:	6a 01                	push   $0x1
    24b7:	e8 64 15 00 00       	call   3a20 <printf>
    24bc:	83 c4 10             	add    $0x10,%esp
    24bf:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24c2:	5b                   	pop    %ebx
    24c3:	5e                   	pop    %esi
    24c4:	5d                   	pop    %ebp
    24c5:	c3                   	ret    
    24c6:	50                   	push   %eax
    24c7:	53                   	push   %ebx
    24c8:	68 05 48 00 00       	push   $0x4805
    24cd:	6a 01                	push   $0x1
    24cf:	e8 4c 15 00 00       	call   3a20 <printf>
    24d4:	e8 f9 13 00 00       	call   38d2 <exit>
    24d9:	83 ec 08             	sub    $0x8,%esp
    24dc:	68 ed 47 00 00       	push   $0x47ed
    24e1:	6a 01                	push   $0x1
    24e3:	e8 38 15 00 00       	call   3a20 <printf>
    24e8:	e8 e5 13 00 00       	call   38d2 <exit>
    24ed:	8d 76 00             	lea    0x0(%esi),%esi

000024f0 <bigfile>:
    24f0:	55                   	push   %ebp
    24f1:	89 e5                	mov    %esp,%ebp
    24f3:	57                   	push   %edi
    24f4:	56                   	push   %esi
    24f5:	53                   	push   %ebx
    24f6:	83 ec 14             	sub    $0x14,%esp
    24f9:	68 24 48 00 00       	push   $0x4824
    24fe:	6a 01                	push   $0x1
    2500:	e8 1b 15 00 00       	call   3a20 <printf>
    2505:	c7 04 24 40 48 00 00 	movl   $0x4840,(%esp)
    250c:	e8 11 14 00 00       	call   3922 <unlink>
    2511:	58                   	pop    %eax
    2512:	5a                   	pop    %edx
    2513:	68 02 02 00 00       	push   $0x202
    2518:	68 40 48 00 00       	push   $0x4840
    251d:	e8 f0 13 00 00       	call   3912 <open>
    2522:	83 c4 10             	add    $0x10,%esp
    2525:	85 c0                	test   %eax,%eax
    2527:	0f 88 5e 01 00 00    	js     268b <bigfile+0x19b>
    252d:	89 c6                	mov    %eax,%esi
    252f:	31 db                	xor    %ebx,%ebx
    2531:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2538:	83 ec 04             	sub    $0x4,%esp
    253b:	68 58 02 00 00       	push   $0x258
    2540:	53                   	push   %ebx
    2541:	68 00 86 00 00       	push   $0x8600
    2546:	e8 e5 11 00 00       	call   3730 <memset>
    254b:	83 c4 0c             	add    $0xc,%esp
    254e:	68 58 02 00 00       	push   $0x258
    2553:	68 00 86 00 00       	push   $0x8600
    2558:	56                   	push   %esi
    2559:	e8 94 13 00 00       	call   38f2 <write>
    255e:	83 c4 10             	add    $0x10,%esp
    2561:	3d 58 02 00 00       	cmp    $0x258,%eax
    2566:	0f 85 f8 00 00 00    	jne    2664 <bigfile+0x174>
    256c:	83 c3 01             	add    $0x1,%ebx
    256f:	83 fb 14             	cmp    $0x14,%ebx
    2572:	75 c4                	jne    2538 <bigfile+0x48>
    2574:	83 ec 0c             	sub    $0xc,%esp
    2577:	56                   	push   %esi
    2578:	e8 7d 13 00 00       	call   38fa <close>
    257d:	5e                   	pop    %esi
    257e:	5f                   	pop    %edi
    257f:	6a 00                	push   $0x0
    2581:	68 40 48 00 00       	push   $0x4840
    2586:	e8 87 13 00 00       	call   3912 <open>
    258b:	83 c4 10             	add    $0x10,%esp
    258e:	89 c6                	mov    %eax,%esi
    2590:	85 c0                	test   %eax,%eax
    2592:	0f 88 e0 00 00 00    	js     2678 <bigfile+0x188>
    2598:	31 db                	xor    %ebx,%ebx
    259a:	31 ff                	xor    %edi,%edi
    259c:	eb 30                	jmp    25ce <bigfile+0xde>
    259e:	66 90                	xchg   %ax,%ax
    25a0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    25a5:	0f 85 91 00 00 00    	jne    263c <bigfile+0x14c>
    25ab:	89 fa                	mov    %edi,%edx
    25ad:	0f be 05 00 86 00 00 	movsbl 0x8600,%eax
    25b4:	d1 fa                	sar    %edx
    25b6:	39 d0                	cmp    %edx,%eax
    25b8:	75 6e                	jne    2628 <bigfile+0x138>
    25ba:	0f be 15 2b 87 00 00 	movsbl 0x872b,%edx
    25c1:	39 d0                	cmp    %edx,%eax
    25c3:	75 63                	jne    2628 <bigfile+0x138>
    25c5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
    25cb:	83 c7 01             	add    $0x1,%edi
    25ce:	83 ec 04             	sub    $0x4,%esp
    25d1:	68 2c 01 00 00       	push   $0x12c
    25d6:	68 00 86 00 00       	push   $0x8600
    25db:	56                   	push   %esi
    25dc:	e8 09 13 00 00       	call   38ea <read>
    25e1:	83 c4 10             	add    $0x10,%esp
    25e4:	85 c0                	test   %eax,%eax
    25e6:	78 68                	js     2650 <bigfile+0x160>
    25e8:	75 b6                	jne    25a0 <bigfile+0xb0>
    25ea:	83 ec 0c             	sub    $0xc,%esp
    25ed:	56                   	push   %esi
    25ee:	e8 07 13 00 00       	call   38fa <close>
    25f3:	83 c4 10             	add    $0x10,%esp
    25f6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    25fc:	0f 85 9c 00 00 00    	jne    269e <bigfile+0x1ae>
    2602:	83 ec 0c             	sub    $0xc,%esp
    2605:	68 40 48 00 00       	push   $0x4840
    260a:	e8 13 13 00 00       	call   3922 <unlink>
    260f:	58                   	pop    %eax
    2610:	5a                   	pop    %edx
    2611:	68 cf 48 00 00       	push   $0x48cf
    2616:	6a 01                	push   $0x1
    2618:	e8 03 14 00 00       	call   3a20 <printf>
    261d:	83 c4 10             	add    $0x10,%esp
    2620:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2623:	5b                   	pop    %ebx
    2624:	5e                   	pop    %esi
    2625:	5f                   	pop    %edi
    2626:	5d                   	pop    %ebp
    2627:	c3                   	ret    
    2628:	83 ec 08             	sub    $0x8,%esp
    262b:	68 9c 48 00 00       	push   $0x489c
    2630:	6a 01                	push   $0x1
    2632:	e8 e9 13 00 00       	call   3a20 <printf>
    2637:	e8 96 12 00 00       	call   38d2 <exit>
    263c:	83 ec 08             	sub    $0x8,%esp
    263f:	68 88 48 00 00       	push   $0x4888
    2644:	6a 01                	push   $0x1
    2646:	e8 d5 13 00 00       	call   3a20 <printf>
    264b:	e8 82 12 00 00       	call   38d2 <exit>
    2650:	83 ec 08             	sub    $0x8,%esp
    2653:	68 73 48 00 00       	push   $0x4873
    2658:	6a 01                	push   $0x1
    265a:	e8 c1 13 00 00       	call   3a20 <printf>
    265f:	e8 6e 12 00 00       	call   38d2 <exit>
    2664:	83 ec 08             	sub    $0x8,%esp
    2667:	68 48 48 00 00       	push   $0x4848
    266c:	6a 01                	push   $0x1
    266e:	e8 ad 13 00 00       	call   3a20 <printf>
    2673:	e8 5a 12 00 00       	call   38d2 <exit>
    2678:	53                   	push   %ebx
    2679:	53                   	push   %ebx
    267a:	68 5e 48 00 00       	push   $0x485e
    267f:	6a 01                	push   $0x1
    2681:	e8 9a 13 00 00       	call   3a20 <printf>
    2686:	e8 47 12 00 00       	call   38d2 <exit>
    268b:	50                   	push   %eax
    268c:	50                   	push   %eax
    268d:	68 32 48 00 00       	push   $0x4832
    2692:	6a 01                	push   $0x1
    2694:	e8 87 13 00 00       	call   3a20 <printf>
    2699:	e8 34 12 00 00       	call   38d2 <exit>
    269e:	51                   	push   %ecx
    269f:	51                   	push   %ecx
    26a0:	68 b5 48 00 00       	push   $0x48b5
    26a5:	6a 01                	push   $0x1
    26a7:	e8 74 13 00 00       	call   3a20 <printf>
    26ac:	e8 21 12 00 00       	call   38d2 <exit>
    26b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    26b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    26bf:	90                   	nop

000026c0 <fourteen>:
    26c0:	55                   	push   %ebp
    26c1:	89 e5                	mov    %esp,%ebp
    26c3:	83 ec 10             	sub    $0x10,%esp
    26c6:	68 e0 48 00 00       	push   $0x48e0
    26cb:	6a 01                	push   $0x1
    26cd:	e8 4e 13 00 00       	call   3a20 <printf>
    26d2:	c7 04 24 1b 49 00 00 	movl   $0x491b,(%esp)
    26d9:	e8 5c 12 00 00       	call   393a <mkdir>
    26de:	83 c4 10             	add    $0x10,%esp
    26e1:	85 c0                	test   %eax,%eax
    26e3:	0f 85 97 00 00 00    	jne    2780 <fourteen+0xc0>
    26e9:	83 ec 0c             	sub    $0xc,%esp
    26ec:	68 d8 50 00 00       	push   $0x50d8
    26f1:	e8 44 12 00 00       	call   393a <mkdir>
    26f6:	83 c4 10             	add    $0x10,%esp
    26f9:	85 c0                	test   %eax,%eax
    26fb:	0f 85 de 00 00 00    	jne    27df <fourteen+0x11f>
    2701:	83 ec 08             	sub    $0x8,%esp
    2704:	68 00 02 00 00       	push   $0x200
    2709:	68 28 51 00 00       	push   $0x5128
    270e:	e8 ff 11 00 00       	call   3912 <open>
    2713:	83 c4 10             	add    $0x10,%esp
    2716:	85 c0                	test   %eax,%eax
    2718:	0f 88 ae 00 00 00    	js     27cc <fourteen+0x10c>
    271e:	83 ec 0c             	sub    $0xc,%esp
    2721:	50                   	push   %eax
    2722:	e8 d3 11 00 00       	call   38fa <close>
    2727:	58                   	pop    %eax
    2728:	5a                   	pop    %edx
    2729:	6a 00                	push   $0x0
    272b:	68 98 51 00 00       	push   $0x5198
    2730:	e8 dd 11 00 00       	call   3912 <open>
    2735:	83 c4 10             	add    $0x10,%esp
    2738:	85 c0                	test   %eax,%eax
    273a:	78 7d                	js     27b9 <fourteen+0xf9>
    273c:	83 ec 0c             	sub    $0xc,%esp
    273f:	50                   	push   %eax
    2740:	e8 b5 11 00 00       	call   38fa <close>
    2745:	c7 04 24 0c 49 00 00 	movl   $0x490c,(%esp)
    274c:	e8 e9 11 00 00       	call   393a <mkdir>
    2751:	83 c4 10             	add    $0x10,%esp
    2754:	85 c0                	test   %eax,%eax
    2756:	74 4e                	je     27a6 <fourteen+0xe6>
    2758:	83 ec 0c             	sub    $0xc,%esp
    275b:	68 34 52 00 00       	push   $0x5234
    2760:	e8 d5 11 00 00       	call   393a <mkdir>
    2765:	83 c4 10             	add    $0x10,%esp
    2768:	85 c0                	test   %eax,%eax
    276a:	74 27                	je     2793 <fourteen+0xd3>
    276c:	83 ec 08             	sub    $0x8,%esp
    276f:	68 2a 49 00 00       	push   $0x492a
    2774:	6a 01                	push   $0x1
    2776:	e8 a5 12 00 00       	call   3a20 <printf>
    277b:	83 c4 10             	add    $0x10,%esp
    277e:	c9                   	leave  
    277f:	c3                   	ret    
    2780:	50                   	push   %eax
    2781:	50                   	push   %eax
    2782:	68 ef 48 00 00       	push   $0x48ef
    2787:	6a 01                	push   $0x1
    2789:	e8 92 12 00 00       	call   3a20 <printf>
    278e:	e8 3f 11 00 00       	call   38d2 <exit>
    2793:	50                   	push   %eax
    2794:	50                   	push   %eax
    2795:	68 54 52 00 00       	push   $0x5254
    279a:	6a 01                	push   $0x1
    279c:	e8 7f 12 00 00       	call   3a20 <printf>
    27a1:	e8 2c 11 00 00       	call   38d2 <exit>
    27a6:	52                   	push   %edx
    27a7:	52                   	push   %edx
    27a8:	68 04 52 00 00       	push   $0x5204
    27ad:	6a 01                	push   $0x1
    27af:	e8 6c 12 00 00       	call   3a20 <printf>
    27b4:	e8 19 11 00 00       	call   38d2 <exit>
    27b9:	51                   	push   %ecx
    27ba:	51                   	push   %ecx
    27bb:	68 c8 51 00 00       	push   $0x51c8
    27c0:	6a 01                	push   $0x1
    27c2:	e8 59 12 00 00       	call   3a20 <printf>
    27c7:	e8 06 11 00 00       	call   38d2 <exit>
    27cc:	51                   	push   %ecx
    27cd:	51                   	push   %ecx
    27ce:	68 58 51 00 00       	push   $0x5158
    27d3:	6a 01                	push   $0x1
    27d5:	e8 46 12 00 00       	call   3a20 <printf>
    27da:	e8 f3 10 00 00       	call   38d2 <exit>
    27df:	50                   	push   %eax
    27e0:	50                   	push   %eax
    27e1:	68 f8 50 00 00       	push   $0x50f8
    27e6:	6a 01                	push   $0x1
    27e8:	e8 33 12 00 00       	call   3a20 <printf>
    27ed:	e8 e0 10 00 00       	call   38d2 <exit>
    27f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    27f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002800 <rmdot>:
    2800:	55                   	push   %ebp
    2801:	89 e5                	mov    %esp,%ebp
    2803:	83 ec 10             	sub    $0x10,%esp
    2806:	68 37 49 00 00       	push   $0x4937
    280b:	6a 01                	push   $0x1
    280d:	e8 0e 12 00 00       	call   3a20 <printf>
    2812:	c7 04 24 43 49 00 00 	movl   $0x4943,(%esp)
    2819:	e8 1c 11 00 00       	call   393a <mkdir>
    281e:	83 c4 10             	add    $0x10,%esp
    2821:	85 c0                	test   %eax,%eax
    2823:	0f 85 b0 00 00 00    	jne    28d9 <rmdot+0xd9>
    2829:	83 ec 0c             	sub    $0xc,%esp
    282c:	68 43 49 00 00       	push   $0x4943
    2831:	e8 0c 11 00 00       	call   3942 <chdir>
    2836:	83 c4 10             	add    $0x10,%esp
    2839:	85 c0                	test   %eax,%eax
    283b:	0f 85 1d 01 00 00    	jne    295e <rmdot+0x15e>
    2841:	83 ec 0c             	sub    $0xc,%esp
    2844:	68 ee 45 00 00       	push   $0x45ee
    2849:	e8 d4 10 00 00       	call   3922 <unlink>
    284e:	83 c4 10             	add    $0x10,%esp
    2851:	85 c0                	test   %eax,%eax
    2853:	0f 84 f2 00 00 00    	je     294b <rmdot+0x14b>
    2859:	83 ec 0c             	sub    $0xc,%esp
    285c:	68 ed 45 00 00       	push   $0x45ed
    2861:	e8 bc 10 00 00       	call   3922 <unlink>
    2866:	83 c4 10             	add    $0x10,%esp
    2869:	85 c0                	test   %eax,%eax
    286b:	0f 84 c7 00 00 00    	je     2938 <rmdot+0x138>
    2871:	83 ec 0c             	sub    $0xc,%esp
    2874:	68 c1 3d 00 00       	push   $0x3dc1
    2879:	e8 c4 10 00 00       	call   3942 <chdir>
    287e:	83 c4 10             	add    $0x10,%esp
    2881:	85 c0                	test   %eax,%eax
    2883:	0f 85 9c 00 00 00    	jne    2925 <rmdot+0x125>
    2889:	83 ec 0c             	sub    $0xc,%esp
    288c:	68 8b 49 00 00       	push   $0x498b
    2891:	e8 8c 10 00 00       	call   3922 <unlink>
    2896:	83 c4 10             	add    $0x10,%esp
    2899:	85 c0                	test   %eax,%eax
    289b:	74 75                	je     2912 <rmdot+0x112>
    289d:	83 ec 0c             	sub    $0xc,%esp
    28a0:	68 a9 49 00 00       	push   $0x49a9
    28a5:	e8 78 10 00 00       	call   3922 <unlink>
    28aa:	83 c4 10             	add    $0x10,%esp
    28ad:	85 c0                	test   %eax,%eax
    28af:	74 4e                	je     28ff <rmdot+0xff>
    28b1:	83 ec 0c             	sub    $0xc,%esp
    28b4:	68 43 49 00 00       	push   $0x4943
    28b9:	e8 64 10 00 00       	call   3922 <unlink>
    28be:	83 c4 10             	add    $0x10,%esp
    28c1:	85 c0                	test   %eax,%eax
    28c3:	75 27                	jne    28ec <rmdot+0xec>
    28c5:	83 ec 08             	sub    $0x8,%esp
    28c8:	68 de 49 00 00       	push   $0x49de
    28cd:	6a 01                	push   $0x1
    28cf:	e8 4c 11 00 00       	call   3a20 <printf>
    28d4:	83 c4 10             	add    $0x10,%esp
    28d7:	c9                   	leave  
    28d8:	c3                   	ret    
    28d9:	50                   	push   %eax
    28da:	50                   	push   %eax
    28db:	68 48 49 00 00       	push   $0x4948
    28e0:	6a 01                	push   $0x1
    28e2:	e8 39 11 00 00       	call   3a20 <printf>
    28e7:	e8 e6 0f 00 00       	call   38d2 <exit>
    28ec:	50                   	push   %eax
    28ed:	50                   	push   %eax
    28ee:	68 c9 49 00 00       	push   $0x49c9
    28f3:	6a 01                	push   $0x1
    28f5:	e8 26 11 00 00       	call   3a20 <printf>
    28fa:	e8 d3 0f 00 00       	call   38d2 <exit>
    28ff:	52                   	push   %edx
    2900:	52                   	push   %edx
    2901:	68 b1 49 00 00       	push   $0x49b1
    2906:	6a 01                	push   $0x1
    2908:	e8 13 11 00 00       	call   3a20 <printf>
    290d:	e8 c0 0f 00 00       	call   38d2 <exit>
    2912:	51                   	push   %ecx
    2913:	51                   	push   %ecx
    2914:	68 92 49 00 00       	push   $0x4992
    2919:	6a 01                	push   $0x1
    291b:	e8 00 11 00 00       	call   3a20 <printf>
    2920:	e8 ad 0f 00 00       	call   38d2 <exit>
    2925:	50                   	push   %eax
    2926:	50                   	push   %eax
    2927:	68 c3 3d 00 00       	push   $0x3dc3
    292c:	6a 01                	push   $0x1
    292e:	e8 ed 10 00 00       	call   3a20 <printf>
    2933:	e8 9a 0f 00 00       	call   38d2 <exit>
    2938:	50                   	push   %eax
    2939:	50                   	push   %eax
    293a:	68 7c 49 00 00       	push   $0x497c
    293f:	6a 01                	push   $0x1
    2941:	e8 da 10 00 00       	call   3a20 <printf>
    2946:	e8 87 0f 00 00       	call   38d2 <exit>
    294b:	50                   	push   %eax
    294c:	50                   	push   %eax
    294d:	68 6e 49 00 00       	push   $0x496e
    2952:	6a 01                	push   $0x1
    2954:	e8 c7 10 00 00       	call   3a20 <printf>
    2959:	e8 74 0f 00 00       	call   38d2 <exit>
    295e:	50                   	push   %eax
    295f:	50                   	push   %eax
    2960:	68 5b 49 00 00       	push   $0x495b
    2965:	6a 01                	push   $0x1
    2967:	e8 b4 10 00 00       	call   3a20 <printf>
    296c:	e8 61 0f 00 00       	call   38d2 <exit>
    2971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2978:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    297f:	90                   	nop

00002980 <dirfile>:
    2980:	55                   	push   %ebp
    2981:	89 e5                	mov    %esp,%ebp
    2983:	53                   	push   %ebx
    2984:	83 ec 0c             	sub    $0xc,%esp
    2987:	68 e8 49 00 00       	push   $0x49e8
    298c:	6a 01                	push   $0x1
    298e:	e8 8d 10 00 00       	call   3a20 <printf>
    2993:	5b                   	pop    %ebx
    2994:	58                   	pop    %eax
    2995:	68 00 02 00 00       	push   $0x200
    299a:	68 f5 49 00 00       	push   $0x49f5
    299f:	e8 6e 0f 00 00       	call   3912 <open>
    29a4:	83 c4 10             	add    $0x10,%esp
    29a7:	85 c0                	test   %eax,%eax
    29a9:	0f 88 43 01 00 00    	js     2af2 <dirfile+0x172>
    29af:	83 ec 0c             	sub    $0xc,%esp
    29b2:	50                   	push   %eax
    29b3:	e8 42 0f 00 00       	call   38fa <close>
    29b8:	c7 04 24 f5 49 00 00 	movl   $0x49f5,(%esp)
    29bf:	e8 7e 0f 00 00       	call   3942 <chdir>
    29c4:	83 c4 10             	add    $0x10,%esp
    29c7:	85 c0                	test   %eax,%eax
    29c9:	0f 84 10 01 00 00    	je     2adf <dirfile+0x15f>
    29cf:	83 ec 08             	sub    $0x8,%esp
    29d2:	6a 00                	push   $0x0
    29d4:	68 2e 4a 00 00       	push   $0x4a2e
    29d9:	e8 34 0f 00 00       	call   3912 <open>
    29de:	83 c4 10             	add    $0x10,%esp
    29e1:	85 c0                	test   %eax,%eax
    29e3:	0f 89 e3 00 00 00    	jns    2acc <dirfile+0x14c>
    29e9:	83 ec 08             	sub    $0x8,%esp
    29ec:	68 00 02 00 00       	push   $0x200
    29f1:	68 2e 4a 00 00       	push   $0x4a2e
    29f6:	e8 17 0f 00 00       	call   3912 <open>
    29fb:	83 c4 10             	add    $0x10,%esp
    29fe:	85 c0                	test   %eax,%eax
    2a00:	0f 89 c6 00 00 00    	jns    2acc <dirfile+0x14c>
    2a06:	83 ec 0c             	sub    $0xc,%esp
    2a09:	68 2e 4a 00 00       	push   $0x4a2e
    2a0e:	e8 27 0f 00 00       	call   393a <mkdir>
    2a13:	83 c4 10             	add    $0x10,%esp
    2a16:	85 c0                	test   %eax,%eax
    2a18:	0f 84 46 01 00 00    	je     2b64 <dirfile+0x1e4>
    2a1e:	83 ec 0c             	sub    $0xc,%esp
    2a21:	68 2e 4a 00 00       	push   $0x4a2e
    2a26:	e8 f7 0e 00 00       	call   3922 <unlink>
    2a2b:	83 c4 10             	add    $0x10,%esp
    2a2e:	85 c0                	test   %eax,%eax
    2a30:	0f 84 1b 01 00 00    	je     2b51 <dirfile+0x1d1>
    2a36:	83 ec 08             	sub    $0x8,%esp
    2a39:	68 2e 4a 00 00       	push   $0x4a2e
    2a3e:	68 92 4a 00 00       	push   $0x4a92
    2a43:	e8 ea 0e 00 00       	call   3932 <link>
    2a48:	83 c4 10             	add    $0x10,%esp
    2a4b:	85 c0                	test   %eax,%eax
    2a4d:	0f 84 eb 00 00 00    	je     2b3e <dirfile+0x1be>
    2a53:	83 ec 0c             	sub    $0xc,%esp
    2a56:	68 f5 49 00 00       	push   $0x49f5
    2a5b:	e8 c2 0e 00 00       	call   3922 <unlink>
    2a60:	83 c4 10             	add    $0x10,%esp
    2a63:	85 c0                	test   %eax,%eax
    2a65:	0f 85 c0 00 00 00    	jne    2b2b <dirfile+0x1ab>
    2a6b:	83 ec 08             	sub    $0x8,%esp
    2a6e:	6a 02                	push   $0x2
    2a70:	68 ee 45 00 00       	push   $0x45ee
    2a75:	e8 98 0e 00 00       	call   3912 <open>
    2a7a:	83 c4 10             	add    $0x10,%esp
    2a7d:	85 c0                	test   %eax,%eax
    2a7f:	0f 89 93 00 00 00    	jns    2b18 <dirfile+0x198>
    2a85:	83 ec 08             	sub    $0x8,%esp
    2a88:	6a 00                	push   $0x0
    2a8a:	68 ee 45 00 00       	push   $0x45ee
    2a8f:	e8 7e 0e 00 00       	call   3912 <open>
    2a94:	83 c4 0c             	add    $0xc,%esp
    2a97:	6a 01                	push   $0x1
    2a99:	89 c3                	mov    %eax,%ebx
    2a9b:	68 d1 46 00 00       	push   $0x46d1
    2aa0:	50                   	push   %eax
    2aa1:	e8 4c 0e 00 00       	call   38f2 <write>
    2aa6:	83 c4 10             	add    $0x10,%esp
    2aa9:	85 c0                	test   %eax,%eax
    2aab:	7f 58                	jg     2b05 <dirfile+0x185>
    2aad:	83 ec 0c             	sub    $0xc,%esp
    2ab0:	53                   	push   %ebx
    2ab1:	e8 44 0e 00 00       	call   38fa <close>
    2ab6:	58                   	pop    %eax
    2ab7:	5a                   	pop    %edx
    2ab8:	68 c5 4a 00 00       	push   $0x4ac5
    2abd:	6a 01                	push   $0x1
    2abf:	e8 5c 0f 00 00       	call   3a20 <printf>
    2ac4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2ac7:	83 c4 10             	add    $0x10,%esp
    2aca:	c9                   	leave  
    2acb:	c3                   	ret    
    2acc:	50                   	push   %eax
    2acd:	50                   	push   %eax
    2ace:	68 39 4a 00 00       	push   $0x4a39
    2ad3:	6a 01                	push   $0x1
    2ad5:	e8 46 0f 00 00       	call   3a20 <printf>
    2ada:	e8 f3 0d 00 00       	call   38d2 <exit>
    2adf:	52                   	push   %edx
    2ae0:	52                   	push   %edx
    2ae1:	68 14 4a 00 00       	push   $0x4a14
    2ae6:	6a 01                	push   $0x1
    2ae8:	e8 33 0f 00 00       	call   3a20 <printf>
    2aed:	e8 e0 0d 00 00       	call   38d2 <exit>
    2af2:	51                   	push   %ecx
    2af3:	51                   	push   %ecx
    2af4:	68 fd 49 00 00       	push   $0x49fd
    2af9:	6a 01                	push   $0x1
    2afb:	e8 20 0f 00 00       	call   3a20 <printf>
    2b00:	e8 cd 0d 00 00       	call   38d2 <exit>
    2b05:	51                   	push   %ecx
    2b06:	51                   	push   %ecx
    2b07:	68 b1 4a 00 00       	push   $0x4ab1
    2b0c:	6a 01                	push   $0x1
    2b0e:	e8 0d 0f 00 00       	call   3a20 <printf>
    2b13:	e8 ba 0d 00 00       	call   38d2 <exit>
    2b18:	53                   	push   %ebx
    2b19:	53                   	push   %ebx
    2b1a:	68 a8 52 00 00       	push   $0x52a8
    2b1f:	6a 01                	push   $0x1
    2b21:	e8 fa 0e 00 00       	call   3a20 <printf>
    2b26:	e8 a7 0d 00 00       	call   38d2 <exit>
    2b2b:	50                   	push   %eax
    2b2c:	50                   	push   %eax
    2b2d:	68 99 4a 00 00       	push   $0x4a99
    2b32:	6a 01                	push   $0x1
    2b34:	e8 e7 0e 00 00       	call   3a20 <printf>
    2b39:	e8 94 0d 00 00       	call   38d2 <exit>
    2b3e:	50                   	push   %eax
    2b3f:	50                   	push   %eax
    2b40:	68 88 52 00 00       	push   $0x5288
    2b45:	6a 01                	push   $0x1
    2b47:	e8 d4 0e 00 00       	call   3a20 <printf>
    2b4c:	e8 81 0d 00 00       	call   38d2 <exit>
    2b51:	50                   	push   %eax
    2b52:	50                   	push   %eax
    2b53:	68 74 4a 00 00       	push   $0x4a74
    2b58:	6a 01                	push   $0x1
    2b5a:	e8 c1 0e 00 00       	call   3a20 <printf>
    2b5f:	e8 6e 0d 00 00       	call   38d2 <exit>
    2b64:	50                   	push   %eax
    2b65:	50                   	push   %eax
    2b66:	68 57 4a 00 00       	push   $0x4a57
    2b6b:	6a 01                	push   $0x1
    2b6d:	e8 ae 0e 00 00       	call   3a20 <printf>
    2b72:	e8 5b 0d 00 00       	call   38d2 <exit>
    2b77:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2b7e:	66 90                	xchg   %ax,%ax

00002b80 <iref>:
    2b80:	55                   	push   %ebp
    2b81:	89 e5                	mov    %esp,%ebp
    2b83:	53                   	push   %ebx
    2b84:	bb 33 00 00 00       	mov    $0x33,%ebx
    2b89:	83 ec 0c             	sub    $0xc,%esp
    2b8c:	68 d5 4a 00 00       	push   $0x4ad5
    2b91:	6a 01                	push   $0x1
    2b93:	e8 88 0e 00 00       	call   3a20 <printf>
    2b98:	83 c4 10             	add    $0x10,%esp
    2b9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2b9f:	90                   	nop
    2ba0:	83 ec 0c             	sub    $0xc,%esp
    2ba3:	68 e6 4a 00 00       	push   $0x4ae6
    2ba8:	e8 8d 0d 00 00       	call   393a <mkdir>
    2bad:	83 c4 10             	add    $0x10,%esp
    2bb0:	85 c0                	test   %eax,%eax
    2bb2:	0f 85 bb 00 00 00    	jne    2c73 <iref+0xf3>
    2bb8:	83 ec 0c             	sub    $0xc,%esp
    2bbb:	68 e6 4a 00 00       	push   $0x4ae6
    2bc0:	e8 7d 0d 00 00       	call   3942 <chdir>
    2bc5:	83 c4 10             	add    $0x10,%esp
    2bc8:	85 c0                	test   %eax,%eax
    2bca:	0f 85 b7 00 00 00    	jne    2c87 <iref+0x107>
    2bd0:	83 ec 0c             	sub    $0xc,%esp
    2bd3:	68 9b 41 00 00       	push   $0x419b
    2bd8:	e8 5d 0d 00 00       	call   393a <mkdir>
    2bdd:	59                   	pop    %ecx
    2bde:	58                   	pop    %eax
    2bdf:	68 9b 41 00 00       	push   $0x419b
    2be4:	68 92 4a 00 00       	push   $0x4a92
    2be9:	e8 44 0d 00 00       	call   3932 <link>
    2bee:	58                   	pop    %eax
    2bef:	5a                   	pop    %edx
    2bf0:	68 00 02 00 00       	push   $0x200
    2bf5:	68 9b 41 00 00       	push   $0x419b
    2bfa:	e8 13 0d 00 00       	call   3912 <open>
    2bff:	83 c4 10             	add    $0x10,%esp
    2c02:	85 c0                	test   %eax,%eax
    2c04:	78 0c                	js     2c12 <iref+0x92>
    2c06:	83 ec 0c             	sub    $0xc,%esp
    2c09:	50                   	push   %eax
    2c0a:	e8 eb 0c 00 00       	call   38fa <close>
    2c0f:	83 c4 10             	add    $0x10,%esp
    2c12:	83 ec 08             	sub    $0x8,%esp
    2c15:	68 00 02 00 00       	push   $0x200
    2c1a:	68 d0 46 00 00       	push   $0x46d0
    2c1f:	e8 ee 0c 00 00       	call   3912 <open>
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	85 c0                	test   %eax,%eax
    2c29:	78 0c                	js     2c37 <iref+0xb7>
    2c2b:	83 ec 0c             	sub    $0xc,%esp
    2c2e:	50                   	push   %eax
    2c2f:	e8 c6 0c 00 00       	call   38fa <close>
    2c34:	83 c4 10             	add    $0x10,%esp
    2c37:	83 ec 0c             	sub    $0xc,%esp
    2c3a:	68 d0 46 00 00       	push   $0x46d0
    2c3f:	e8 de 0c 00 00       	call   3922 <unlink>
    2c44:	83 c4 10             	add    $0x10,%esp
    2c47:	83 eb 01             	sub    $0x1,%ebx
    2c4a:	0f 85 50 ff ff ff    	jne    2ba0 <iref+0x20>
    2c50:	83 ec 0c             	sub    $0xc,%esp
    2c53:	68 c1 3d 00 00       	push   $0x3dc1
    2c58:	e8 e5 0c 00 00       	call   3942 <chdir>
    2c5d:	58                   	pop    %eax
    2c5e:	5a                   	pop    %edx
    2c5f:	68 14 4b 00 00       	push   $0x4b14
    2c64:	6a 01                	push   $0x1
    2c66:	e8 b5 0d 00 00       	call   3a20 <printf>
    2c6b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2c6e:	83 c4 10             	add    $0x10,%esp
    2c71:	c9                   	leave  
    2c72:	c3                   	ret    
    2c73:	83 ec 08             	sub    $0x8,%esp
    2c76:	68 ec 4a 00 00       	push   $0x4aec
    2c7b:	6a 01                	push   $0x1
    2c7d:	e8 9e 0d 00 00       	call   3a20 <printf>
    2c82:	e8 4b 0c 00 00       	call   38d2 <exit>
    2c87:	83 ec 08             	sub    $0x8,%esp
    2c8a:	68 00 4b 00 00       	push   $0x4b00
    2c8f:	6a 01                	push   $0x1
    2c91:	e8 8a 0d 00 00       	call   3a20 <printf>
    2c96:	e8 37 0c 00 00       	call   38d2 <exit>
    2c9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2c9f:	90                   	nop

00002ca0 <forktest>:
    2ca0:	55                   	push   %ebp
    2ca1:	89 e5                	mov    %esp,%ebp
    2ca3:	53                   	push   %ebx
    2ca4:	31 db                	xor    %ebx,%ebx
    2ca6:	83 ec 0c             	sub    $0xc,%esp
    2ca9:	68 28 4b 00 00       	push   $0x4b28
    2cae:	6a 01                	push   $0x1
    2cb0:	e8 6b 0d 00 00       	call   3a20 <printf>
    2cb5:	83 c4 10             	add    $0x10,%esp
    2cb8:	eb 13                	jmp    2ccd <forktest+0x2d>
    2cba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2cc0:	74 4a                	je     2d0c <forktest+0x6c>
    2cc2:	83 c3 01             	add    $0x1,%ebx
    2cc5:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    2ccb:	74 6b                	je     2d38 <forktest+0x98>
    2ccd:	e8 f8 0b 00 00       	call   38ca <fork>
    2cd2:	85 c0                	test   %eax,%eax
    2cd4:	79 ea                	jns    2cc0 <forktest+0x20>
    2cd6:	85 db                	test   %ebx,%ebx
    2cd8:	74 14                	je     2cee <forktest+0x4e>
    2cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    2ce0:	e8 f5 0b 00 00       	call   38da <wait>
    2ce5:	85 c0                	test   %eax,%eax
    2ce7:	78 28                	js     2d11 <forktest+0x71>
    2ce9:	83 eb 01             	sub    $0x1,%ebx
    2cec:	75 f2                	jne    2ce0 <forktest+0x40>
    2cee:	e8 e7 0b 00 00       	call   38da <wait>
    2cf3:	83 f8 ff             	cmp    $0xffffffff,%eax
    2cf6:	75 2d                	jne    2d25 <forktest+0x85>
    2cf8:	83 ec 08             	sub    $0x8,%esp
    2cfb:	68 5a 4b 00 00       	push   $0x4b5a
    2d00:	6a 01                	push   $0x1
    2d02:	e8 19 0d 00 00       	call   3a20 <printf>
    2d07:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2d0a:	c9                   	leave  
    2d0b:	c3                   	ret    
    2d0c:	e8 c1 0b 00 00       	call   38d2 <exit>
    2d11:	83 ec 08             	sub    $0x8,%esp
    2d14:	68 33 4b 00 00       	push   $0x4b33
    2d19:	6a 01                	push   $0x1
    2d1b:	e8 00 0d 00 00       	call   3a20 <printf>
    2d20:	e8 ad 0b 00 00       	call   38d2 <exit>
    2d25:	52                   	push   %edx
    2d26:	52                   	push   %edx
    2d27:	68 47 4b 00 00       	push   $0x4b47
    2d2c:	6a 01                	push   $0x1
    2d2e:	e8 ed 0c 00 00       	call   3a20 <printf>
    2d33:	e8 9a 0b 00 00       	call   38d2 <exit>
    2d38:	50                   	push   %eax
    2d39:	50                   	push   %eax
    2d3a:	68 c8 52 00 00       	push   $0x52c8
    2d3f:	6a 01                	push   $0x1
    2d41:	e8 da 0c 00 00       	call   3a20 <printf>
    2d46:	e8 87 0b 00 00       	call   38d2 <exit>
    2d4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d4f:	90                   	nop

00002d50 <sbrktest>:
    2d50:	55                   	push   %ebp
    2d51:	89 e5                	mov    %esp,%ebp
    2d53:	57                   	push   %edi
    2d54:	31 ff                	xor    %edi,%edi
    2d56:	56                   	push   %esi
    2d57:	53                   	push   %ebx
    2d58:	83 ec 54             	sub    $0x54,%esp
    2d5b:	68 68 4b 00 00       	push   $0x4b68
    2d60:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    2d66:	e8 b5 0c 00 00       	call   3a20 <printf>
    2d6b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d72:	e8 e3 0b 00 00       	call   395a <sbrk>
    2d77:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d7e:	89 c3                	mov    %eax,%ebx
    2d80:	e8 d5 0b 00 00       	call   395a <sbrk>
    2d85:	83 c4 10             	add    $0x10,%esp
    2d88:	89 c6                	mov    %eax,%esi
    2d8a:	eb 06                	jmp    2d92 <sbrktest+0x42>
    2d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2d90:	89 c6                	mov    %eax,%esi
    2d92:	83 ec 0c             	sub    $0xc,%esp
    2d95:	6a 01                	push   $0x1
    2d97:	e8 be 0b 00 00       	call   395a <sbrk>
    2d9c:	83 c4 10             	add    $0x10,%esp
    2d9f:	39 f0                	cmp    %esi,%eax
    2da1:	0f 85 84 02 00 00    	jne    302b <sbrktest+0x2db>
    2da7:	83 c7 01             	add    $0x1,%edi
    2daa:	c6 06 01             	movb   $0x1,(%esi)
    2dad:	8d 46 01             	lea    0x1(%esi),%eax
    2db0:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    2db6:	75 d8                	jne    2d90 <sbrktest+0x40>
    2db8:	e8 0d 0b 00 00       	call   38ca <fork>
    2dbd:	89 c7                	mov    %eax,%edi
    2dbf:	85 c0                	test   %eax,%eax
    2dc1:	0f 88 91 03 00 00    	js     3158 <sbrktest+0x408>
    2dc7:	83 ec 0c             	sub    $0xc,%esp
    2dca:	83 c6 02             	add    $0x2,%esi
    2dcd:	6a 01                	push   $0x1
    2dcf:	e8 86 0b 00 00       	call   395a <sbrk>
    2dd4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ddb:	e8 7a 0b 00 00       	call   395a <sbrk>
    2de0:	83 c4 10             	add    $0x10,%esp
    2de3:	39 c6                	cmp    %eax,%esi
    2de5:	0f 85 56 03 00 00    	jne    3141 <sbrktest+0x3f1>
    2deb:	85 ff                	test   %edi,%edi
    2ded:	0f 84 49 03 00 00    	je     313c <sbrktest+0x3ec>
    2df3:	e8 e2 0a 00 00       	call   38da <wait>
    2df8:	83 ec 0c             	sub    $0xc,%esp
    2dfb:	6a 00                	push   $0x0
    2dfd:	e8 58 0b 00 00       	call   395a <sbrk>
    2e02:	89 c6                	mov    %eax,%esi
    2e04:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2e09:	29 f0                	sub    %esi,%eax
    2e0b:	89 04 24             	mov    %eax,(%esp)
    2e0e:	e8 47 0b 00 00       	call   395a <sbrk>
    2e13:	83 c4 10             	add    $0x10,%esp
    2e16:	39 c6                	cmp    %eax,%esi
    2e18:	0f 85 07 03 00 00    	jne    3125 <sbrktest+0x3d5>
    2e1e:	83 ec 0c             	sub    $0xc,%esp
    2e21:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
    2e28:	6a 00                	push   $0x0
    2e2a:	e8 2b 0b 00 00       	call   395a <sbrk>
    2e2f:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
    2e36:	89 c6                	mov    %eax,%esi
    2e38:	e8 1d 0b 00 00       	call   395a <sbrk>
    2e3d:	83 c4 10             	add    $0x10,%esp
    2e40:	83 f8 ff             	cmp    $0xffffffff,%eax
    2e43:	0f 84 c5 02 00 00    	je     310e <sbrktest+0x3be>
    2e49:	83 ec 0c             	sub    $0xc,%esp
    2e4c:	6a 00                	push   $0x0
    2e4e:	e8 07 0b 00 00       	call   395a <sbrk>
    2e53:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    2e59:	83 c4 10             	add    $0x10,%esp
    2e5c:	39 d0                	cmp    %edx,%eax
    2e5e:	0f 85 93 02 00 00    	jne    30f7 <sbrktest+0x3a7>
    2e64:	83 ec 0c             	sub    $0xc,%esp
    2e67:	6a 00                	push   $0x0
    2e69:	e8 ec 0a 00 00       	call   395a <sbrk>
    2e6e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    2e75:	89 c6                	mov    %eax,%esi
    2e77:	e8 de 0a 00 00       	call   395a <sbrk>
    2e7c:	83 c4 10             	add    $0x10,%esp
    2e7f:	89 c7                	mov    %eax,%edi
    2e81:	39 c6                	cmp    %eax,%esi
    2e83:	0f 85 57 02 00 00    	jne    30e0 <sbrktest+0x390>
    2e89:	83 ec 0c             	sub    $0xc,%esp
    2e8c:	6a 00                	push   $0x0
    2e8e:	e8 c7 0a 00 00       	call   395a <sbrk>
    2e93:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    2e99:	83 c4 10             	add    $0x10,%esp
    2e9c:	39 c2                	cmp    %eax,%edx
    2e9e:	0f 85 3c 02 00 00    	jne    30e0 <sbrktest+0x390>
    2ea4:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    2eab:	0f 84 18 02 00 00    	je     30c9 <sbrktest+0x379>
    2eb1:	83 ec 0c             	sub    $0xc,%esp
    2eb4:	6a 00                	push   $0x0
    2eb6:	e8 9f 0a 00 00       	call   395a <sbrk>
    2ebb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ec2:	89 c6                	mov    %eax,%esi
    2ec4:	e8 91 0a 00 00       	call   395a <sbrk>
    2ec9:	89 d9                	mov    %ebx,%ecx
    2ecb:	29 c1                	sub    %eax,%ecx
    2ecd:	89 0c 24             	mov    %ecx,(%esp)
    2ed0:	e8 85 0a 00 00       	call   395a <sbrk>
    2ed5:	83 c4 10             	add    $0x10,%esp
    2ed8:	39 c6                	cmp    %eax,%esi
    2eda:	0f 85 d2 01 00 00    	jne    30b2 <sbrktest+0x362>
    2ee0:	be 00 00 00 80       	mov    $0x80000000,%esi
    2ee5:	8d 76 00             	lea    0x0(%esi),%esi
    2ee8:	e8 65 0a 00 00       	call   3952 <getpid>
    2eed:	89 c7                	mov    %eax,%edi
    2eef:	e8 d6 09 00 00       	call   38ca <fork>
    2ef4:	85 c0                	test   %eax,%eax
    2ef6:	0f 88 9e 01 00 00    	js     309a <sbrktest+0x34a>
    2efc:	0f 84 76 01 00 00    	je     3078 <sbrktest+0x328>
    2f02:	e8 d3 09 00 00       	call   38da <wait>
    2f07:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    2f0d:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    2f13:	75 d3                	jne    2ee8 <sbrktest+0x198>
    2f15:	83 ec 0c             	sub    $0xc,%esp
    2f18:	8d 45 b8             	lea    -0x48(%ebp),%eax
    2f1b:	50                   	push   %eax
    2f1c:	e8 c1 09 00 00       	call   38e2 <pipe>
    2f21:	83 c4 10             	add    $0x10,%esp
    2f24:	85 c0                	test   %eax,%eax
    2f26:	0f 85 34 01 00 00    	jne    3060 <sbrktest+0x310>
    2f2c:	8d 75 c0             	lea    -0x40(%ebp),%esi
    2f2f:	89 f7                	mov    %esi,%edi
    2f31:	e8 94 09 00 00       	call   38ca <fork>
    2f36:	89 07                	mov    %eax,(%edi)
    2f38:	85 c0                	test   %eax,%eax
    2f3a:	0f 84 8f 00 00 00    	je     2fcf <sbrktest+0x27f>
    2f40:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f43:	74 14                	je     2f59 <sbrktest+0x209>
    2f45:	83 ec 04             	sub    $0x4,%esp
    2f48:	8d 45 b7             	lea    -0x49(%ebp),%eax
    2f4b:	6a 01                	push   $0x1
    2f4d:	50                   	push   %eax
    2f4e:	ff 75 b8             	pushl  -0x48(%ebp)
    2f51:	e8 94 09 00 00       	call   38ea <read>
    2f56:	83 c4 10             	add    $0x10,%esp
    2f59:	83 c7 04             	add    $0x4,%edi
    2f5c:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f5f:	39 c7                	cmp    %eax,%edi
    2f61:	75 ce                	jne    2f31 <sbrktest+0x1e1>
    2f63:	83 ec 0c             	sub    $0xc,%esp
    2f66:	68 00 10 00 00       	push   $0x1000
    2f6b:	e8 ea 09 00 00       	call   395a <sbrk>
    2f70:	83 c4 10             	add    $0x10,%esp
    2f73:	89 c7                	mov    %eax,%edi
    2f75:	8b 06                	mov    (%esi),%eax
    2f77:	83 f8 ff             	cmp    $0xffffffff,%eax
    2f7a:	74 11                	je     2f8d <sbrktest+0x23d>
    2f7c:	83 ec 0c             	sub    $0xc,%esp
    2f7f:	50                   	push   %eax
    2f80:	e8 7d 09 00 00       	call   3902 <kill>
    2f85:	e8 50 09 00 00       	call   38da <wait>
    2f8a:	83 c4 10             	add    $0x10,%esp
    2f8d:	83 c6 04             	add    $0x4,%esi
    2f90:	8d 45 e8             	lea    -0x18(%ebp),%eax
    2f93:	39 f0                	cmp    %esi,%eax
    2f95:	75 de                	jne    2f75 <sbrktest+0x225>
    2f97:	83 ff ff             	cmp    $0xffffffff,%edi
    2f9a:	0f 84 a9 00 00 00    	je     3049 <sbrktest+0x2f9>
    2fa0:	83 ec 0c             	sub    $0xc,%esp
    2fa3:	6a 00                	push   $0x0
    2fa5:	e8 b0 09 00 00       	call   395a <sbrk>
    2faa:	83 c4 10             	add    $0x10,%esp
    2fad:	39 c3                	cmp    %eax,%ebx
    2faf:	72 61                	jb     3012 <sbrktest+0x2c2>
    2fb1:	83 ec 08             	sub    $0x8,%esp
    2fb4:	68 10 4c 00 00       	push   $0x4c10
    2fb9:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    2fbf:	e8 5c 0a 00 00       	call   3a20 <printf>
    2fc4:	83 c4 10             	add    $0x10,%esp
    2fc7:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2fca:	5b                   	pop    %ebx
    2fcb:	5e                   	pop    %esi
    2fcc:	5f                   	pop    %edi
    2fcd:	5d                   	pop    %ebp
    2fce:	c3                   	ret    
    2fcf:	83 ec 0c             	sub    $0xc,%esp
    2fd2:	6a 00                	push   $0x0
    2fd4:	e8 81 09 00 00       	call   395a <sbrk>
    2fd9:	89 c2                	mov    %eax,%edx
    2fdb:	b8 00 00 40 06       	mov    $0x6400000,%eax
    2fe0:	29 d0                	sub    %edx,%eax
    2fe2:	89 04 24             	mov    %eax,(%esp)
    2fe5:	e8 70 09 00 00       	call   395a <sbrk>
    2fea:	83 c4 0c             	add    $0xc,%esp
    2fed:	6a 01                	push   $0x1
    2fef:	68 d1 46 00 00       	push   $0x46d1
    2ff4:	ff 75 bc             	pushl  -0x44(%ebp)
    2ff7:	e8 f6 08 00 00       	call   38f2 <write>
    2ffc:	83 c4 10             	add    $0x10,%esp
    2fff:	90                   	nop
    3000:	83 ec 0c             	sub    $0xc,%esp
    3003:	68 e8 03 00 00       	push   $0x3e8
    3008:	e8 55 09 00 00       	call   3962 <sleep>
    300d:	83 c4 10             	add    $0x10,%esp
    3010:	eb ee                	jmp    3000 <sbrktest+0x2b0>
    3012:	83 ec 0c             	sub    $0xc,%esp
    3015:	6a 00                	push   $0x0
    3017:	e8 3e 09 00 00       	call   395a <sbrk>
    301c:	29 c3                	sub    %eax,%ebx
    301e:	89 1c 24             	mov    %ebx,(%esp)
    3021:	e8 34 09 00 00       	call   395a <sbrk>
    3026:	83 c4 10             	add    $0x10,%esp
    3029:	eb 86                	jmp    2fb1 <sbrktest+0x261>
    302b:	83 ec 0c             	sub    $0xc,%esp
    302e:	50                   	push   %eax
    302f:	56                   	push   %esi
    3030:	57                   	push   %edi
    3031:	68 73 4b 00 00       	push   $0x4b73
    3036:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    303c:	e8 df 09 00 00       	call   3a20 <printf>
    3041:	83 c4 20             	add    $0x20,%esp
    3044:	e8 89 08 00 00       	call   38d2 <exit>
    3049:	50                   	push   %eax
    304a:	50                   	push   %eax
    304b:	68 f5 4b 00 00       	push   $0x4bf5
    3050:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3056:	e8 c5 09 00 00       	call   3a20 <printf>
    305b:	e8 72 08 00 00       	call   38d2 <exit>
    3060:	52                   	push   %edx
    3061:	52                   	push   %edx
    3062:	68 b1 40 00 00       	push   $0x40b1
    3067:	6a 01                	push   $0x1
    3069:	e8 b2 09 00 00       	call   3a20 <printf>
    306e:	e8 5f 08 00 00       	call   38d2 <exit>
    3073:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3077:	90                   	nop
    3078:	0f be 06             	movsbl (%esi),%eax
    307b:	50                   	push   %eax
    307c:	56                   	push   %esi
    307d:	68 dc 4b 00 00       	push   $0x4bdc
    3082:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3088:	e8 93 09 00 00       	call   3a20 <printf>
    308d:	89 3c 24             	mov    %edi,(%esp)
    3090:	e8 6d 08 00 00       	call   3902 <kill>
    3095:	e8 38 08 00 00       	call   38d2 <exit>
    309a:	83 ec 08             	sub    $0x8,%esp
    309d:	68 b9 4c 00 00       	push   $0x4cb9
    30a2:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    30a8:	e8 73 09 00 00       	call   3a20 <printf>
    30ad:	e8 20 08 00 00       	call   38d2 <exit>
    30b2:	50                   	push   %eax
    30b3:	56                   	push   %esi
    30b4:	68 bc 53 00 00       	push   $0x53bc
    30b9:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    30bf:	e8 5c 09 00 00       	call   3a20 <printf>
    30c4:	e8 09 08 00 00       	call   38d2 <exit>
    30c9:	51                   	push   %ecx
    30ca:	51                   	push   %ecx
    30cb:	68 8c 53 00 00       	push   $0x538c
    30d0:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    30d6:	e8 45 09 00 00       	call   3a20 <printf>
    30db:	e8 f2 07 00 00       	call   38d2 <exit>
    30e0:	57                   	push   %edi
    30e1:	56                   	push   %esi
    30e2:	68 64 53 00 00       	push   $0x5364
    30e7:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    30ed:	e8 2e 09 00 00       	call   3a20 <printf>
    30f2:	e8 db 07 00 00       	call   38d2 <exit>
    30f7:	50                   	push   %eax
    30f8:	56                   	push   %esi
    30f9:	68 2c 53 00 00       	push   $0x532c
    30fe:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3104:	e8 17 09 00 00       	call   3a20 <printf>
    3109:	e8 c4 07 00 00       	call   38d2 <exit>
    310e:	53                   	push   %ebx
    310f:	53                   	push   %ebx
    3110:	68 c1 4b 00 00       	push   $0x4bc1
    3115:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    311b:	e8 00 09 00 00       	call   3a20 <printf>
    3120:	e8 ad 07 00 00       	call   38d2 <exit>
    3125:	56                   	push   %esi
    3126:	56                   	push   %esi
    3127:	68 ec 52 00 00       	push   $0x52ec
    312c:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3132:	e8 e9 08 00 00       	call   3a20 <printf>
    3137:	e8 96 07 00 00       	call   38d2 <exit>
    313c:	e8 91 07 00 00       	call   38d2 <exit>
    3141:	57                   	push   %edi
    3142:	57                   	push   %edi
    3143:	68 a5 4b 00 00       	push   $0x4ba5
    3148:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    314e:	e8 cd 08 00 00       	call   3a20 <printf>
    3153:	e8 7a 07 00 00       	call   38d2 <exit>
    3158:	50                   	push   %eax
    3159:	50                   	push   %eax
    315a:	68 8e 4b 00 00       	push   $0x4b8e
    315f:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3165:	e8 b6 08 00 00       	call   3a20 <printf>
    316a:	e8 63 07 00 00       	call   38d2 <exit>
    316f:	90                   	nop

00003170 <validateint>:
    3170:	c3                   	ret    
    3171:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3178:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    317f:	90                   	nop

00003180 <validatetest>:
    3180:	55                   	push   %ebp
    3181:	89 e5                	mov    %esp,%ebp
    3183:	56                   	push   %esi
    3184:	31 f6                	xor    %esi,%esi
    3186:	53                   	push   %ebx
    3187:	83 ec 08             	sub    $0x8,%esp
    318a:	68 1e 4c 00 00       	push   $0x4c1e
    318f:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3195:	e8 86 08 00 00       	call   3a20 <printf>
    319a:	83 c4 10             	add    $0x10,%esp
    319d:	8d 76 00             	lea    0x0(%esi),%esi
    31a0:	e8 25 07 00 00       	call   38ca <fork>
    31a5:	89 c3                	mov    %eax,%ebx
    31a7:	85 c0                	test   %eax,%eax
    31a9:	74 63                	je     320e <validatetest+0x8e>
    31ab:	83 ec 0c             	sub    $0xc,%esp
    31ae:	6a 00                	push   $0x0
    31b0:	e8 ad 07 00 00       	call   3962 <sleep>
    31b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31bc:	e8 a1 07 00 00       	call   3962 <sleep>
    31c1:	89 1c 24             	mov    %ebx,(%esp)
    31c4:	e8 39 07 00 00       	call   3902 <kill>
    31c9:	e8 0c 07 00 00       	call   38da <wait>
    31ce:	58                   	pop    %eax
    31cf:	5a                   	pop    %edx
    31d0:	56                   	push   %esi
    31d1:	68 2d 4c 00 00       	push   $0x4c2d
    31d6:	e8 57 07 00 00       	call   3932 <link>
    31db:	83 c4 10             	add    $0x10,%esp
    31de:	83 f8 ff             	cmp    $0xffffffff,%eax
    31e1:	75 30                	jne    3213 <validatetest+0x93>
    31e3:	81 c6 00 10 00 00    	add    $0x1000,%esi
    31e9:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    31ef:	75 af                	jne    31a0 <validatetest+0x20>
    31f1:	83 ec 08             	sub    $0x8,%esp
    31f4:	68 51 4c 00 00       	push   $0x4c51
    31f9:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    31ff:	e8 1c 08 00 00       	call   3a20 <printf>
    3204:	83 c4 10             	add    $0x10,%esp
    3207:	8d 65 f8             	lea    -0x8(%ebp),%esp
    320a:	5b                   	pop    %ebx
    320b:	5e                   	pop    %esi
    320c:	5d                   	pop    %ebp
    320d:	c3                   	ret    
    320e:	e8 bf 06 00 00       	call   38d2 <exit>
    3213:	83 ec 08             	sub    $0x8,%esp
    3216:	68 38 4c 00 00       	push   $0x4c38
    321b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3221:	e8 fa 07 00 00       	call   3a20 <printf>
    3226:	e8 a7 06 00 00       	call   38d2 <exit>
    322b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    322f:	90                   	nop

00003230 <bsstest>:
    3230:	55                   	push   %ebp
    3231:	89 e5                	mov    %esp,%ebp
    3233:	83 ec 10             	sub    $0x10,%esp
    3236:	68 5e 4c 00 00       	push   $0x4c5e
    323b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3241:	e8 da 07 00 00       	call   3a20 <printf>
    3246:	83 c4 10             	add    $0x10,%esp
    3249:	31 c0                	xor    %eax,%eax
    324b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    324f:	90                   	nop
    3250:	80 b8 e0 5e 00 00 00 	cmpb   $0x0,0x5ee0(%eax)
    3257:	75 22                	jne    327b <bsstest+0x4b>
    3259:	83 c0 01             	add    $0x1,%eax
    325c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3261:	75 ed                	jne    3250 <bsstest+0x20>
    3263:	83 ec 08             	sub    $0x8,%esp
    3266:	68 79 4c 00 00       	push   $0x4c79
    326b:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3271:	e8 aa 07 00 00       	call   3a20 <printf>
    3276:	83 c4 10             	add    $0x10,%esp
    3279:	c9                   	leave  
    327a:	c3                   	ret    
    327b:	83 ec 08             	sub    $0x8,%esp
    327e:	68 68 4c 00 00       	push   $0x4c68
    3283:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3289:	e8 92 07 00 00       	call   3a20 <printf>
    328e:	e8 3f 06 00 00       	call   38d2 <exit>
    3293:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    329a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000032a0 <bigargtest>:
    32a0:	55                   	push   %ebp
    32a1:	89 e5                	mov    %esp,%ebp
    32a3:	83 ec 14             	sub    $0x14,%esp
    32a6:	68 86 4c 00 00       	push   $0x4c86
    32ab:	e8 72 06 00 00       	call   3922 <unlink>
    32b0:	e8 15 06 00 00       	call   38ca <fork>
    32b5:	83 c4 10             	add    $0x10,%esp
    32b8:	85 c0                	test   %eax,%eax
    32ba:	74 44                	je     3300 <bigargtest+0x60>
    32bc:	0f 88 c5 00 00 00    	js     3387 <bigargtest+0xe7>
    32c2:	e8 13 06 00 00       	call   38da <wait>
    32c7:	83 ec 08             	sub    $0x8,%esp
    32ca:	6a 00                	push   $0x0
    32cc:	68 86 4c 00 00       	push   $0x4c86
    32d1:	e8 3c 06 00 00       	call   3912 <open>
    32d6:	83 c4 10             	add    $0x10,%esp
    32d9:	85 c0                	test   %eax,%eax
    32db:	0f 88 8f 00 00 00    	js     3370 <bigargtest+0xd0>
    32e1:	83 ec 0c             	sub    $0xc,%esp
    32e4:	50                   	push   %eax
    32e5:	e8 10 06 00 00       	call   38fa <close>
    32ea:	c7 04 24 86 4c 00 00 	movl   $0x4c86,(%esp)
    32f1:	e8 2c 06 00 00       	call   3922 <unlink>
    32f6:	83 c4 10             	add    $0x10,%esp
    32f9:	c9                   	leave  
    32fa:	c3                   	ret    
    32fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    32ff:	90                   	nop
    3300:	c7 04 85 40 5e 00 00 	movl   $0x53e0,0x5e40(,%eax,4)
    3307:	e0 53 00 00 
    330b:	83 c0 01             	add    $0x1,%eax
    330e:	83 f8 1f             	cmp    $0x1f,%eax
    3311:	75 ed                	jne    3300 <bigargtest+0x60>
    3313:	51                   	push   %ecx
    3314:	51                   	push   %ecx
    3315:	68 90 4c 00 00       	push   $0x4c90
    331a:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3320:	c7 05 bc 5e 00 00 00 	movl   $0x0,0x5ebc
    3327:	00 00 00 
    332a:	e8 f1 06 00 00       	call   3a20 <printf>
    332f:	58                   	pop    %eax
    3330:	5a                   	pop    %edx
    3331:	68 40 5e 00 00       	push   $0x5e40
    3336:	68 5d 3e 00 00       	push   $0x3e5d
    333b:	e8 ca 05 00 00       	call   390a <exec>
    3340:	59                   	pop    %ecx
    3341:	58                   	pop    %eax
    3342:	68 9d 4c 00 00       	push   $0x4c9d
    3347:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    334d:	e8 ce 06 00 00       	call   3a20 <printf>
    3352:	58                   	pop    %eax
    3353:	5a                   	pop    %edx
    3354:	68 00 02 00 00       	push   $0x200
    3359:	68 86 4c 00 00       	push   $0x4c86
    335e:	e8 af 05 00 00       	call   3912 <open>
    3363:	89 04 24             	mov    %eax,(%esp)
    3366:	e8 8f 05 00 00       	call   38fa <close>
    336b:	e8 62 05 00 00       	call   38d2 <exit>
    3370:	50                   	push   %eax
    3371:	50                   	push   %eax
    3372:	68 c6 4c 00 00       	push   $0x4cc6
    3377:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    337d:	e8 9e 06 00 00       	call   3a20 <printf>
    3382:	e8 4b 05 00 00       	call   38d2 <exit>
    3387:	52                   	push   %edx
    3388:	52                   	push   %edx
    3389:	68 ad 4c 00 00       	push   $0x4cad
    338e:	ff 35 0c 5e 00 00    	pushl  0x5e0c
    3394:	e8 87 06 00 00       	call   3a20 <printf>
    3399:	e8 34 05 00 00       	call   38d2 <exit>
    339e:	66 90                	xchg   %ax,%ax

000033a0 <fsfull>:
    33a0:	55                   	push   %ebp
    33a1:	89 e5                	mov    %esp,%ebp
    33a3:	57                   	push   %edi
    33a4:	56                   	push   %esi
    33a5:	31 f6                	xor    %esi,%esi
    33a7:	53                   	push   %ebx
    33a8:	83 ec 54             	sub    $0x54,%esp
    33ab:	68 db 4c 00 00       	push   $0x4cdb
    33b0:	6a 01                	push   $0x1
    33b2:	e8 69 06 00 00       	call   3a20 <printf>
    33b7:	83 c4 10             	add    $0x10,%esp
    33ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    33c0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    33c5:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    33ca:	83 ec 04             	sub    $0x4,%esp
    33cd:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    33d1:	f7 e6                	mul    %esi
    33d3:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    33d7:	c1 ea 06             	shr    $0x6,%edx
    33da:	8d 42 30             	lea    0x30(%edx),%eax
    33dd:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    33e3:	88 45 a9             	mov    %al,-0x57(%ebp)
    33e6:	89 f0                	mov    %esi,%eax
    33e8:	29 d0                	sub    %edx,%eax
    33ea:	89 c2                	mov    %eax,%edx
    33ec:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33f1:	f7 e2                	mul    %edx
    33f3:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    33f8:	c1 ea 05             	shr    $0x5,%edx
    33fb:	83 c2 30             	add    $0x30,%edx
    33fe:	88 55 aa             	mov    %dl,-0x56(%ebp)
    3401:	f7 e6                	mul    %esi
    3403:	89 f0                	mov    %esi,%eax
    3405:	c1 ea 05             	shr    $0x5,%edx
    3408:	6b d2 64             	imul   $0x64,%edx,%edx
    340b:	29 d0                	sub    %edx,%eax
    340d:	f7 e1                	mul    %ecx
    340f:	89 f0                	mov    %esi,%eax
    3411:	c1 ea 03             	shr    $0x3,%edx
    3414:	83 c2 30             	add    $0x30,%edx
    3417:	88 55 ab             	mov    %dl,-0x55(%ebp)
    341a:	f7 e1                	mul    %ecx
    341c:	89 f1                	mov    %esi,%ecx
    341e:	c1 ea 03             	shr    $0x3,%edx
    3421:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3424:	01 c0                	add    %eax,%eax
    3426:	29 c1                	sub    %eax,%ecx
    3428:	89 c8                	mov    %ecx,%eax
    342a:	83 c0 30             	add    $0x30,%eax
    342d:	88 45 ac             	mov    %al,-0x54(%ebp)
    3430:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3433:	50                   	push   %eax
    3434:	68 e8 4c 00 00       	push   $0x4ce8
    3439:	6a 01                	push   $0x1
    343b:	e8 e0 05 00 00       	call   3a20 <printf>
    3440:	58                   	pop    %eax
    3441:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3444:	5a                   	pop    %edx
    3445:	68 02 02 00 00       	push   $0x202
    344a:	50                   	push   %eax
    344b:	e8 c2 04 00 00       	call   3912 <open>
    3450:	83 c4 10             	add    $0x10,%esp
    3453:	89 c7                	mov    %eax,%edi
    3455:	85 c0                	test   %eax,%eax
    3457:	78 4d                	js     34a6 <fsfull+0x106>
    3459:	31 db                	xor    %ebx,%ebx
    345b:	eb 05                	jmp    3462 <fsfull+0xc2>
    345d:	8d 76 00             	lea    0x0(%esi),%esi
    3460:	01 c3                	add    %eax,%ebx
    3462:	83 ec 04             	sub    $0x4,%esp
    3465:	68 00 02 00 00       	push   $0x200
    346a:	68 00 86 00 00       	push   $0x8600
    346f:	57                   	push   %edi
    3470:	e8 7d 04 00 00       	call   38f2 <write>
    3475:	83 c4 10             	add    $0x10,%esp
    3478:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    347d:	7f e1                	jg     3460 <fsfull+0xc0>
    347f:	83 ec 04             	sub    $0x4,%esp
    3482:	53                   	push   %ebx
    3483:	68 04 4d 00 00       	push   $0x4d04
    3488:	6a 01                	push   $0x1
    348a:	e8 91 05 00 00       	call   3a20 <printf>
    348f:	89 3c 24             	mov    %edi,(%esp)
    3492:	e8 63 04 00 00       	call   38fa <close>
    3497:	83 c4 10             	add    $0x10,%esp
    349a:	85 db                	test   %ebx,%ebx
    349c:	74 1e                	je     34bc <fsfull+0x11c>
    349e:	83 c6 01             	add    $0x1,%esi
    34a1:	e9 1a ff ff ff       	jmp    33c0 <fsfull+0x20>
    34a6:	83 ec 04             	sub    $0x4,%esp
    34a9:	8d 45 a8             	lea    -0x58(%ebp),%eax
    34ac:	50                   	push   %eax
    34ad:	68 f4 4c 00 00       	push   $0x4cf4
    34b2:	6a 01                	push   $0x1
    34b4:	e8 67 05 00 00       	call   3a20 <printf>
    34b9:	83 c4 10             	add    $0x10,%esp
    34bc:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    34c1:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    34c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    34cd:	8d 76 00             	lea    0x0(%esi),%esi
    34d0:	89 f0                	mov    %esi,%eax
    34d2:	89 f1                	mov    %esi,%ecx
    34d4:	83 ec 0c             	sub    $0xc,%esp
    34d7:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    34db:	f7 ef                	imul   %edi
    34dd:	c1 f9 1f             	sar    $0x1f,%ecx
    34e0:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    34e4:	c1 fa 06             	sar    $0x6,%edx
    34e7:	29 ca                	sub    %ecx,%edx
    34e9:	8d 42 30             	lea    0x30(%edx),%eax
    34ec:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    34f2:	88 45 a9             	mov    %al,-0x57(%ebp)
    34f5:	89 f0                	mov    %esi,%eax
    34f7:	29 d0                	sub    %edx,%eax
    34f9:	f7 e3                	mul    %ebx
    34fb:	89 f0                	mov    %esi,%eax
    34fd:	c1 ea 05             	shr    $0x5,%edx
    3500:	83 c2 30             	add    $0x30,%edx
    3503:	88 55 aa             	mov    %dl,-0x56(%ebp)
    3506:	f7 eb                	imul   %ebx
    3508:	89 f0                	mov    %esi,%eax
    350a:	c1 fa 05             	sar    $0x5,%edx
    350d:	29 ca                	sub    %ecx,%edx
    350f:	6b d2 64             	imul   $0x64,%edx,%edx
    3512:	29 d0                	sub    %edx,%eax
    3514:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    3519:	f7 e2                	mul    %edx
    351b:	89 f0                	mov    %esi,%eax
    351d:	c1 ea 03             	shr    $0x3,%edx
    3520:	83 c2 30             	add    $0x30,%edx
    3523:	88 55 ab             	mov    %dl,-0x55(%ebp)
    3526:	ba 67 66 66 66       	mov    $0x66666667,%edx
    352b:	f7 ea                	imul   %edx
    352d:	c1 fa 02             	sar    $0x2,%edx
    3530:	29 ca                	sub    %ecx,%edx
    3532:	89 f1                	mov    %esi,%ecx
    3534:	83 ee 01             	sub    $0x1,%esi
    3537:	8d 04 92             	lea    (%edx,%edx,4),%eax
    353a:	01 c0                	add    %eax,%eax
    353c:	29 c1                	sub    %eax,%ecx
    353e:	89 c8                	mov    %ecx,%eax
    3540:	83 c0 30             	add    $0x30,%eax
    3543:	88 45 ac             	mov    %al,-0x54(%ebp)
    3546:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3549:	50                   	push   %eax
    354a:	e8 d3 03 00 00       	call   3922 <unlink>
    354f:	83 c4 10             	add    $0x10,%esp
    3552:	83 fe ff             	cmp    $0xffffffff,%esi
    3555:	0f 85 75 ff ff ff    	jne    34d0 <fsfull+0x130>
    355b:	83 ec 08             	sub    $0x8,%esp
    355e:	68 14 4d 00 00       	push   $0x4d14
    3563:	6a 01                	push   $0x1
    3565:	e8 b6 04 00 00       	call   3a20 <printf>
    356a:	83 c4 10             	add    $0x10,%esp
    356d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3570:	5b                   	pop    %ebx
    3571:	5e                   	pop    %esi
    3572:	5f                   	pop    %edi
    3573:	5d                   	pop    %ebp
    3574:	c3                   	ret    
    3575:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    357c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003580 <uio>:
    3580:	55                   	push   %ebp
    3581:	89 e5                	mov    %esp,%ebp
    3583:	83 ec 10             	sub    $0x10,%esp
    3586:	68 2a 4d 00 00       	push   $0x4d2a
    358b:	6a 01                	push   $0x1
    358d:	e8 8e 04 00 00       	call   3a20 <printf>
    3592:	e8 33 03 00 00       	call   38ca <fork>
    3597:	83 c4 10             	add    $0x10,%esp
    359a:	85 c0                	test   %eax,%eax
    359c:	74 1b                	je     35b9 <uio+0x39>
    359e:	78 3d                	js     35dd <uio+0x5d>
    35a0:	e8 35 03 00 00       	call   38da <wait>
    35a5:	83 ec 08             	sub    $0x8,%esp
    35a8:	68 34 4d 00 00       	push   $0x4d34
    35ad:	6a 01                	push   $0x1
    35af:	e8 6c 04 00 00       	call   3a20 <printf>
    35b4:	83 c4 10             	add    $0x10,%esp
    35b7:	c9                   	leave  
    35b8:	c3                   	ret    
    35b9:	b8 09 00 00 00       	mov    $0x9,%eax
    35be:	ba 70 00 00 00       	mov    $0x70,%edx
    35c3:	ee                   	out    %al,(%dx)
    35c4:	ba 71 00 00 00       	mov    $0x71,%edx
    35c9:	ec                   	in     (%dx),%al
    35ca:	52                   	push   %edx
    35cb:	52                   	push   %edx
    35cc:	68 c0 54 00 00       	push   $0x54c0
    35d1:	6a 01                	push   $0x1
    35d3:	e8 48 04 00 00       	call   3a20 <printf>
    35d8:	e8 f5 02 00 00       	call   38d2 <exit>
    35dd:	50                   	push   %eax
    35de:	50                   	push   %eax
    35df:	68 b9 4c 00 00       	push   $0x4cb9
    35e4:	6a 01                	push   $0x1
    35e6:	e8 35 04 00 00       	call   3a20 <printf>
    35eb:	e8 e2 02 00 00       	call   38d2 <exit>

000035f0 <argptest>:
    35f0:	55                   	push   %ebp
    35f1:	89 e5                	mov    %esp,%ebp
    35f3:	53                   	push   %ebx
    35f4:	83 ec 0c             	sub    $0xc,%esp
    35f7:	6a 00                	push   $0x0
    35f9:	68 43 4d 00 00       	push   $0x4d43
    35fe:	e8 0f 03 00 00       	call   3912 <open>
    3603:	83 c4 10             	add    $0x10,%esp
    3606:	85 c0                	test   %eax,%eax
    3608:	78 39                	js     3643 <argptest+0x53>
    360a:	83 ec 0c             	sub    $0xc,%esp
    360d:	89 c3                	mov    %eax,%ebx
    360f:	6a 00                	push   $0x0
    3611:	e8 44 03 00 00       	call   395a <sbrk>
    3616:	83 c4 0c             	add    $0xc,%esp
    3619:	83 e8 01             	sub    $0x1,%eax
    361c:	6a ff                	push   $0xffffffff
    361e:	50                   	push   %eax
    361f:	53                   	push   %ebx
    3620:	e8 c5 02 00 00       	call   38ea <read>
    3625:	89 1c 24             	mov    %ebx,(%esp)
    3628:	e8 cd 02 00 00       	call   38fa <close>
    362d:	58                   	pop    %eax
    362e:	5a                   	pop    %edx
    362f:	68 55 4d 00 00       	push   $0x4d55
    3634:	6a 01                	push   $0x1
    3636:	e8 e5 03 00 00       	call   3a20 <printf>
    363b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    363e:	83 c4 10             	add    $0x10,%esp
    3641:	c9                   	leave  
    3642:	c3                   	ret    
    3643:	51                   	push   %ecx
    3644:	51                   	push   %ecx
    3645:	68 48 4d 00 00       	push   $0x4d48
    364a:	6a 02                	push   $0x2
    364c:	e8 cf 03 00 00       	call   3a20 <printf>
    3651:	e8 7c 02 00 00       	call   38d2 <exit>
    3656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    365d:	8d 76 00             	lea    0x0(%esi),%esi

00003660 <rand>:
    3660:	69 05 08 5e 00 00 0d 	imul   $0x19660d,0x5e08,%eax
    3667:	66 19 00 
    366a:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    366f:	a3 08 5e 00 00       	mov    %eax,0x5e08
    3674:	c3                   	ret    
    3675:	66 90                	xchg   %ax,%ax
    3677:	66 90                	xchg   %ax,%ax
    3679:	66 90                	xchg   %ax,%ax
    367b:	66 90                	xchg   %ax,%ax
    367d:	66 90                	xchg   %ax,%ax
    367f:	90                   	nop

00003680 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
    3680:	55                   	push   %ebp
    3681:	89 e5                	mov    %esp,%ebp
    3683:	53                   	push   %ebx
    3684:	8b 45 08             	mov    0x8(%ebp),%eax
    3687:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    368a:	89 c2                	mov    %eax,%edx
    368c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3690:	83 c1 01             	add    $0x1,%ecx
    3693:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3697:	83 c2 01             	add    $0x1,%edx
    369a:	84 db                	test   %bl,%bl
    369c:	88 5a ff             	mov    %bl,-0x1(%edx)
    369f:	75 ef                	jne    3690 <strcpy+0x10>
    ;
  return os;
}
    36a1:	5b                   	pop    %ebx
    36a2:	5d                   	pop    %ebp
    36a3:	c3                   	ret    
    36a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    36aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000036b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
    36b3:	53                   	push   %ebx
    36b4:	8b 55 08             	mov    0x8(%ebp),%edx
    36b7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    36ba:	0f b6 02             	movzbl (%edx),%eax
    36bd:	0f b6 19             	movzbl (%ecx),%ebx
    36c0:	84 c0                	test   %al,%al
    36c2:	75 1c                	jne    36e0 <strcmp+0x30>
    36c4:	eb 2a                	jmp    36f0 <strcmp+0x40>
    36c6:	8d 76 00             	lea    0x0(%esi),%esi
    36c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    36d0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    36d3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    36d6:	83 c1 01             	add    $0x1,%ecx
    36d9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    36dc:	84 c0                	test   %al,%al
    36de:	74 10                	je     36f0 <strcmp+0x40>
    36e0:	38 d8                	cmp    %bl,%al
    36e2:	74 ec                	je     36d0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    36e4:	29 d8                	sub    %ebx,%eax
}
    36e6:	5b                   	pop    %ebx
    36e7:	5d                   	pop    %ebp
    36e8:	c3                   	ret    
    36e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36f0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    36f2:	29 d8                	sub    %ebx,%eax
}
    36f4:	5b                   	pop    %ebx
    36f5:	5d                   	pop    %ebp
    36f6:	c3                   	ret    
    36f7:	89 f6                	mov    %esi,%esi
    36f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003700 <strlen>:

uint
strlen(char *s)
{
    3700:	55                   	push   %ebp
    3701:	89 e5                	mov    %esp,%ebp
    3703:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3706:	80 39 00             	cmpb   $0x0,(%ecx)
    3709:	74 15                	je     3720 <strlen+0x20>
    370b:	31 d2                	xor    %edx,%edx
    370d:	8d 76 00             	lea    0x0(%esi),%esi
    3710:	83 c2 01             	add    $0x1,%edx
    3713:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3717:	89 d0                	mov    %edx,%eax
    3719:	75 f5                	jne    3710 <strlen+0x10>
    ;
  return n;
}
    371b:	5d                   	pop    %ebp
    371c:	c3                   	ret    
    371d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    3720:	31 c0                	xor    %eax,%eax
}
    3722:	5d                   	pop    %ebp
    3723:	c3                   	ret    
    3724:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    372a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003730 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3730:	55                   	push   %ebp
    3731:	89 e5                	mov    %esp,%ebp
    3733:	57                   	push   %edi
    3734:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3737:	8b 4d 10             	mov    0x10(%ebp),%ecx
    373a:	8b 45 0c             	mov    0xc(%ebp),%eax
    373d:	89 d7                	mov    %edx,%edi
    373f:	fc                   	cld    
    3740:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3742:	89 d0                	mov    %edx,%eax
    3744:	5f                   	pop    %edi
    3745:	5d                   	pop    %ebp
    3746:	c3                   	ret    
    3747:	89 f6                	mov    %esi,%esi
    3749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003750 <strchr>:

char*
strchr(const char *s, char c)
{
    3750:	55                   	push   %ebp
    3751:	89 e5                	mov    %esp,%ebp
    3753:	53                   	push   %ebx
    3754:	8b 45 08             	mov    0x8(%ebp),%eax
    3757:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    375a:	0f b6 10             	movzbl (%eax),%edx
    375d:	84 d2                	test   %dl,%dl
    375f:	74 1d                	je     377e <strchr+0x2e>
    if(*s == c)
    3761:	38 d3                	cmp    %dl,%bl
    3763:	89 d9                	mov    %ebx,%ecx
    3765:	75 0d                	jne    3774 <strchr+0x24>
    3767:	eb 17                	jmp    3780 <strchr+0x30>
    3769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3770:	38 ca                	cmp    %cl,%dl
    3772:	74 0c                	je     3780 <strchr+0x30>
  for(; *s; s++)
    3774:	83 c0 01             	add    $0x1,%eax
    3777:	0f b6 10             	movzbl (%eax),%edx
    377a:	84 d2                	test   %dl,%dl
    377c:	75 f2                	jne    3770 <strchr+0x20>
      return (char*)s;
  return 0;
    377e:	31 c0                	xor    %eax,%eax
}
    3780:	5b                   	pop    %ebx
    3781:	5d                   	pop    %ebp
    3782:	c3                   	ret    
    3783:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3789:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003790 <gets>:

char*
gets(char *buf, int max)
{
    3790:	55                   	push   %ebp
    3791:	89 e5                	mov    %esp,%ebp
    3793:	57                   	push   %edi
    3794:	56                   	push   %esi
    3795:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3796:	31 f6                	xor    %esi,%esi
    3798:	89 f3                	mov    %esi,%ebx
{
    379a:	83 ec 1c             	sub    $0x1c,%esp
    379d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    37a0:	eb 2f                	jmp    37d1 <gets+0x41>
    37a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    37a8:	8d 45 e7             	lea    -0x19(%ebp),%eax
    37ab:	83 ec 04             	sub    $0x4,%esp
    37ae:	6a 01                	push   $0x1
    37b0:	50                   	push   %eax
    37b1:	6a 00                	push   $0x0
    37b3:	e8 32 01 00 00       	call   38ea <read>
    if(cc < 1)
    37b8:	83 c4 10             	add    $0x10,%esp
    37bb:	85 c0                	test   %eax,%eax
    37bd:	7e 1c                	jle    37db <gets+0x4b>
      break;
    buf[i++] = c;
    37bf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    37c3:	83 c7 01             	add    $0x1,%edi
    37c6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    37c9:	3c 0a                	cmp    $0xa,%al
    37cb:	74 23                	je     37f0 <gets+0x60>
    37cd:	3c 0d                	cmp    $0xd,%al
    37cf:	74 1f                	je     37f0 <gets+0x60>
  for(i=0; i+1 < max; ){
    37d1:	83 c3 01             	add    $0x1,%ebx
    37d4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    37d7:	89 fe                	mov    %edi,%esi
    37d9:	7c cd                	jl     37a8 <gets+0x18>
    37db:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    37dd:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    37e0:	c6 03 00             	movb   $0x0,(%ebx)
}
    37e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    37e6:	5b                   	pop    %ebx
    37e7:	5e                   	pop    %esi
    37e8:	5f                   	pop    %edi
    37e9:	5d                   	pop    %ebp
    37ea:	c3                   	ret    
    37eb:	90                   	nop
    37ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    37f0:	8b 75 08             	mov    0x8(%ebp),%esi
    37f3:	8b 45 08             	mov    0x8(%ebp),%eax
    37f6:	01 de                	add    %ebx,%esi
    37f8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    37fa:	c6 03 00             	movb   $0x0,(%ebx)
}
    37fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3800:	5b                   	pop    %ebx
    3801:	5e                   	pop    %esi
    3802:	5f                   	pop    %edi
    3803:	5d                   	pop    %ebp
    3804:	c3                   	ret    
    3805:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003810 <stat>:

int
stat(char *n, struct stat *st)
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	56                   	push   %esi
    3814:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3815:	83 ec 08             	sub    $0x8,%esp
    3818:	6a 00                	push   $0x0
    381a:	ff 75 08             	pushl  0x8(%ebp)
    381d:	e8 f0 00 00 00       	call   3912 <open>
  if(fd < 0)
    3822:	83 c4 10             	add    $0x10,%esp
    3825:	85 c0                	test   %eax,%eax
    3827:	78 27                	js     3850 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3829:	83 ec 08             	sub    $0x8,%esp
    382c:	ff 75 0c             	pushl  0xc(%ebp)
    382f:	89 c3                	mov    %eax,%ebx
    3831:	50                   	push   %eax
    3832:	e8 f3 00 00 00       	call   392a <fstat>
  close(fd);
    3837:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    383a:	89 c6                	mov    %eax,%esi
  close(fd);
    383c:	e8 b9 00 00 00       	call   38fa <close>
  return r;
    3841:	83 c4 10             	add    $0x10,%esp
}
    3844:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3847:	89 f0                	mov    %esi,%eax
    3849:	5b                   	pop    %ebx
    384a:	5e                   	pop    %esi
    384b:	5d                   	pop    %ebp
    384c:	c3                   	ret    
    384d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3850:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3855:	eb ed                	jmp    3844 <stat+0x34>
    3857:	89 f6                	mov    %esi,%esi
    3859:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003860 <atoi>:

int
atoi(const char *s)
{
    3860:	55                   	push   %ebp
    3861:	89 e5                	mov    %esp,%ebp
    3863:	53                   	push   %ebx
    3864:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3867:	0f be 11             	movsbl (%ecx),%edx
    386a:	8d 42 d0             	lea    -0x30(%edx),%eax
    386d:	3c 09                	cmp    $0x9,%al
  n = 0;
    386f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3874:	77 1f                	ja     3895 <atoi+0x35>
    3876:	8d 76 00             	lea    0x0(%esi),%esi
    3879:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3880:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3883:	83 c1 01             	add    $0x1,%ecx
    3886:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    388a:	0f be 11             	movsbl (%ecx),%edx
    388d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3890:	80 fb 09             	cmp    $0x9,%bl
    3893:	76 eb                	jbe    3880 <atoi+0x20>
  return n;
}
    3895:	5b                   	pop    %ebx
    3896:	5d                   	pop    %ebp
    3897:	c3                   	ret    
    3898:	90                   	nop
    3899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000038a0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
    38a0:	55                   	push   %ebp
    38a1:	89 e5                	mov    %esp,%ebp
    38a3:	56                   	push   %esi
    38a4:	53                   	push   %ebx
    38a5:	8b 5d 10             	mov    0x10(%ebp),%ebx
    38a8:	8b 45 08             	mov    0x8(%ebp),%eax
    38ab:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    38ae:	85 db                	test   %ebx,%ebx
    38b0:	7e 14                	jle    38c6 <memmove+0x26>
    38b2:	31 d2                	xor    %edx,%edx
    38b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    38b8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    38bc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    38bf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    38c2:	39 d3                	cmp    %edx,%ebx
    38c4:	75 f2                	jne    38b8 <memmove+0x18>
  return vdst;
}
    38c6:	5b                   	pop    %ebx
    38c7:	5e                   	pop    %esi
    38c8:	5d                   	pop    %ebp
    38c9:	c3                   	ret    

000038ca <fork>:
    38ca:	b8 01 00 00 00       	mov    $0x1,%eax
    38cf:	cd 40                	int    $0x40
    38d1:	c3                   	ret    

000038d2 <exit>:
    38d2:	b8 02 00 00 00       	mov    $0x2,%eax
    38d7:	cd 40                	int    $0x40
    38d9:	c3                   	ret    

000038da <wait>:
    38da:	b8 03 00 00 00       	mov    $0x3,%eax
    38df:	cd 40                	int    $0x40
    38e1:	c3                   	ret    

000038e2 <pipe>:
    38e2:	b8 04 00 00 00       	mov    $0x4,%eax
    38e7:	cd 40                	int    $0x40
    38e9:	c3                   	ret    

000038ea <read>:
    38ea:	b8 05 00 00 00       	mov    $0x5,%eax
    38ef:	cd 40                	int    $0x40
    38f1:	c3                   	ret    

000038f2 <write>:
    38f2:	b8 10 00 00 00       	mov    $0x10,%eax
    38f7:	cd 40                	int    $0x40
    38f9:	c3                   	ret    

000038fa <close>:
    38fa:	b8 15 00 00 00       	mov    $0x15,%eax
    38ff:	cd 40                	int    $0x40
    3901:	c3                   	ret    

00003902 <kill>:
    3902:	b8 06 00 00 00       	mov    $0x6,%eax
    3907:	cd 40                	int    $0x40
    3909:	c3                   	ret    

0000390a <exec>:
    390a:	b8 07 00 00 00       	mov    $0x7,%eax
    390f:	cd 40                	int    $0x40
    3911:	c3                   	ret    

00003912 <open>:
    3912:	b8 0f 00 00 00       	mov    $0xf,%eax
    3917:	cd 40                	int    $0x40
    3919:	c3                   	ret    

0000391a <mknod>:
    391a:	b8 11 00 00 00       	mov    $0x11,%eax
    391f:	cd 40                	int    $0x40
    3921:	c3                   	ret    

00003922 <unlink>:
    3922:	b8 12 00 00 00       	mov    $0x12,%eax
    3927:	cd 40                	int    $0x40
    3929:	c3                   	ret    

0000392a <fstat>:
    392a:	b8 08 00 00 00       	mov    $0x8,%eax
    392f:	cd 40                	int    $0x40
    3931:	c3                   	ret    

00003932 <link>:
    3932:	b8 13 00 00 00       	mov    $0x13,%eax
    3937:	cd 40                	int    $0x40
    3939:	c3                   	ret    

0000393a <mkdir>:
    393a:	b8 14 00 00 00       	mov    $0x14,%eax
    393f:	cd 40                	int    $0x40
    3941:	c3                   	ret    

00003942 <chdir>:
    3942:	b8 09 00 00 00       	mov    $0x9,%eax
    3947:	cd 40                	int    $0x40
    3949:	c3                   	ret    

0000394a <dup>:
    394a:	b8 0a 00 00 00       	mov    $0xa,%eax
    394f:	cd 40                	int    $0x40
    3951:	c3                   	ret    

00003952 <getpid>:
    3952:	b8 0b 00 00 00       	mov    $0xb,%eax
    3957:	cd 40                	int    $0x40
    3959:	c3                   	ret    

0000395a <sbrk>:
    395a:	b8 0c 00 00 00       	mov    $0xc,%eax
    395f:	cd 40                	int    $0x40
    3961:	c3                   	ret    

00003962 <sleep>:
    3962:	b8 0d 00 00 00       	mov    $0xd,%eax
    3967:	cd 40                	int    $0x40
    3969:	c3                   	ret    

0000396a <uptime>:
    396a:	b8 0e 00 00 00       	mov    $0xe,%eax
    396f:	cd 40                	int    $0x40
    3971:	c3                   	ret    

00003972 <date>:
    3972:	b8 16 00 00 00       	mov    $0x16,%eax
    3977:	cd 40                	int    $0x40
    3979:	c3                   	ret    
    397a:	66 90                	xchg   %ax,%ax
    397c:	66 90                	xchg   %ax,%ax
    397e:	66 90                	xchg   %ax,%ax

00003980 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3980:	55                   	push   %ebp
    3981:	89 e5                	mov    %esp,%ebp
    3983:	57                   	push   %edi
    3984:	56                   	push   %esi
    3985:	53                   	push   %ebx
    3986:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3989:	85 d2                	test   %edx,%edx
{
    398b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    398e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    3990:	79 76                	jns    3a08 <printint+0x88>
    3992:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3996:	74 70                	je     3a08 <printint+0x88>
    x = -xx;
    3998:	f7 d8                	neg    %eax
    neg = 1;
    399a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    39a1:	31 f6                	xor    %esi,%esi
    39a3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    39a6:	eb 0a                	jmp    39b2 <printint+0x32>
    39a8:	90                   	nop
    39a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    39b0:	89 fe                	mov    %edi,%esi
    39b2:	31 d2                	xor    %edx,%edx
    39b4:	8d 7e 01             	lea    0x1(%esi),%edi
    39b7:	f7 f1                	div    %ecx
    39b9:	0f b6 92 18 55 00 00 	movzbl 0x5518(%edx),%edx
  }while((x /= base) != 0);
    39c0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    39c2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    39c5:	75 e9                	jne    39b0 <printint+0x30>
  if(neg)
    39c7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    39ca:	85 c0                	test   %eax,%eax
    39cc:	74 08                	je     39d6 <printint+0x56>
    buf[i++] = '-';
    39ce:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    39d3:	8d 7e 02             	lea    0x2(%esi),%edi
    39d6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    39da:	8b 7d c0             	mov    -0x40(%ebp),%edi
    39dd:	8d 76 00             	lea    0x0(%esi),%esi
    39e0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    39e3:	83 ec 04             	sub    $0x4,%esp
    39e6:	83 ee 01             	sub    $0x1,%esi
    39e9:	6a 01                	push   $0x1
    39eb:	53                   	push   %ebx
    39ec:	57                   	push   %edi
    39ed:	88 45 d7             	mov    %al,-0x29(%ebp)
    39f0:	e8 fd fe ff ff       	call   38f2 <write>

  while(--i >= 0)
    39f5:	83 c4 10             	add    $0x10,%esp
    39f8:	39 de                	cmp    %ebx,%esi
    39fa:	75 e4                	jne    39e0 <printint+0x60>
    putc(fd, buf[i]);
}
    39fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    39ff:	5b                   	pop    %ebx
    3a00:	5e                   	pop    %esi
    3a01:	5f                   	pop    %edi
    3a02:	5d                   	pop    %ebp
    3a03:	c3                   	ret    
    3a04:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3a08:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3a0f:	eb 90                	jmp    39a1 <printint+0x21>
    3a11:	eb 0d                	jmp    3a20 <printf>
    3a13:	90                   	nop
    3a14:	90                   	nop
    3a15:	90                   	nop
    3a16:	90                   	nop
    3a17:	90                   	nop
    3a18:	90                   	nop
    3a19:	90                   	nop
    3a1a:	90                   	nop
    3a1b:	90                   	nop
    3a1c:	90                   	nop
    3a1d:	90                   	nop
    3a1e:	90                   	nop
    3a1f:	90                   	nop

00003a20 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
    3a20:	55                   	push   %ebp
    3a21:	89 e5                	mov    %esp,%ebp
    3a23:	57                   	push   %edi
    3a24:	56                   	push   %esi
    3a25:	53                   	push   %ebx
    3a26:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3a29:	8b 75 0c             	mov    0xc(%ebp),%esi
    3a2c:	0f b6 1e             	movzbl (%esi),%ebx
    3a2f:	84 db                	test   %bl,%bl
    3a31:	0f 84 b3 00 00 00    	je     3aea <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    3a37:	8d 45 10             	lea    0x10(%ebp),%eax
    3a3a:	83 c6 01             	add    $0x1,%esi
  state = 0;
    3a3d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    3a3f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3a42:	eb 2f                	jmp    3a73 <printf+0x53>
    3a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3a48:	83 f8 25             	cmp    $0x25,%eax
    3a4b:	0f 84 a7 00 00 00    	je     3af8 <printf+0xd8>
  write(fd, &c, 1);
    3a51:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3a54:	83 ec 04             	sub    $0x4,%esp
    3a57:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3a5a:	6a 01                	push   $0x1
    3a5c:	50                   	push   %eax
    3a5d:	ff 75 08             	pushl  0x8(%ebp)
    3a60:	e8 8d fe ff ff       	call   38f2 <write>
    3a65:	83 c4 10             	add    $0x10,%esp
    3a68:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    3a6b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3a6f:	84 db                	test   %bl,%bl
    3a71:	74 77                	je     3aea <printf+0xca>
    if(state == 0){
    3a73:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    3a75:	0f be cb             	movsbl %bl,%ecx
    3a78:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    3a7b:	74 cb                	je     3a48 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    3a7d:	83 ff 25             	cmp    $0x25,%edi
    3a80:	75 e6                	jne    3a68 <printf+0x48>
      if(c == 'd'){
    3a82:	83 f8 64             	cmp    $0x64,%eax
    3a85:	0f 84 05 01 00 00    	je     3b90 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    3a8b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    3a91:	83 f9 70             	cmp    $0x70,%ecx
    3a94:	74 72                	je     3b08 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    3a96:	83 f8 73             	cmp    $0x73,%eax
    3a99:	0f 84 99 00 00 00    	je     3b38 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    3a9f:	83 f8 63             	cmp    $0x63,%eax
    3aa2:	0f 84 08 01 00 00    	je     3bb0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    3aa8:	83 f8 25             	cmp    $0x25,%eax
    3aab:	0f 84 ef 00 00 00    	je     3ba0 <printf+0x180>
  write(fd, &c, 1);
    3ab1:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3ab4:	83 ec 04             	sub    $0x4,%esp
    3ab7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    3abb:	6a 01                	push   $0x1
    3abd:	50                   	push   %eax
    3abe:	ff 75 08             	pushl  0x8(%ebp)
    3ac1:	e8 2c fe ff ff       	call   38f2 <write>
    3ac6:	83 c4 0c             	add    $0xc,%esp
    3ac9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    3acc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    3acf:	6a 01                	push   $0x1
    3ad1:	50                   	push   %eax
    3ad2:	ff 75 08             	pushl  0x8(%ebp)
    3ad5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    3ad8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    3ada:	e8 13 fe ff ff       	call   38f2 <write>
  for(i = 0; fmt[i]; i++){
    3adf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    3ae3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    3ae6:	84 db                	test   %bl,%bl
    3ae8:	75 89                	jne    3a73 <printf+0x53>
    }
  }
}
    3aea:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3aed:	5b                   	pop    %ebx
    3aee:	5e                   	pop    %esi
    3aef:	5f                   	pop    %edi
    3af0:	5d                   	pop    %ebp
    3af1:	c3                   	ret    
    3af2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    3af8:	bf 25 00 00 00       	mov    $0x25,%edi
    3afd:	e9 66 ff ff ff       	jmp    3a68 <printf+0x48>
    3b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    3b08:	83 ec 0c             	sub    $0xc,%esp
    3b0b:	b9 10 00 00 00       	mov    $0x10,%ecx
    3b10:	6a 00                	push   $0x0
    3b12:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    3b15:	8b 45 08             	mov    0x8(%ebp),%eax
    3b18:	8b 17                	mov    (%edi),%edx
    3b1a:	e8 61 fe ff ff       	call   3980 <printint>
        ap++;
    3b1f:	89 f8                	mov    %edi,%eax
    3b21:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3b24:	31 ff                	xor    %edi,%edi
        ap++;
    3b26:	83 c0 04             	add    $0x4,%eax
    3b29:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3b2c:	e9 37 ff ff ff       	jmp    3a68 <printf+0x48>
    3b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    3b38:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    3b3b:	8b 08                	mov    (%eax),%ecx
        ap++;
    3b3d:	83 c0 04             	add    $0x4,%eax
    3b40:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    3b43:	85 c9                	test   %ecx,%ecx
    3b45:	0f 84 8e 00 00 00    	je     3bd9 <printf+0x1b9>
        while(*s != 0){
    3b4b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    3b4e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    3b50:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    3b52:	84 c0                	test   %al,%al
    3b54:	0f 84 0e ff ff ff    	je     3a68 <printf+0x48>
    3b5a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    3b5d:	89 de                	mov    %ebx,%esi
    3b5f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    3b62:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    3b65:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    3b68:	83 ec 04             	sub    $0x4,%esp
          s++;
    3b6b:	83 c6 01             	add    $0x1,%esi
    3b6e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    3b71:	6a 01                	push   $0x1
    3b73:	57                   	push   %edi
    3b74:	53                   	push   %ebx
    3b75:	e8 78 fd ff ff       	call   38f2 <write>
        while(*s != 0){
    3b7a:	0f b6 06             	movzbl (%esi),%eax
    3b7d:	83 c4 10             	add    $0x10,%esp
    3b80:	84 c0                	test   %al,%al
    3b82:	75 e4                	jne    3b68 <printf+0x148>
    3b84:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    3b87:	31 ff                	xor    %edi,%edi
    3b89:	e9 da fe ff ff       	jmp    3a68 <printf+0x48>
    3b8e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    3b90:	83 ec 0c             	sub    $0xc,%esp
    3b93:	b9 0a 00 00 00       	mov    $0xa,%ecx
    3b98:	6a 01                	push   $0x1
    3b9a:	e9 73 ff ff ff       	jmp    3b12 <printf+0xf2>
    3b9f:	90                   	nop
  write(fd, &c, 1);
    3ba0:	83 ec 04             	sub    $0x4,%esp
    3ba3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    3ba6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    3ba9:	6a 01                	push   $0x1
    3bab:	e9 21 ff ff ff       	jmp    3ad1 <printf+0xb1>
        putc(fd, *ap);
    3bb0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    3bb3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    3bb6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    3bb8:	6a 01                	push   $0x1
        ap++;
    3bba:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    3bbd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    3bc0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    3bc3:	50                   	push   %eax
    3bc4:	ff 75 08             	pushl  0x8(%ebp)
    3bc7:	e8 26 fd ff ff       	call   38f2 <write>
        ap++;
    3bcc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    3bcf:	83 c4 10             	add    $0x10,%esp
      state = 0;
    3bd2:	31 ff                	xor    %edi,%edi
    3bd4:	e9 8f fe ff ff       	jmp    3a68 <printf+0x48>
          s = "(null)";
    3bd9:	bb 10 55 00 00       	mov    $0x5510,%ebx
        while(*s != 0){
    3bde:	b8 28 00 00 00       	mov    $0x28,%eax
    3be3:	e9 72 ff ff ff       	jmp    3b5a <printf+0x13a>
    3be8:	66 90                	xchg   %ax,%ax
    3bea:	66 90                	xchg   %ax,%ax
    3bec:	66 90                	xchg   %ax,%ax
    3bee:	66 90                	xchg   %ax,%ax

00003bf0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    3bf0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3bf1:	a1 c0 5e 00 00       	mov    0x5ec0,%eax
{
    3bf6:	89 e5                	mov    %esp,%ebp
    3bf8:	57                   	push   %edi
    3bf9:	56                   	push   %esi
    3bfa:	53                   	push   %ebx
    3bfb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    3bfe:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    3c01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    3c08:	39 c8                	cmp    %ecx,%eax
    3c0a:	8b 10                	mov    (%eax),%edx
    3c0c:	73 32                	jae    3c40 <free+0x50>
    3c0e:	39 d1                	cmp    %edx,%ecx
    3c10:	72 04                	jb     3c16 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c12:	39 d0                	cmp    %edx,%eax
    3c14:	72 32                	jb     3c48 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    3c16:	8b 73 fc             	mov    -0x4(%ebx),%esi
    3c19:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    3c1c:	39 fa                	cmp    %edi,%edx
    3c1e:	74 30                	je     3c50 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    3c20:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3c23:	8b 50 04             	mov    0x4(%eax),%edx
    3c26:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c29:	39 f1                	cmp    %esi,%ecx
    3c2b:	74 3a                	je     3c67 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    3c2d:	89 08                	mov    %ecx,(%eax)
  freep = p;
    3c2f:	a3 c0 5e 00 00       	mov    %eax,0x5ec0
}
    3c34:	5b                   	pop    %ebx
    3c35:	5e                   	pop    %esi
    3c36:	5f                   	pop    %edi
    3c37:	5d                   	pop    %ebp
    3c38:	c3                   	ret    
    3c39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    3c40:	39 d0                	cmp    %edx,%eax
    3c42:	72 04                	jb     3c48 <free+0x58>
    3c44:	39 d1                	cmp    %edx,%ecx
    3c46:	72 ce                	jb     3c16 <free+0x26>
{
    3c48:	89 d0                	mov    %edx,%eax
    3c4a:	eb bc                	jmp    3c08 <free+0x18>
    3c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    3c50:	03 72 04             	add    0x4(%edx),%esi
    3c53:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    3c56:	8b 10                	mov    (%eax),%edx
    3c58:	8b 12                	mov    (%edx),%edx
    3c5a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    3c5d:	8b 50 04             	mov    0x4(%eax),%edx
    3c60:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    3c63:	39 f1                	cmp    %esi,%ecx
    3c65:	75 c6                	jne    3c2d <free+0x3d>
    p->s.size += bp->s.size;
    3c67:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    3c6a:	a3 c0 5e 00 00       	mov    %eax,0x5ec0
    p->s.size += bp->s.size;
    3c6f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    3c72:	8b 53 f8             	mov    -0x8(%ebx),%edx
    3c75:	89 10                	mov    %edx,(%eax)
}
    3c77:	5b                   	pop    %ebx
    3c78:	5e                   	pop    %esi
    3c79:	5f                   	pop    %edi
    3c7a:	5d                   	pop    %ebp
    3c7b:	c3                   	ret    
    3c7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003c80 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    3c80:	55                   	push   %ebp
    3c81:	89 e5                	mov    %esp,%ebp
    3c83:	57                   	push   %edi
    3c84:	56                   	push   %esi
    3c85:	53                   	push   %ebx
    3c86:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3c89:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    3c8c:	8b 15 c0 5e 00 00    	mov    0x5ec0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    3c92:	8d 78 07             	lea    0x7(%eax),%edi
    3c95:	c1 ef 03             	shr    $0x3,%edi
    3c98:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    3c9b:	85 d2                	test   %edx,%edx
    3c9d:	0f 84 9d 00 00 00    	je     3d40 <malloc+0xc0>
    3ca3:	8b 02                	mov    (%edx),%eax
    3ca5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    3ca8:	39 cf                	cmp    %ecx,%edi
    3caa:	76 6c                	jbe    3d18 <malloc+0x98>
    3cac:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    3cb2:	bb 00 10 00 00       	mov    $0x1000,%ebx
    3cb7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    3cba:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    3cc1:	eb 0e                	jmp    3cd1 <malloc+0x51>
    3cc3:	90                   	nop
    3cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    3cc8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    3cca:	8b 48 04             	mov    0x4(%eax),%ecx
    3ccd:	39 f9                	cmp    %edi,%ecx
    3ccf:	73 47                	jae    3d18 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    3cd1:	39 05 c0 5e 00 00    	cmp    %eax,0x5ec0
    3cd7:	89 c2                	mov    %eax,%edx
    3cd9:	75 ed                	jne    3cc8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    3cdb:	83 ec 0c             	sub    $0xc,%esp
    3cde:	56                   	push   %esi
    3cdf:	e8 76 fc ff ff       	call   395a <sbrk>
  if(p == (char*)-1)
    3ce4:	83 c4 10             	add    $0x10,%esp
    3ce7:	83 f8 ff             	cmp    $0xffffffff,%eax
    3cea:	74 1c                	je     3d08 <malloc+0x88>
  hp->s.size = nu;
    3cec:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    3cef:	83 ec 0c             	sub    $0xc,%esp
    3cf2:	83 c0 08             	add    $0x8,%eax
    3cf5:	50                   	push   %eax
    3cf6:	e8 f5 fe ff ff       	call   3bf0 <free>
  return freep;
    3cfb:	8b 15 c0 5e 00 00    	mov    0x5ec0,%edx
      if((p = morecore(nunits)) == 0)
    3d01:	83 c4 10             	add    $0x10,%esp
    3d04:	85 d2                	test   %edx,%edx
    3d06:	75 c0                	jne    3cc8 <malloc+0x48>
        return 0;
  }
}
    3d08:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    3d0b:	31 c0                	xor    %eax,%eax
}
    3d0d:	5b                   	pop    %ebx
    3d0e:	5e                   	pop    %esi
    3d0f:	5f                   	pop    %edi
    3d10:	5d                   	pop    %ebp
    3d11:	c3                   	ret    
    3d12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    3d18:	39 cf                	cmp    %ecx,%edi
    3d1a:	74 54                	je     3d70 <malloc+0xf0>
        p->s.size -= nunits;
    3d1c:	29 f9                	sub    %edi,%ecx
    3d1e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    3d21:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    3d24:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    3d27:	89 15 c0 5e 00 00    	mov    %edx,0x5ec0
}
    3d2d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    3d30:	83 c0 08             	add    $0x8,%eax
}
    3d33:	5b                   	pop    %ebx
    3d34:	5e                   	pop    %esi
    3d35:	5f                   	pop    %edi
    3d36:	5d                   	pop    %ebp
    3d37:	c3                   	ret    
    3d38:	90                   	nop
    3d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    3d40:	c7 05 c0 5e 00 00 c4 	movl   $0x5ec4,0x5ec0
    3d47:	5e 00 00 
    3d4a:	c7 05 c4 5e 00 00 c4 	movl   $0x5ec4,0x5ec4
    3d51:	5e 00 00 
    base.s.size = 0;
    3d54:	b8 c4 5e 00 00       	mov    $0x5ec4,%eax
    3d59:	c7 05 c8 5e 00 00 00 	movl   $0x0,0x5ec8
    3d60:	00 00 00 
    3d63:	e9 44 ff ff ff       	jmp    3cac <malloc+0x2c>
    3d68:	90                   	nop
    3d69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    3d70:	8b 08                	mov    (%eax),%ecx
    3d72:	89 0a                	mov    %ecx,(%edx)
    3d74:	eb b1                	jmp    3d27 <malloc+0xa7>
