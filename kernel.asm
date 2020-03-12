
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4                   	.byte 0xe4

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc c0 b5 10 80       	mov    $0x8010b5c0,%esp
8010002d:	b8 d0 2e 10 80       	mov    $0x80102ed0,%eax
80100032:	ff e0                	jmp    *%eax
80100034:	66 90                	xchg   %ax,%ax
80100036:	66 90                	xchg   %ax,%ax
80100038:	66 90                	xchg   %ax,%ax
8010003a:	66 90                	xchg   %ax,%ax
8010003c:	66 90                	xchg   %ax,%ax
8010003e:	66 90                	xchg   %ax,%ax

80100040 <binit>:
80100040:	55                   	push   %ebp
80100041:	89 e5                	mov    %esp,%ebp
80100043:	53                   	push   %ebx
80100044:	bb f4 b5 10 80       	mov    $0x8010b5f4,%ebx
80100049:	83 ec 0c             	sub    $0xc,%esp
8010004c:	68 a0 6e 10 80       	push   $0x80106ea0
80100051:	68 c0 b5 10 80       	push   $0x8010b5c0
80100056:	e8 d5 41 00 00       	call   80104230 <initlock>
8010005b:	83 c4 10             	add    $0x10,%esp
8010005e:	b8 bc fc 10 80       	mov    $0x8010fcbc,%eax
80100063:	c7 05 0c fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd0c
8010006a:	fc 10 80 
8010006d:	c7 05 10 fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd10
80100074:	fc 10 80 
80100077:	eb 09                	jmp    80100082 <binit+0x42>
80100079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100080:	89 d3                	mov    %edx,%ebx
80100082:	89 43 54             	mov    %eax,0x54(%ebx)
80100085:	83 ec 08             	sub    $0x8,%esp
80100088:	8d 43 0c             	lea    0xc(%ebx),%eax
8010008b:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
80100092:	68 a7 6e 10 80       	push   $0x80106ea7
80100097:	50                   	push   %eax
80100098:	e8 83 40 00 00       	call   80104120 <initsleeplock>
8010009d:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
801000a2:	8d 93 5c 02 00 00    	lea    0x25c(%ebx),%edx
801000a8:	83 c4 10             	add    $0x10,%esp
801000ab:	89 58 50             	mov    %ebx,0x50(%eax)
801000ae:	89 d8                	mov    %ebx,%eax
801000b0:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
801000b6:	81 fb 60 fa 10 80    	cmp    $0x8010fa60,%ebx
801000bc:	75 c2                	jne    80100080 <binit+0x40>
801000be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801000c1:	c9                   	leave  
801000c2:	c3                   	ret    
801000c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801000ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801000d0 <bread>:
801000d0:	55                   	push   %ebp
801000d1:	89 e5                	mov    %esp,%ebp
801000d3:	57                   	push   %edi
801000d4:	56                   	push   %esi
801000d5:	53                   	push   %ebx
801000d6:	83 ec 18             	sub    $0x18,%esp
801000d9:	8b 7d 08             	mov    0x8(%ebp),%edi
801000dc:	8b 75 0c             	mov    0xc(%ebp),%esi
801000df:	68 c0 b5 10 80       	push   $0x8010b5c0
801000e4:	e8 47 42 00 00       	call   80104330 <acquire>
801000e9:	8b 1d 10 fd 10 80    	mov    0x8010fd10,%ebx
801000ef:	83 c4 10             	add    $0x10,%esp
801000f2:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
801000f8:	75 11                	jne    8010010b <bread+0x3b>
801000fa:	eb 24                	jmp    80100120 <bread+0x50>
801000fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100100:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100103:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100109:	74 15                	je     80100120 <bread+0x50>
8010010b:	3b 7b 04             	cmp    0x4(%ebx),%edi
8010010e:	75 f0                	jne    80100100 <bread+0x30>
80100110:	3b 73 08             	cmp    0x8(%ebx),%esi
80100113:	75 eb                	jne    80100100 <bread+0x30>
80100115:	83 43 4c 01          	addl   $0x1,0x4c(%ebx)
80100119:	eb 3f                	jmp    8010015a <bread+0x8a>
8010011b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010011f:	90                   	nop
80100120:	8b 1d 0c fd 10 80    	mov    0x8010fd0c,%ebx
80100126:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
8010012c:	75 0d                	jne    8010013b <bread+0x6b>
8010012e:	eb 70                	jmp    801001a0 <bread+0xd0>
80100130:	8b 5b 50             	mov    0x50(%ebx),%ebx
80100133:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100139:	74 65                	je     801001a0 <bread+0xd0>
8010013b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010013e:	85 c0                	test   %eax,%eax
80100140:	75 ee                	jne    80100130 <bread+0x60>
80100142:	f6 03 04             	testb  $0x4,(%ebx)
80100145:	75 e9                	jne    80100130 <bread+0x60>
80100147:	89 7b 04             	mov    %edi,0x4(%ebx)
8010014a:	89 73 08             	mov    %esi,0x8(%ebx)
8010014d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100153:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
8010015a:	83 ec 0c             	sub    $0xc,%esp
8010015d:	68 c0 b5 10 80       	push   $0x8010b5c0
80100162:	e8 e9 42 00 00       	call   80104450 <release>
80100167:	8d 43 0c             	lea    0xc(%ebx),%eax
8010016a:	89 04 24             	mov    %eax,(%esp)
8010016d:	e8 ee 3f 00 00       	call   80104160 <acquiresleep>
80100172:	83 c4 10             	add    $0x10,%esp
80100175:	f6 03 02             	testb  $0x2,(%ebx)
80100178:	74 0e                	je     80100188 <bread+0xb8>
8010017a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010017d:	89 d8                	mov    %ebx,%eax
8010017f:	5b                   	pop    %ebx
80100180:	5e                   	pop    %esi
80100181:	5f                   	pop    %edi
80100182:	5d                   	pop    %ebp
80100183:	c3                   	ret    
80100184:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100188:	83 ec 0c             	sub    $0xc,%esp
8010018b:	53                   	push   %ebx
8010018c:	e8 af 1f 00 00       	call   80102140 <iderw>
80100191:	83 c4 10             	add    $0x10,%esp
80100194:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100197:	89 d8                	mov    %ebx,%eax
80100199:	5b                   	pop    %ebx
8010019a:	5e                   	pop    %esi
8010019b:	5f                   	pop    %edi
8010019c:	5d                   	pop    %ebp
8010019d:	c3                   	ret    
8010019e:	66 90                	xchg   %ax,%ax
801001a0:	83 ec 0c             	sub    $0xc,%esp
801001a3:	68 ae 6e 10 80       	push   $0x80106eae
801001a8:	e8 f3 01 00 00       	call   801003a0 <panic>
801001ad:	8d 76 00             	lea    0x0(%esi),%esi

801001b0 <bwrite>:
801001b0:	55                   	push   %ebp
801001b1:	89 e5                	mov    %esp,%ebp
801001b3:	53                   	push   %ebx
801001b4:	83 ec 10             	sub    $0x10,%esp
801001b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001ba:	8d 43 0c             	lea    0xc(%ebx),%eax
801001bd:	50                   	push   %eax
801001be:	e8 3d 40 00 00       	call   80104200 <holdingsleep>
801001c3:	83 c4 10             	add    $0x10,%esp
801001c6:	85 c0                	test   %eax,%eax
801001c8:	74 0f                	je     801001d9 <bwrite+0x29>
801001ca:	83 0b 04             	orl    $0x4,(%ebx)
801001cd:	89 5d 08             	mov    %ebx,0x8(%ebp)
801001d0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801001d3:	c9                   	leave  
801001d4:	e9 67 1f 00 00       	jmp    80102140 <iderw>
801001d9:	83 ec 0c             	sub    $0xc,%esp
801001dc:	68 bf 6e 10 80       	push   $0x80106ebf
801001e1:	e8 ba 01 00 00       	call   801003a0 <panic>
801001e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801001ed:	8d 76 00             	lea    0x0(%esi),%esi

801001f0 <brelse>:
801001f0:	55                   	push   %ebp
801001f1:	89 e5                	mov    %esp,%ebp
801001f3:	56                   	push   %esi
801001f4:	53                   	push   %ebx
801001f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001f8:	8d 73 0c             	lea    0xc(%ebx),%esi
801001fb:	83 ec 0c             	sub    $0xc,%esp
801001fe:	56                   	push   %esi
801001ff:	e8 fc 3f 00 00       	call   80104200 <holdingsleep>
80100204:	83 c4 10             	add    $0x10,%esp
80100207:	85 c0                	test   %eax,%eax
80100209:	74 66                	je     80100271 <brelse+0x81>
8010020b:	83 ec 0c             	sub    $0xc,%esp
8010020e:	56                   	push   %esi
8010020f:	e8 ac 3f 00 00       	call   801041c0 <releasesleep>
80100214:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
8010021b:	e8 10 41 00 00       	call   80104330 <acquire>
80100220:	8b 43 4c             	mov    0x4c(%ebx),%eax
80100223:	83 c4 10             	add    $0x10,%esp
80100226:	83 e8 01             	sub    $0x1,%eax
80100229:	89 43 4c             	mov    %eax,0x4c(%ebx)
8010022c:	85 c0                	test   %eax,%eax
8010022e:	75 2f                	jne    8010025f <brelse+0x6f>
80100230:	8b 43 54             	mov    0x54(%ebx),%eax
80100233:	8b 53 50             	mov    0x50(%ebx),%edx
80100236:	89 50 50             	mov    %edx,0x50(%eax)
80100239:	8b 43 50             	mov    0x50(%ebx),%eax
8010023c:	8b 53 54             	mov    0x54(%ebx),%edx
8010023f:	89 50 54             	mov    %edx,0x54(%eax)
80100242:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
80100247:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
8010024e:	89 43 54             	mov    %eax,0x54(%ebx)
80100251:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
80100256:	89 58 50             	mov    %ebx,0x50(%eax)
80100259:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
8010025f:	c7 45 08 c0 b5 10 80 	movl   $0x8010b5c0,0x8(%ebp)
80100266:	8d 65 f8             	lea    -0x8(%ebp),%esp
80100269:	5b                   	pop    %ebx
8010026a:	5e                   	pop    %esi
8010026b:	5d                   	pop    %ebp
8010026c:	e9 df 41 00 00       	jmp    80104450 <release>
80100271:	83 ec 0c             	sub    $0xc,%esp
80100274:	68 c6 6e 10 80       	push   $0x80106ec6
80100279:	e8 22 01 00 00       	call   801003a0 <panic>
8010027e:	66 90                	xchg   %ax,%ax

80100280 <consoleread>:
  }
}

int
consoleread(struct inode *ip, char *dst, int n)
{
80100280:	55                   	push   %ebp
80100281:	89 e5                	mov    %esp,%ebp
80100283:	57                   	push   %edi
80100284:	56                   	push   %esi
80100285:	53                   	push   %ebx
80100286:	83 ec 28             	sub    $0x28,%esp
80100289:	8b 7d 08             	mov    0x8(%ebp),%edi
8010028c:	8b 75 0c             	mov    0xc(%ebp),%esi
  uint target;
  int c;

  iunlock(ip);
8010028f:	57                   	push   %edi
80100290:	e8 eb 14 00 00       	call   80101780 <iunlock>
  target = n;
  acquire(&cons.lock);
80100295:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010029c:	e8 8f 40 00 00       	call   80104330 <acquire>
  while(n > 0){
801002a1:	8b 5d 10             	mov    0x10(%ebp),%ebx
801002a4:	83 c4 10             	add    $0x10,%esp
801002a7:	31 c0                	xor    %eax,%eax
801002a9:	85 db                	test   %ebx,%ebx
801002ab:	0f 8e a1 00 00 00    	jle    80100352 <consoleread+0xd2>
    while(input.r == input.w){
801002b1:	8b 15 a0 ff 10 80    	mov    0x8010ffa0,%edx
801002b7:	39 15 a4 ff 10 80    	cmp    %edx,0x8010ffa4
801002bd:	74 2c                	je     801002eb <consoleread+0x6b>
801002bf:	eb 5f                	jmp    80100320 <consoleread+0xa0>
801002c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(myproc()->killed){
        release(&cons.lock);
        ilock(ip);
        return -1;
      }
      sleep(&input.r, &cons.lock);
801002c8:	83 ec 08             	sub    $0x8,%esp
801002cb:	68 20 a5 10 80       	push   $0x8010a520
801002d0:	68 a0 ff 10 80       	push   $0x8010ffa0
801002d5:	e8 d6 3a 00 00       	call   80103db0 <sleep>
    while(input.r == input.w){
801002da:	8b 15 a0 ff 10 80    	mov    0x8010ffa0,%edx
801002e0:	83 c4 10             	add    $0x10,%esp
801002e3:	3b 15 a4 ff 10 80    	cmp    0x8010ffa4,%edx
801002e9:	75 35                	jne    80100320 <consoleread+0xa0>
      if(myproc()->killed){
801002eb:	e8 20 35 00 00       	call   80103810 <myproc>
801002f0:	8b 40 24             	mov    0x24(%eax),%eax
801002f3:	85 c0                	test   %eax,%eax
801002f5:	74 d1                	je     801002c8 <consoleread+0x48>
        release(&cons.lock);
801002f7:	83 ec 0c             	sub    $0xc,%esp
801002fa:	68 20 a5 10 80       	push   $0x8010a520
801002ff:	e8 4c 41 00 00       	call   80104450 <release>
        ilock(ip);
80100304:	89 3c 24             	mov    %edi,(%esp)
80100307:	e8 94 13 00 00       	call   801016a0 <ilock>
        return -1;
8010030c:	83 c4 10             	add    $0x10,%esp
  }
  release(&cons.lock);
  ilock(ip);

  return target - n;
}
8010030f:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return -1;
80100312:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80100317:	5b                   	pop    %ebx
80100318:	5e                   	pop    %esi
80100319:	5f                   	pop    %edi
8010031a:	5d                   	pop    %ebp
8010031b:	c3                   	ret    
8010031c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = input.buf[input.r++ % INPUT_BUF];
80100320:	8d 42 01             	lea    0x1(%edx),%eax
80100323:	a3 a0 ff 10 80       	mov    %eax,0x8010ffa0
80100328:	89 d0                	mov    %edx,%eax
8010032a:	83 e0 7f             	and    $0x7f,%eax
8010032d:	0f be 80 20 ff 10 80 	movsbl -0x7fef00e0(%eax),%eax
    if(c == C('D')){  // EOF
80100334:	83 f8 04             	cmp    $0x4,%eax
80100337:	74 3f                	je     80100378 <consoleread+0xf8>
    *dst++ = c;
80100339:	83 c6 01             	add    $0x1,%esi
    --n;
8010033c:	83 eb 01             	sub    $0x1,%ebx
    if(c == '\n')
8010033f:	83 f8 0a             	cmp    $0xa,%eax
    *dst++ = c;
80100342:	88 46 ff             	mov    %al,-0x1(%esi)
    if(c == '\n')
80100345:	74 43                	je     8010038a <consoleread+0x10a>
  while(n > 0){
80100347:	85 db                	test   %ebx,%ebx
80100349:	0f 85 62 ff ff ff    	jne    801002b1 <consoleread+0x31>
8010034f:	8b 45 10             	mov    0x10(%ebp),%eax
  release(&cons.lock);
80100352:	83 ec 0c             	sub    $0xc,%esp
80100355:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100358:	68 20 a5 10 80       	push   $0x8010a520
8010035d:	e8 ee 40 00 00       	call   80104450 <release>
  ilock(ip);
80100362:	89 3c 24             	mov    %edi,(%esp)
80100365:	e8 36 13 00 00       	call   801016a0 <ilock>
  return target - n;
8010036a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010036d:	83 c4 10             	add    $0x10,%esp
}
80100370:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100373:	5b                   	pop    %ebx
80100374:	5e                   	pop    %esi
80100375:	5f                   	pop    %edi
80100376:	5d                   	pop    %ebp
80100377:	c3                   	ret    
80100378:	8b 45 10             	mov    0x10(%ebp),%eax
8010037b:	29 d8                	sub    %ebx,%eax
      if(n < target){
8010037d:	3b 5d 10             	cmp    0x10(%ebp),%ebx
80100380:	73 d0                	jae    80100352 <consoleread+0xd2>
        input.r--;
80100382:	89 15 a0 ff 10 80    	mov    %edx,0x8010ffa0
80100388:	eb c8                	jmp    80100352 <consoleread+0xd2>
8010038a:	8b 45 10             	mov    0x10(%ebp),%eax
8010038d:	29 d8                	sub    %ebx,%eax
8010038f:	eb c1                	jmp    80100352 <consoleread+0xd2>
80100391:	eb 0d                	jmp    801003a0 <panic>
80100393:	90                   	nop
80100394:	90                   	nop
80100395:	90                   	nop
80100396:	90                   	nop
80100397:	90                   	nop
80100398:	90                   	nop
80100399:	90                   	nop
8010039a:	90                   	nop
8010039b:	90                   	nop
8010039c:	90                   	nop
8010039d:	90                   	nop
8010039e:	90                   	nop
8010039f:	90                   	nop

801003a0 <panic>:
{
801003a0:	55                   	push   %ebp
801003a1:	89 e5                	mov    %esp,%ebp
801003a3:	56                   	push   %esi
801003a4:	53                   	push   %ebx
801003a5:	83 ec 30             	sub    $0x30,%esp
}

static inline void
cli(void)
{
  asm volatile("cli");
801003a8:	fa                   	cli    
  cons.locking = 0;
801003a9:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
801003b0:	00 00 00 
  getcallerpcs(&s, pcs);
801003b3:	8d 5d d0             	lea    -0x30(%ebp),%ebx
801003b6:	8d 75 f8             	lea    -0x8(%ebp),%esi
  cprintf("lapicid %d: panic: ", lapicid());
801003b9:	e8 a2 23 00 00       	call   80102760 <lapicid>
801003be:	83 ec 08             	sub    $0x8,%esp
801003c1:	50                   	push   %eax
801003c2:	68 cd 6e 10 80       	push   $0x80106ecd
801003c7:	e8 a4 02 00 00       	call   80100670 <cprintf>
  cprintf(s);
801003cc:	58                   	pop    %eax
801003cd:	ff 75 08             	pushl  0x8(%ebp)
801003d0:	e8 9b 02 00 00       	call   80100670 <cprintf>
  cprintf("\n");
801003d5:	c7 04 24 5b 78 10 80 	movl   $0x8010785b,(%esp)
801003dc:	e8 8f 02 00 00       	call   80100670 <cprintf>
  getcallerpcs(&s, pcs);
801003e1:	5a                   	pop    %edx
801003e2:	8d 45 08             	lea    0x8(%ebp),%eax
801003e5:	59                   	pop    %ecx
801003e6:	53                   	push   %ebx
801003e7:	50                   	push   %eax
801003e8:	e8 63 3e 00 00       	call   80104250 <getcallerpcs>
801003ed:	83 c4 10             	add    $0x10,%esp
    cprintf(" %p", pcs[i]);
801003f0:	83 ec 08             	sub    $0x8,%esp
801003f3:	ff 33                	pushl  (%ebx)
801003f5:	83 c3 04             	add    $0x4,%ebx
801003f8:	68 e1 6e 10 80       	push   $0x80106ee1
801003fd:	e8 6e 02 00 00       	call   80100670 <cprintf>
  for(i=0; i<10; i++)
80100402:	83 c4 10             	add    $0x10,%esp
80100405:	39 f3                	cmp    %esi,%ebx
80100407:	75 e7                	jne    801003f0 <panic+0x50>
  panicked = 1; // freeze other CPU
80100409:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
80100410:	00 00 00 
80100413:	eb fe                	jmp    80100413 <panic+0x73>
80100415:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80100420 <consputc>:
  if(panicked){
80100420:	8b 0d 58 a5 10 80    	mov    0x8010a558,%ecx
80100426:	85 c9                	test   %ecx,%ecx
80100428:	74 06                	je     80100430 <consputc+0x10>
8010042a:	fa                   	cli    
8010042b:	eb fe                	jmp    8010042b <consputc+0xb>
8010042d:	8d 76 00             	lea    0x0(%esi),%esi
{
80100430:	55                   	push   %ebp
80100431:	89 e5                	mov    %esp,%ebp
80100433:	57                   	push   %edi
80100434:	56                   	push   %esi
80100435:	53                   	push   %ebx
80100436:	89 c6                	mov    %eax,%esi
80100438:	83 ec 0c             	sub    $0xc,%esp
  if(c == BACKSPACE){
8010043b:	3d 00 01 00 00       	cmp    $0x100,%eax
80100440:	0f 84 b1 00 00 00    	je     801004f7 <consputc+0xd7>
    uartputc(c);
80100446:	83 ec 0c             	sub    $0xc,%esp
80100449:	50                   	push   %eax
8010044a:	e8 71 56 00 00       	call   80105ac0 <uartputc>
8010044f:	83 c4 10             	add    $0x10,%esp
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80100452:	bb d4 03 00 00       	mov    $0x3d4,%ebx
80100457:	b8 0e 00 00 00       	mov    $0xe,%eax
8010045c:	89 da                	mov    %ebx,%edx
8010045e:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010045f:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
80100464:	89 ca                	mov    %ecx,%edx
80100466:	ec                   	in     (%dx),%al
  pos = inb(CRTPORT+1) << 8;
80100467:	0f b6 c0             	movzbl %al,%eax
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
8010046a:	89 da                	mov    %ebx,%edx
8010046c:	c1 e0 08             	shl    $0x8,%eax
8010046f:	89 c7                	mov    %eax,%edi
80100471:	b8 0f 00 00 00       	mov    $0xf,%eax
80100476:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80100477:	89 ca                	mov    %ecx,%edx
80100479:	ec                   	in     (%dx),%al
8010047a:	0f b6 d8             	movzbl %al,%ebx
  pos |= inb(CRTPORT+1);
8010047d:	09 fb                	or     %edi,%ebx
  if(c == '\n')
8010047f:	83 fe 0a             	cmp    $0xa,%esi
80100482:	0f 84 f3 00 00 00    	je     8010057b <consputc+0x15b>
  else if(c == BACKSPACE){
80100488:	81 fe 00 01 00 00    	cmp    $0x100,%esi
8010048e:	0f 84 d7 00 00 00    	je     8010056b <consputc+0x14b>
    crt[pos++] = (c&0xff) | 0x0700;  // black on white
80100494:	89 f0                	mov    %esi,%eax
80100496:	0f b6 c0             	movzbl %al,%eax
80100499:	80 cc 07             	or     $0x7,%ah
8010049c:	66 89 84 1b 00 80 0b 	mov    %ax,-0x7ff48000(%ebx,%ebx,1)
801004a3:	80 
801004a4:	83 c3 01             	add    $0x1,%ebx
  if(pos < 0 || pos > 25*80)
801004a7:	81 fb d0 07 00 00    	cmp    $0x7d0,%ebx
801004ad:	0f 8f ab 00 00 00    	jg     8010055e <consputc+0x13e>
  if((pos/80) >= 24){  // Scroll up.
801004b3:	81 fb 7f 07 00 00    	cmp    $0x77f,%ebx
801004b9:	7f 66                	jg     80100521 <consputc+0x101>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801004bb:	be d4 03 00 00       	mov    $0x3d4,%esi
801004c0:	b8 0e 00 00 00       	mov    $0xe,%eax
801004c5:	89 f2                	mov    %esi,%edx
801004c7:	ee                   	out    %al,(%dx)
801004c8:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
  outb(CRTPORT+1, pos>>8);
801004cd:	89 d8                	mov    %ebx,%eax
801004cf:	c1 f8 08             	sar    $0x8,%eax
801004d2:	89 ca                	mov    %ecx,%edx
801004d4:	ee                   	out    %al,(%dx)
801004d5:	b8 0f 00 00 00       	mov    $0xf,%eax
801004da:	89 f2                	mov    %esi,%edx
801004dc:	ee                   	out    %al,(%dx)
801004dd:	89 d8                	mov    %ebx,%eax
801004df:	89 ca                	mov    %ecx,%edx
801004e1:	ee                   	out    %al,(%dx)
  crt[pos] = ' ' | 0x0700;
801004e2:	b8 20 07 00 00       	mov    $0x720,%eax
801004e7:	66 89 84 1b 00 80 0b 	mov    %ax,-0x7ff48000(%ebx,%ebx,1)
801004ee:	80 
}
801004ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
801004f2:	5b                   	pop    %ebx
801004f3:	5e                   	pop    %esi
801004f4:	5f                   	pop    %edi
801004f5:	5d                   	pop    %ebp
801004f6:	c3                   	ret    
    uartputc('\b'); uartputc(' '); uartputc('\b');
801004f7:	83 ec 0c             	sub    $0xc,%esp
801004fa:	6a 08                	push   $0x8
801004fc:	e8 bf 55 00 00       	call   80105ac0 <uartputc>
80100501:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
80100508:	e8 b3 55 00 00       	call   80105ac0 <uartputc>
8010050d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
80100514:	e8 a7 55 00 00       	call   80105ac0 <uartputc>
80100519:	83 c4 10             	add    $0x10,%esp
8010051c:	e9 31 ff ff ff       	jmp    80100452 <consputc+0x32>
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
80100521:	52                   	push   %edx
80100522:	68 60 0e 00 00       	push   $0xe60
    pos -= 80;
80100527:	83 eb 50             	sub    $0x50,%ebx
    memmove(crt, crt+80, sizeof(crt[0])*23*80);
8010052a:	68 a0 80 0b 80       	push   $0x800b80a0
8010052f:	68 00 80 0b 80       	push   $0x800b8000
80100534:	e8 07 40 00 00       	call   80104540 <memmove>
    memset(crt+pos, 0, sizeof(crt[0])*(24*80 - pos));
80100539:	b8 80 07 00 00       	mov    $0x780,%eax
8010053e:	83 c4 0c             	add    $0xc,%esp
80100541:	29 d8                	sub    %ebx,%eax
80100543:	01 c0                	add    %eax,%eax
80100545:	50                   	push   %eax
80100546:	8d 04 1b             	lea    (%ebx,%ebx,1),%eax
80100549:	6a 00                	push   $0x0
8010054b:	2d 00 80 f4 7f       	sub    $0x7ff48000,%eax
80100550:	50                   	push   %eax
80100551:	e8 4a 3f 00 00       	call   801044a0 <memset>
80100556:	83 c4 10             	add    $0x10,%esp
80100559:	e9 5d ff ff ff       	jmp    801004bb <consputc+0x9b>
    panic("pos under/overflow");
8010055e:	83 ec 0c             	sub    $0xc,%esp
80100561:	68 e5 6e 10 80       	push   $0x80106ee5
80100566:	e8 35 fe ff ff       	call   801003a0 <panic>
    if(pos > 0) --pos;
8010056b:	85 db                	test   %ebx,%ebx
8010056d:	0f 84 48 ff ff ff    	je     801004bb <consputc+0x9b>
80100573:	83 eb 01             	sub    $0x1,%ebx
80100576:	e9 2c ff ff ff       	jmp    801004a7 <consputc+0x87>
    pos += 80 - pos%80;
8010057b:	89 d8                	mov    %ebx,%eax
8010057d:	b9 50 00 00 00       	mov    $0x50,%ecx
80100582:	99                   	cltd   
80100583:	f7 f9                	idiv   %ecx
80100585:	29 d1                	sub    %edx,%ecx
80100587:	01 cb                	add    %ecx,%ebx
80100589:	e9 19 ff ff ff       	jmp    801004a7 <consputc+0x87>
8010058e:	66 90                	xchg   %ax,%ax

80100590 <printint>:
{
80100590:	55                   	push   %ebp
80100591:	89 e5                	mov    %esp,%ebp
80100593:	57                   	push   %edi
80100594:	56                   	push   %esi
80100595:	53                   	push   %ebx
80100596:	89 d3                	mov    %edx,%ebx
80100598:	83 ec 2c             	sub    $0x2c,%esp
  if(sign && (sign = xx < 0))
8010059b:	85 c9                	test   %ecx,%ecx
{
8010059d:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  if(sign && (sign = xx < 0))
801005a0:	74 04                	je     801005a6 <printint+0x16>
801005a2:	85 c0                	test   %eax,%eax
801005a4:	78 5a                	js     80100600 <printint+0x70>
    x = xx;
801005a6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
  i = 0;
801005ad:	31 c9                	xor    %ecx,%ecx
801005af:	8d 75 d7             	lea    -0x29(%ebp),%esi
801005b2:	eb 06                	jmp    801005ba <printint+0x2a>
801005b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    buf[i++] = digits[x % base];
801005b8:	89 f9                	mov    %edi,%ecx
801005ba:	31 d2                	xor    %edx,%edx
801005bc:	8d 79 01             	lea    0x1(%ecx),%edi
801005bf:	f7 f3                	div    %ebx
801005c1:	0f b6 92 10 6f 10 80 	movzbl -0x7fef90f0(%edx),%edx
  }while((x /= base) != 0);
801005c8:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
801005ca:	88 14 3e             	mov    %dl,(%esi,%edi,1)
  }while((x /= base) != 0);
801005cd:	75 e9                	jne    801005b8 <printint+0x28>
  if(sign)
801005cf:	8b 45 d4             	mov    -0x2c(%ebp),%eax
801005d2:	85 c0                	test   %eax,%eax
801005d4:	74 08                	je     801005de <printint+0x4e>
    buf[i++] = '-';
801005d6:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
801005db:	8d 79 02             	lea    0x2(%ecx),%edi
801005de:	8d 5c 3d d7          	lea    -0x29(%ebp,%edi,1),%ebx
801005e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    consputc(buf[i]);
801005e8:	0f be 03             	movsbl (%ebx),%eax
801005eb:	83 eb 01             	sub    $0x1,%ebx
801005ee:	e8 2d fe ff ff       	call   80100420 <consputc>
  while(--i >= 0)
801005f3:	39 f3                	cmp    %esi,%ebx
801005f5:	75 f1                	jne    801005e8 <printint+0x58>
}
801005f7:	83 c4 2c             	add    $0x2c,%esp
801005fa:	5b                   	pop    %ebx
801005fb:	5e                   	pop    %esi
801005fc:	5f                   	pop    %edi
801005fd:	5d                   	pop    %ebp
801005fe:	c3                   	ret    
801005ff:	90                   	nop
    x = -xx;
80100600:	f7 d8                	neg    %eax
80100602:	eb a9                	jmp    801005ad <printint+0x1d>
80100604:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010060a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80100610 <consolewrite>:

int
consolewrite(struct inode *ip, char *buf, int n)
{
80100610:	55                   	push   %ebp
80100611:	89 e5                	mov    %esp,%ebp
80100613:	57                   	push   %edi
80100614:	56                   	push   %esi
80100615:	53                   	push   %ebx
80100616:	83 ec 18             	sub    $0x18,%esp
80100619:	8b 75 10             	mov    0x10(%ebp),%esi
  int i;

  iunlock(ip);
8010061c:	ff 75 08             	pushl  0x8(%ebp)
8010061f:	e8 5c 11 00 00       	call   80101780 <iunlock>
  acquire(&cons.lock);
80100624:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010062b:	e8 00 3d 00 00       	call   80104330 <acquire>
  for(i = 0; i < n; i++)
80100630:	83 c4 10             	add    $0x10,%esp
80100633:	85 f6                	test   %esi,%esi
80100635:	7e 18                	jle    8010064f <consolewrite+0x3f>
80100637:	8b 7d 0c             	mov    0xc(%ebp),%edi
8010063a:	8d 1c 37             	lea    (%edi,%esi,1),%ebx
8010063d:	8d 76 00             	lea    0x0(%esi),%esi
    consputc(buf[i] & 0xff);
80100640:	0f b6 07             	movzbl (%edi),%eax
80100643:	83 c7 01             	add    $0x1,%edi
80100646:	e8 d5 fd ff ff       	call   80100420 <consputc>
  for(i = 0; i < n; i++)
8010064b:	39 fb                	cmp    %edi,%ebx
8010064d:	75 f1                	jne    80100640 <consolewrite+0x30>
  release(&cons.lock);
8010064f:	83 ec 0c             	sub    $0xc,%esp
80100652:	68 20 a5 10 80       	push   $0x8010a520
80100657:	e8 f4 3d 00 00       	call   80104450 <release>
  ilock(ip);
8010065c:	58                   	pop    %eax
8010065d:	ff 75 08             	pushl  0x8(%ebp)
80100660:	e8 3b 10 00 00       	call   801016a0 <ilock>

  return n;
}
80100665:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100668:	89 f0                	mov    %esi,%eax
8010066a:	5b                   	pop    %ebx
8010066b:	5e                   	pop    %esi
8010066c:	5f                   	pop    %edi
8010066d:	5d                   	pop    %ebp
8010066e:	c3                   	ret    
8010066f:	90                   	nop

80100670 <cprintf>:
{
80100670:	55                   	push   %ebp
80100671:	89 e5                	mov    %esp,%ebp
80100673:	57                   	push   %edi
80100674:	56                   	push   %esi
80100675:	53                   	push   %ebx
80100676:	83 ec 1c             	sub    $0x1c,%esp
  locking = cons.locking;
80100679:	a1 54 a5 10 80       	mov    0x8010a554,%eax
  if(locking)
8010067e:	85 c0                	test   %eax,%eax
  locking = cons.locking;
80100680:	89 45 dc             	mov    %eax,-0x24(%ebp)
  if(locking)
80100683:	0f 85 6f 01 00 00    	jne    801007f8 <cprintf+0x188>
  if (fmt == 0)
80100689:	8b 45 08             	mov    0x8(%ebp),%eax
8010068c:	85 c0                	test   %eax,%eax
8010068e:	89 c7                	mov    %eax,%edi
80100690:	0f 84 77 01 00 00    	je     8010080d <cprintf+0x19d>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100696:	0f b6 00             	movzbl (%eax),%eax
  argp = (uint*)(void*)(&fmt + 1);
80100699:	8d 4d 0c             	lea    0xc(%ebp),%ecx
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
8010069c:	31 db                	xor    %ebx,%ebx
  argp = (uint*)(void*)(&fmt + 1);
8010069e:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
801006a1:	85 c0                	test   %eax,%eax
801006a3:	75 56                	jne    801006fb <cprintf+0x8b>
801006a5:	eb 79                	jmp    80100720 <cprintf+0xb0>
801006a7:	89 f6                	mov    %esi,%esi
801006a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[++i] & 0xff;
801006b0:	0f b6 16             	movzbl (%esi),%edx
    if(c == 0)
801006b3:	85 d2                	test   %edx,%edx
801006b5:	74 69                	je     80100720 <cprintf+0xb0>
801006b7:	83 c3 02             	add    $0x2,%ebx
    switch(c){
801006ba:	83 fa 70             	cmp    $0x70,%edx
801006bd:	8d 34 1f             	lea    (%edi,%ebx,1),%esi
801006c0:	0f 84 84 00 00 00    	je     8010074a <cprintf+0xda>
801006c6:	7f 78                	jg     80100740 <cprintf+0xd0>
801006c8:	83 fa 25             	cmp    $0x25,%edx
801006cb:	0f 84 ff 00 00 00    	je     801007d0 <cprintf+0x160>
801006d1:	83 fa 64             	cmp    $0x64,%edx
801006d4:	0f 85 8e 00 00 00    	jne    80100768 <cprintf+0xf8>
      printint(*argp++, 10, 1);
801006da:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801006dd:	ba 0a 00 00 00       	mov    $0xa,%edx
801006e2:	8d 48 04             	lea    0x4(%eax),%ecx
801006e5:	8b 00                	mov    (%eax),%eax
801006e7:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
801006ea:	b9 01 00 00 00       	mov    $0x1,%ecx
801006ef:	e8 9c fe ff ff       	call   80100590 <printint>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
801006f4:	0f b6 06             	movzbl (%esi),%eax
801006f7:	85 c0                	test   %eax,%eax
801006f9:	74 25                	je     80100720 <cprintf+0xb0>
801006fb:	8d 53 01             	lea    0x1(%ebx),%edx
    if(c != '%'){
801006fe:	83 f8 25             	cmp    $0x25,%eax
80100701:	8d 34 17             	lea    (%edi,%edx,1),%esi
80100704:	74 aa                	je     801006b0 <cprintf+0x40>
80100706:	89 55 e0             	mov    %edx,-0x20(%ebp)
      consputc(c);
80100709:	e8 12 fd ff ff       	call   80100420 <consputc>
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
8010070e:	0f b6 06             	movzbl (%esi),%eax
      continue;
80100711:	8b 55 e0             	mov    -0x20(%ebp),%edx
80100714:	89 d3                	mov    %edx,%ebx
  for(i = 0; (c = fmt[i] & 0xff) != 0; i++){
80100716:	85 c0                	test   %eax,%eax
80100718:	75 e1                	jne    801006fb <cprintf+0x8b>
8010071a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  if(locking)
80100720:	8b 45 dc             	mov    -0x24(%ebp),%eax
80100723:	85 c0                	test   %eax,%eax
80100725:	74 10                	je     80100737 <cprintf+0xc7>
    release(&cons.lock);
80100727:	83 ec 0c             	sub    $0xc,%esp
8010072a:	68 20 a5 10 80       	push   $0x8010a520
8010072f:	e8 1c 3d 00 00       	call   80104450 <release>
80100734:	83 c4 10             	add    $0x10,%esp
}
80100737:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010073a:	5b                   	pop    %ebx
8010073b:	5e                   	pop    %esi
8010073c:	5f                   	pop    %edi
8010073d:	5d                   	pop    %ebp
8010073e:	c3                   	ret    
8010073f:	90                   	nop
    switch(c){
80100740:	83 fa 73             	cmp    $0x73,%edx
80100743:	74 43                	je     80100788 <cprintf+0x118>
80100745:	83 fa 78             	cmp    $0x78,%edx
80100748:	75 1e                	jne    80100768 <cprintf+0xf8>
      printint(*argp++, 16, 0);
8010074a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010074d:	ba 10 00 00 00       	mov    $0x10,%edx
80100752:	8d 48 04             	lea    0x4(%eax),%ecx
80100755:	8b 00                	mov    (%eax),%eax
80100757:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
8010075a:	31 c9                	xor    %ecx,%ecx
8010075c:	e8 2f fe ff ff       	call   80100590 <printint>
      break;
80100761:	eb 91                	jmp    801006f4 <cprintf+0x84>
80100763:	90                   	nop
80100764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      consputc('%');
80100768:	b8 25 00 00 00       	mov    $0x25,%eax
8010076d:	89 55 e0             	mov    %edx,-0x20(%ebp)
80100770:	e8 ab fc ff ff       	call   80100420 <consputc>
      consputc(c);
80100775:	8b 55 e0             	mov    -0x20(%ebp),%edx
80100778:	89 d0                	mov    %edx,%eax
8010077a:	e8 a1 fc ff ff       	call   80100420 <consputc>
      break;
8010077f:	e9 70 ff ff ff       	jmp    801006f4 <cprintf+0x84>
80100784:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if((s = (char*)*argp++) == 0)
80100788:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010078b:	8b 10                	mov    (%eax),%edx
8010078d:	8d 48 04             	lea    0x4(%eax),%ecx
80100790:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80100793:	85 d2                	test   %edx,%edx
80100795:	74 49                	je     801007e0 <cprintf+0x170>
      for(; *s; s++)
80100797:	0f be 02             	movsbl (%edx),%eax
      if((s = (char*)*argp++) == 0)
8010079a:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
      for(; *s; s++)
8010079d:	84 c0                	test   %al,%al
8010079f:	0f 84 4f ff ff ff    	je     801006f4 <cprintf+0x84>
801007a5:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801007a8:	89 d3                	mov    %edx,%ebx
801007aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801007b0:	83 c3 01             	add    $0x1,%ebx
        consputc(*s);
801007b3:	e8 68 fc ff ff       	call   80100420 <consputc>
      for(; *s; s++)
801007b8:	0f be 03             	movsbl (%ebx),%eax
801007bb:	84 c0                	test   %al,%al
801007bd:	75 f1                	jne    801007b0 <cprintf+0x140>
      if((s = (char*)*argp++) == 0)
801007bf:	8b 45 e0             	mov    -0x20(%ebp),%eax
801007c2:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
801007c5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801007c8:	e9 27 ff ff ff       	jmp    801006f4 <cprintf+0x84>
801007cd:	8d 76 00             	lea    0x0(%esi),%esi
      consputc('%');
801007d0:	b8 25 00 00 00       	mov    $0x25,%eax
801007d5:	e8 46 fc ff ff       	call   80100420 <consputc>
      break;
801007da:	e9 15 ff ff ff       	jmp    801006f4 <cprintf+0x84>
801007df:	90                   	nop
        s = "(null)";
801007e0:	ba f8 6e 10 80       	mov    $0x80106ef8,%edx
      for(; *s; s++)
801007e5:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801007e8:	b8 28 00 00 00       	mov    $0x28,%eax
801007ed:	89 d3                	mov    %edx,%ebx
801007ef:	eb bf                	jmp    801007b0 <cprintf+0x140>
801007f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    acquire(&cons.lock);
801007f8:	83 ec 0c             	sub    $0xc,%esp
801007fb:	68 20 a5 10 80       	push   $0x8010a520
80100800:	e8 2b 3b 00 00       	call   80104330 <acquire>
80100805:	83 c4 10             	add    $0x10,%esp
80100808:	e9 7c fe ff ff       	jmp    80100689 <cprintf+0x19>
    panic("null fmt");
8010080d:	83 ec 0c             	sub    $0xc,%esp
80100810:	68 ff 6e 10 80       	push   $0x80106eff
80100815:	e8 86 fb ff ff       	call   801003a0 <panic>
8010081a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80100820 <consoleintr>:
{
80100820:	55                   	push   %ebp
80100821:	89 e5                	mov    %esp,%ebp
80100823:	57                   	push   %edi
80100824:	56                   	push   %esi
80100825:	53                   	push   %ebx
  int c, doprocdump = 0;
80100826:	31 f6                	xor    %esi,%esi
{
80100828:	83 ec 18             	sub    $0x18,%esp
8010082b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&cons.lock);
8010082e:	68 20 a5 10 80       	push   $0x8010a520
80100833:	e8 f8 3a 00 00       	call   80104330 <acquire>
  while((c = getc()) >= 0){
80100838:	83 c4 10             	add    $0x10,%esp
8010083b:	90                   	nop
8010083c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100840:	ff d3                	call   *%ebx
80100842:	85 c0                	test   %eax,%eax
80100844:	89 c7                	mov    %eax,%edi
80100846:	78 48                	js     80100890 <consoleintr+0x70>
    switch(c){
80100848:	83 ff 10             	cmp    $0x10,%edi
8010084b:	0f 84 e7 00 00 00    	je     80100938 <consoleintr+0x118>
80100851:	7e 5d                	jle    801008b0 <consoleintr+0x90>
80100853:	83 ff 15             	cmp    $0x15,%edi
80100856:	0f 84 ec 00 00 00    	je     80100948 <consoleintr+0x128>
8010085c:	83 ff 7f             	cmp    $0x7f,%edi
8010085f:	75 54                	jne    801008b5 <consoleintr+0x95>
      if(input.e != input.w){
80100861:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100866:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
8010086c:	74 d2                	je     80100840 <consoleintr+0x20>
        input.e--;
8010086e:	83 e8 01             	sub    $0x1,%eax
80100871:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
        consputc(BACKSPACE);
80100876:	b8 00 01 00 00       	mov    $0x100,%eax
8010087b:	e8 a0 fb ff ff       	call   80100420 <consputc>
  while((c = getc()) >= 0){
80100880:	ff d3                	call   *%ebx
80100882:	85 c0                	test   %eax,%eax
80100884:	89 c7                	mov    %eax,%edi
80100886:	79 c0                	jns    80100848 <consoleintr+0x28>
80100888:	90                   	nop
80100889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  release(&cons.lock);
80100890:	83 ec 0c             	sub    $0xc,%esp
80100893:	68 20 a5 10 80       	push   $0x8010a520
80100898:	e8 b3 3b 00 00       	call   80104450 <release>
  if(doprocdump) {
8010089d:	83 c4 10             	add    $0x10,%esp
801008a0:	85 f6                	test   %esi,%esi
801008a2:	0f 85 f8 00 00 00    	jne    801009a0 <consoleintr+0x180>
}
801008a8:	8d 65 f4             	lea    -0xc(%ebp),%esp
801008ab:	5b                   	pop    %ebx
801008ac:	5e                   	pop    %esi
801008ad:	5f                   	pop    %edi
801008ae:	5d                   	pop    %ebp
801008af:	c3                   	ret    
    switch(c){
801008b0:	83 ff 08             	cmp    $0x8,%edi
801008b3:	74 ac                	je     80100861 <consoleintr+0x41>
      if(c != 0 && input.e-input.r < INPUT_BUF){
801008b5:	85 ff                	test   %edi,%edi
801008b7:	74 87                	je     80100840 <consoleintr+0x20>
801008b9:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801008be:	89 c2                	mov    %eax,%edx
801008c0:	2b 15 a0 ff 10 80    	sub    0x8010ffa0,%edx
801008c6:	83 fa 7f             	cmp    $0x7f,%edx
801008c9:	0f 87 71 ff ff ff    	ja     80100840 <consoleintr+0x20>
801008cf:	8d 50 01             	lea    0x1(%eax),%edx
801008d2:	83 e0 7f             	and    $0x7f,%eax
        c = (c == '\r') ? '\n' : c;
801008d5:	83 ff 0d             	cmp    $0xd,%edi
        input.buf[input.e++ % INPUT_BUF] = c;
801008d8:	89 15 a8 ff 10 80    	mov    %edx,0x8010ffa8
        c = (c == '\r') ? '\n' : c;
801008de:	0f 84 cc 00 00 00    	je     801009b0 <consoleintr+0x190>
        input.buf[input.e++ % INPUT_BUF] = c;
801008e4:	89 f9                	mov    %edi,%ecx
801008e6:	88 88 20 ff 10 80    	mov    %cl,-0x7fef00e0(%eax)
        consputc(c);
801008ec:	89 f8                	mov    %edi,%eax
801008ee:	e8 2d fb ff ff       	call   80100420 <consputc>
        if(c == '\n' || c == C('D') || input.e == input.r+INPUT_BUF){
801008f3:	83 ff 0a             	cmp    $0xa,%edi
801008f6:	0f 84 c5 00 00 00    	je     801009c1 <consoleintr+0x1a1>
801008fc:	83 ff 04             	cmp    $0x4,%edi
801008ff:	0f 84 bc 00 00 00    	je     801009c1 <consoleintr+0x1a1>
80100905:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
8010090a:	83 e8 80             	sub    $0xffffff80,%eax
8010090d:	39 05 a8 ff 10 80    	cmp    %eax,0x8010ffa8
80100913:	0f 85 27 ff ff ff    	jne    80100840 <consoleintr+0x20>
          wakeup(&input.r);
80100919:	83 ec 0c             	sub    $0xc,%esp
          input.w = input.e;
8010091c:	a3 a4 ff 10 80       	mov    %eax,0x8010ffa4
          wakeup(&input.r);
80100921:	68 a0 ff 10 80       	push   $0x8010ffa0
80100926:	e8 35 36 00 00       	call   80103f60 <wakeup>
8010092b:	83 c4 10             	add    $0x10,%esp
8010092e:	e9 0d ff ff ff       	jmp    80100840 <consoleintr+0x20>
80100933:	90                   	nop
80100934:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      doprocdump = 1;
80100938:	be 01 00 00 00       	mov    $0x1,%esi
8010093d:	e9 fe fe ff ff       	jmp    80100840 <consoleintr+0x20>
80100942:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      while(input.e != input.w &&
80100948:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
8010094d:	39 05 a4 ff 10 80    	cmp    %eax,0x8010ffa4
80100953:	75 2b                	jne    80100980 <consoleintr+0x160>
80100955:	e9 e6 fe ff ff       	jmp    80100840 <consoleintr+0x20>
8010095a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        input.e--;
80100960:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
        consputc(BACKSPACE);
80100965:	b8 00 01 00 00       	mov    $0x100,%eax
8010096a:	e8 b1 fa ff ff       	call   80100420 <consputc>
      while(input.e != input.w &&
8010096f:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100974:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
8010097a:	0f 84 c0 fe ff ff    	je     80100840 <consoleintr+0x20>
            input.buf[(input.e-1) % INPUT_BUF] != '\n'){
80100980:	83 e8 01             	sub    $0x1,%eax
80100983:	89 c2                	mov    %eax,%edx
80100985:	83 e2 7f             	and    $0x7f,%edx
      while(input.e != input.w &&
80100988:	80 ba 20 ff 10 80 0a 	cmpb   $0xa,-0x7fef00e0(%edx)
8010098f:	75 cf                	jne    80100960 <consoleintr+0x140>
80100991:	e9 aa fe ff ff       	jmp    80100840 <consoleintr+0x20>
80100996:	8d 76 00             	lea    0x0(%esi),%esi
80100999:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
}
801009a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801009a3:	5b                   	pop    %ebx
801009a4:	5e                   	pop    %esi
801009a5:	5f                   	pop    %edi
801009a6:	5d                   	pop    %ebp
    procdump();  // now call procdump() wo. cons.lock held
801009a7:	e9 94 36 00 00       	jmp    80104040 <procdump>
801009ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        input.buf[input.e++ % INPUT_BUF] = c;
801009b0:	c6 80 20 ff 10 80 0a 	movb   $0xa,-0x7fef00e0(%eax)
        consputc(c);
801009b7:	b8 0a 00 00 00       	mov    $0xa,%eax
801009bc:	e8 5f fa ff ff       	call   80100420 <consputc>
801009c1:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801009c6:	e9 4e ff ff ff       	jmp    80100919 <consoleintr+0xf9>
801009cb:	90                   	nop
801009cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801009d0 <consoleinit>:

void
consoleinit(void)
{
801009d0:	55                   	push   %ebp
801009d1:	89 e5                	mov    %esp,%ebp
801009d3:	83 ec 10             	sub    $0x10,%esp
  initlock(&cons.lock, "console");
801009d6:	68 08 6f 10 80       	push   $0x80106f08
801009db:	68 20 a5 10 80       	push   $0x8010a520
801009e0:	e8 4b 38 00 00       	call   80104230 <initlock>

  devsw[CONSOLE].write = consolewrite;
  devsw[CONSOLE].read = consoleread;
  cons.locking = 1;

  ioapicenable(IRQ_KBD, 0);
801009e5:	58                   	pop    %eax
801009e6:	5a                   	pop    %edx
801009e7:	6a 00                	push   $0x0
801009e9:	6a 01                	push   $0x1
  devsw[CONSOLE].write = consolewrite;
801009eb:	c7 05 6c 09 11 80 10 	movl   $0x80100610,0x8011096c
801009f2:	06 10 80 
  devsw[CONSOLE].read = consoleread;
801009f5:	c7 05 68 09 11 80 80 	movl   $0x80100280,0x80110968
801009fc:	02 10 80 
  cons.locking = 1;
801009ff:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
80100a06:	00 00 00 
  ioapicenable(IRQ_KBD, 0);
80100a09:	e8 e2 18 00 00       	call   801022f0 <ioapicenable>
}
80100a0e:	83 c4 10             	add    $0x10,%esp
80100a11:	c9                   	leave  
80100a12:	c3                   	ret    
80100a13:	66 90                	xchg   %ax,%ax
80100a15:	66 90                	xchg   %ax,%ax
80100a17:	66 90                	xchg   %ax,%ax
80100a19:	66 90                	xchg   %ax,%ax
80100a1b:	66 90                	xchg   %ax,%ax
80100a1d:	66 90                	xchg   %ax,%ax
80100a1f:	90                   	nop

80100a20 <exec>:
#include "x86.h"
#include "elf.h"

int
exec(char *path, char **argv)
{
80100a20:	55                   	push   %ebp
80100a21:	89 e5                	mov    %esp,%ebp
80100a23:	57                   	push   %edi
80100a24:	56                   	push   %esi
80100a25:	53                   	push   %ebx
80100a26:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
80100a2c:	e8 df 2d 00 00       	call   80103810 <myproc>
80100a31:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)

  begin_op();
80100a37:	e8 94 21 00 00       	call   80102bd0 <begin_op>

  if((ip = namei(path)) == 0){
80100a3c:	83 ec 0c             	sub    $0xc,%esp
80100a3f:	ff 75 08             	pushl  0x8(%ebp)
80100a42:	e8 b9 14 00 00       	call   80101f00 <namei>
80100a47:	83 c4 10             	add    $0x10,%esp
80100a4a:	85 c0                	test   %eax,%eax
80100a4c:	0f 84 91 01 00 00    	je     80100be3 <exec+0x1c3>
    end_op();
    cprintf("exec: fail\n");
    return -1;
  }
  ilock(ip);
80100a52:	83 ec 0c             	sub    $0xc,%esp
80100a55:	89 c3                	mov    %eax,%ebx
80100a57:	50                   	push   %eax
80100a58:	e8 43 0c 00 00       	call   801016a0 <ilock>
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
80100a5d:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
80100a63:	6a 34                	push   $0x34
80100a65:	6a 00                	push   $0x0
80100a67:	50                   	push   %eax
80100a68:	53                   	push   %ebx
80100a69:	e8 12 0f 00 00       	call   80101980 <readi>
80100a6e:	83 c4 20             	add    $0x20,%esp
80100a71:	83 f8 34             	cmp    $0x34,%eax
80100a74:	74 22                	je     80100a98 <exec+0x78>

 bad:
  if(pgdir)
    freevm(pgdir);
  if(ip){
    iunlockput(ip);
80100a76:	83 ec 0c             	sub    $0xc,%esp
80100a79:	53                   	push   %ebx
80100a7a:	e8 b1 0e 00 00       	call   80101930 <iunlockput>
    end_op();
80100a7f:	e8 bc 21 00 00       	call   80102c40 <end_op>
80100a84:	83 c4 10             	add    $0x10,%esp
  }
  return -1;
80100a87:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80100a8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100a8f:	5b                   	pop    %ebx
80100a90:	5e                   	pop    %esi
80100a91:	5f                   	pop    %edi
80100a92:	5d                   	pop    %ebp
80100a93:	c3                   	ret    
80100a94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(elf.magic != ELF_MAGIC)
80100a98:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100a9f:	45 4c 46 
80100aa2:	75 d2                	jne    80100a76 <exec+0x56>
  if((pgdir = setupkvm()) == 0)
80100aa4:	e8 67 61 00 00       	call   80106c10 <setupkvm>
80100aa9:	85 c0                	test   %eax,%eax
80100aab:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100ab1:	74 c3                	je     80100a76 <exec+0x56>
  sz = 0;
80100ab3:	31 ff                	xor    %edi,%edi
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100ab5:	66 83 bd 50 ff ff ff 	cmpw   $0x0,-0xb0(%ebp)
80100abc:	00 
80100abd:	8b 85 40 ff ff ff    	mov    -0xc0(%ebp),%eax
80100ac3:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
80100ac9:	0f 84 8c 02 00 00    	je     80100d5b <exec+0x33b>
80100acf:	31 f6                	xor    %esi,%esi
80100ad1:	eb 7f                	jmp    80100b52 <exec+0x132>
80100ad3:	90                   	nop
80100ad4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(ph.type != ELF_PROG_LOAD)
80100ad8:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100adf:	75 63                	jne    80100b44 <exec+0x124>
    if(ph.memsz < ph.filesz)
80100ae1:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100ae7:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100aed:	0f 82 86 00 00 00    	jb     80100b79 <exec+0x159>
80100af3:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100af9:	72 7e                	jb     80100b79 <exec+0x159>
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
80100afb:	83 ec 04             	sub    $0x4,%esp
80100afe:	50                   	push   %eax
80100aff:	57                   	push   %edi
80100b00:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100b06:	e8 25 5f 00 00       	call   80106a30 <allocuvm>
80100b0b:	83 c4 10             	add    $0x10,%esp
80100b0e:	85 c0                	test   %eax,%eax
80100b10:	89 c7                	mov    %eax,%edi
80100b12:	74 65                	je     80100b79 <exec+0x159>
    if(ph.vaddr % PGSIZE != 0)
80100b14:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100b1a:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100b1f:	75 58                	jne    80100b79 <exec+0x159>
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100b21:	83 ec 0c             	sub    $0xc,%esp
80100b24:	ff b5 14 ff ff ff    	pushl  -0xec(%ebp)
80100b2a:	ff b5 08 ff ff ff    	pushl  -0xf8(%ebp)
80100b30:	53                   	push   %ebx
80100b31:	50                   	push   %eax
80100b32:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100b38:	e8 33 5e 00 00       	call   80106970 <loaduvm>
80100b3d:	83 c4 20             	add    $0x20,%esp
80100b40:	85 c0                	test   %eax,%eax
80100b42:	78 35                	js     80100b79 <exec+0x159>
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100b44:	0f b7 85 50 ff ff ff 	movzwl -0xb0(%ebp),%eax
80100b4b:	83 c6 01             	add    $0x1,%esi
80100b4e:	39 f0                	cmp    %esi,%eax
80100b50:	7e 3d                	jle    80100b8f <exec+0x16f>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
80100b52:	89 f0                	mov    %esi,%eax
80100b54:	6a 20                	push   $0x20
80100b56:	c1 e0 05             	shl    $0x5,%eax
80100b59:	03 85 ec fe ff ff    	add    -0x114(%ebp),%eax
80100b5f:	50                   	push   %eax
80100b60:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
80100b66:	50                   	push   %eax
80100b67:	53                   	push   %ebx
80100b68:	e8 13 0e 00 00       	call   80101980 <readi>
80100b6d:	83 c4 10             	add    $0x10,%esp
80100b70:	83 f8 20             	cmp    $0x20,%eax
80100b73:	0f 84 5f ff ff ff    	je     80100ad8 <exec+0xb8>
    freevm(pgdir);
80100b79:	83 ec 0c             	sub    $0xc,%esp
80100b7c:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100b82:	e8 09 60 00 00       	call   80106b90 <freevm>
80100b87:	83 c4 10             	add    $0x10,%esp
80100b8a:	e9 e7 fe ff ff       	jmp    80100a76 <exec+0x56>
80100b8f:	81 c7 ff 0f 00 00    	add    $0xfff,%edi
80100b95:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80100b9b:	8d b7 00 20 00 00    	lea    0x2000(%edi),%esi
  iunlockput(ip);
80100ba1:	83 ec 0c             	sub    $0xc,%esp
80100ba4:	53                   	push   %ebx
80100ba5:	e8 86 0d 00 00       	call   80101930 <iunlockput>
  end_op();
80100baa:	e8 91 20 00 00       	call   80102c40 <end_op>
  if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
80100baf:	83 c4 0c             	add    $0xc,%esp
80100bb2:	56                   	push   %esi
80100bb3:	57                   	push   %edi
80100bb4:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100bba:	e8 71 5e 00 00       	call   80106a30 <allocuvm>
80100bbf:	83 c4 10             	add    $0x10,%esp
80100bc2:	85 c0                	test   %eax,%eax
80100bc4:	89 c6                	mov    %eax,%esi
80100bc6:	75 3a                	jne    80100c02 <exec+0x1e2>
    freevm(pgdir);
80100bc8:	83 ec 0c             	sub    $0xc,%esp
80100bcb:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100bd1:	e8 ba 5f 00 00       	call   80106b90 <freevm>
80100bd6:	83 c4 10             	add    $0x10,%esp
  return -1;
80100bd9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100bde:	e9 a9 fe ff ff       	jmp    80100a8c <exec+0x6c>
    end_op();
80100be3:	e8 58 20 00 00       	call   80102c40 <end_op>
    cprintf("exec: fail\n");
80100be8:	83 ec 0c             	sub    $0xc,%esp
80100beb:	68 21 6f 10 80       	push   $0x80106f21
80100bf0:	e8 7b fa ff ff       	call   80100670 <cprintf>
    return -1;
80100bf5:	83 c4 10             	add    $0x10,%esp
80100bf8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100bfd:	e9 8a fe ff ff       	jmp    80100a8c <exec+0x6c>
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100c02:	8d 80 00 e0 ff ff    	lea    -0x2000(%eax),%eax
80100c08:	83 ec 08             	sub    $0x8,%esp
  for(argc = 0; argv[argc]; argc++) {
80100c0b:	31 ff                	xor    %edi,%edi
80100c0d:	89 f3                	mov    %esi,%ebx
  clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
80100c0f:	50                   	push   %eax
80100c10:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
80100c16:	e8 95 60 00 00       	call   80106cb0 <clearpteu>
  for(argc = 0; argv[argc]; argc++) {
80100c1b:	8b 45 0c             	mov    0xc(%ebp),%eax
80100c1e:	83 c4 10             	add    $0x10,%esp
80100c21:	8d 95 58 ff ff ff    	lea    -0xa8(%ebp),%edx
80100c27:	8b 00                	mov    (%eax),%eax
80100c29:	85 c0                	test   %eax,%eax
80100c2b:	74 70                	je     80100c9d <exec+0x27d>
80100c2d:	89 b5 ec fe ff ff    	mov    %esi,-0x114(%ebp)
80100c33:	8b b5 f0 fe ff ff    	mov    -0x110(%ebp),%esi
80100c39:	eb 0a                	jmp    80100c45 <exec+0x225>
80100c3b:	90                   	nop
80100c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(argc >= MAXARG)
80100c40:	83 ff 20             	cmp    $0x20,%edi
80100c43:	74 83                	je     80100bc8 <exec+0x1a8>
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100c45:	83 ec 0c             	sub    $0xc,%esp
80100c48:	50                   	push   %eax
80100c49:	e8 52 3a 00 00       	call   801046a0 <strlen>
80100c4e:	f7 d0                	not    %eax
80100c50:	01 c3                	add    %eax,%ebx
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100c52:	8b 45 0c             	mov    0xc(%ebp),%eax
80100c55:	5a                   	pop    %edx
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100c56:	83 e3 fc             	and    $0xfffffffc,%ebx
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100c59:	ff 34 b8             	pushl  (%eax,%edi,4)
80100c5c:	e8 3f 3a 00 00       	call   801046a0 <strlen>
80100c61:	83 c0 01             	add    $0x1,%eax
80100c64:	50                   	push   %eax
80100c65:	8b 45 0c             	mov    0xc(%ebp),%eax
80100c68:	ff 34 b8             	pushl  (%eax,%edi,4)
80100c6b:	53                   	push   %ebx
80100c6c:	56                   	push   %esi
80100c6d:	e8 8e 61 00 00       	call   80106e00 <copyout>
80100c72:	83 c4 20             	add    $0x20,%esp
80100c75:	85 c0                	test   %eax,%eax
80100c77:	0f 88 4b ff ff ff    	js     80100bc8 <exec+0x1a8>
  for(argc = 0; argv[argc]; argc++) {
80100c7d:	8b 45 0c             	mov    0xc(%ebp),%eax
    ustack[3+argc] = sp;
80100c80:	89 9c bd 64 ff ff ff 	mov    %ebx,-0x9c(%ebp,%edi,4)
  for(argc = 0; argv[argc]; argc++) {
80100c87:	83 c7 01             	add    $0x1,%edi
    ustack[3+argc] = sp;
80100c8a:	8d 95 58 ff ff ff    	lea    -0xa8(%ebp),%edx
  for(argc = 0; argv[argc]; argc++) {
80100c90:	8b 04 b8             	mov    (%eax,%edi,4),%eax
80100c93:	85 c0                	test   %eax,%eax
80100c95:	75 a9                	jne    80100c40 <exec+0x220>
80100c97:	8b b5 ec fe ff ff    	mov    -0x114(%ebp),%esi
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100c9d:	8d 04 bd 04 00 00 00 	lea    0x4(,%edi,4),%eax
80100ca4:	89 d9                	mov    %ebx,%ecx
  ustack[3+argc] = 0;
80100ca6:	c7 84 bd 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%edi,4)
80100cad:	00 00 00 00 
  ustack[0] = 0xffffffff;  // fake return PC
80100cb1:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100cb8:	ff ff ff 
  ustack[1] = argc;
80100cbb:	89 bd 5c ff ff ff    	mov    %edi,-0xa4(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100cc1:	29 c1                	sub    %eax,%ecx
  sp -= (3+argc+1) * 4;
80100cc3:	83 c0 0c             	add    $0xc,%eax
80100cc6:	29 c3                	sub    %eax,%ebx
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100cc8:	50                   	push   %eax
80100cc9:	52                   	push   %edx
80100cca:	53                   	push   %ebx
80100ccb:	ff b5 f0 fe ff ff    	pushl  -0x110(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100cd1:	89 8d 60 ff ff ff    	mov    %ecx,-0xa0(%ebp)
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100cd7:	e8 24 61 00 00       	call   80106e00 <copyout>
80100cdc:	83 c4 10             	add    $0x10,%esp
80100cdf:	85 c0                	test   %eax,%eax
80100ce1:	0f 88 e1 fe ff ff    	js     80100bc8 <exec+0x1a8>
  for(last=s=path; *s; s++)
80100ce7:	8b 45 08             	mov    0x8(%ebp),%eax
80100cea:	0f b6 00             	movzbl (%eax),%eax
80100ced:	84 c0                	test   %al,%al
80100cef:	74 17                	je     80100d08 <exec+0x2e8>
80100cf1:	8b 55 08             	mov    0x8(%ebp),%edx
80100cf4:	89 d1                	mov    %edx,%ecx
80100cf6:	83 c1 01             	add    $0x1,%ecx
80100cf9:	3c 2f                	cmp    $0x2f,%al
80100cfb:	0f b6 01             	movzbl (%ecx),%eax
80100cfe:	0f 44 d1             	cmove  %ecx,%edx
80100d01:	84 c0                	test   %al,%al
80100d03:	75 f1                	jne    80100cf6 <exec+0x2d6>
80100d05:	89 55 08             	mov    %edx,0x8(%ebp)
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80100d08:	8b bd f4 fe ff ff    	mov    -0x10c(%ebp),%edi
80100d0e:	50                   	push   %eax
80100d0f:	6a 10                	push   $0x10
80100d11:	ff 75 08             	pushl  0x8(%ebp)
80100d14:	89 f8                	mov    %edi,%eax
80100d16:	83 c0 6c             	add    $0x6c,%eax
80100d19:	50                   	push   %eax
80100d1a:	e8 41 39 00 00       	call   80104660 <safestrcpy>
  curproc->pgdir = pgdir;
80100d1f:	8b 95 f0 fe ff ff    	mov    -0x110(%ebp),%edx
  oldpgdir = curproc->pgdir;
80100d25:	89 f9                	mov    %edi,%ecx
80100d27:	8b 7f 04             	mov    0x4(%edi),%edi
  curproc->tf->eip = elf.entry;  // main
80100d2a:	8b 41 18             	mov    0x18(%ecx),%eax
  curproc->sz = sz;
80100d2d:	89 31                	mov    %esi,(%ecx)
  curproc->pgdir = pgdir;
80100d2f:	89 51 04             	mov    %edx,0x4(%ecx)
  curproc->tf->eip = elf.entry;  // main
80100d32:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100d38:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80100d3b:	8b 41 18             	mov    0x18(%ecx),%eax
80100d3e:	89 58 44             	mov    %ebx,0x44(%eax)
  switchuvm(curproc);
80100d41:	89 0c 24             	mov    %ecx,(%esp)
80100d44:	e8 97 5a 00 00       	call   801067e0 <switchuvm>
  freevm(oldpgdir);
80100d49:	89 3c 24             	mov    %edi,(%esp)
80100d4c:	e8 3f 5e 00 00       	call   80106b90 <freevm>
  return 0;
80100d51:	83 c4 10             	add    $0x10,%esp
80100d54:	31 c0                	xor    %eax,%eax
80100d56:	e9 31 fd ff ff       	jmp    80100a8c <exec+0x6c>
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100d5b:	be 00 20 00 00       	mov    $0x2000,%esi
80100d60:	e9 3c fe ff ff       	jmp    80100ba1 <exec+0x181>
80100d65:	66 90                	xchg   %ax,%ax
80100d67:	66 90                	xchg   %ax,%ax
80100d69:	66 90                	xchg   %ax,%ax
80100d6b:	66 90                	xchg   %ax,%ax
80100d6d:	66 90                	xchg   %ax,%ax
80100d6f:	90                   	nop

80100d70 <fileinit>:
80100d70:	55                   	push   %ebp
80100d71:	89 e5                	mov    %esp,%ebp
80100d73:	83 ec 10             	sub    $0x10,%esp
80100d76:	68 2d 6f 10 80       	push   $0x80106f2d
80100d7b:	68 c0 ff 10 80       	push   $0x8010ffc0
80100d80:	e8 ab 34 00 00       	call   80104230 <initlock>
80100d85:	83 c4 10             	add    $0x10,%esp
80100d88:	c9                   	leave  
80100d89:	c3                   	ret    
80100d8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80100d90 <filealloc>:
80100d90:	55                   	push   %ebp
80100d91:	89 e5                	mov    %esp,%ebp
80100d93:	53                   	push   %ebx
80100d94:	bb f4 ff 10 80       	mov    $0x8010fff4,%ebx
80100d99:	83 ec 10             	sub    $0x10,%esp
80100d9c:	68 c0 ff 10 80       	push   $0x8010ffc0
80100da1:	e8 8a 35 00 00       	call   80104330 <acquire>
80100da6:	83 c4 10             	add    $0x10,%esp
80100da9:	eb 10                	jmp    80100dbb <filealloc+0x2b>
80100dab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100daf:	90                   	nop
80100db0:	83 c3 18             	add    $0x18,%ebx
80100db3:	81 fb 54 09 11 80    	cmp    $0x80110954,%ebx
80100db9:	74 25                	je     80100de0 <filealloc+0x50>
80100dbb:	8b 43 04             	mov    0x4(%ebx),%eax
80100dbe:	85 c0                	test   %eax,%eax
80100dc0:	75 ee                	jne    80100db0 <filealloc+0x20>
80100dc2:	83 ec 0c             	sub    $0xc,%esp
80100dc5:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
80100dcc:	68 c0 ff 10 80       	push   $0x8010ffc0
80100dd1:	e8 7a 36 00 00       	call   80104450 <release>
80100dd6:	89 d8                	mov    %ebx,%eax
80100dd8:	83 c4 10             	add    $0x10,%esp
80100ddb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100dde:	c9                   	leave  
80100ddf:	c3                   	ret    
80100de0:	83 ec 0c             	sub    $0xc,%esp
80100de3:	31 db                	xor    %ebx,%ebx
80100de5:	68 c0 ff 10 80       	push   $0x8010ffc0
80100dea:	e8 61 36 00 00       	call   80104450 <release>
80100def:	89 d8                	mov    %ebx,%eax
80100df1:	83 c4 10             	add    $0x10,%esp
80100df4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100df7:	c9                   	leave  
80100df8:	c3                   	ret    
80100df9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80100e00 <filedup>:
80100e00:	55                   	push   %ebp
80100e01:	89 e5                	mov    %esp,%ebp
80100e03:	53                   	push   %ebx
80100e04:	83 ec 10             	sub    $0x10,%esp
80100e07:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100e0a:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e0f:	e8 1c 35 00 00       	call   80104330 <acquire>
80100e14:	8b 43 04             	mov    0x4(%ebx),%eax
80100e17:	83 c4 10             	add    $0x10,%esp
80100e1a:	85 c0                	test   %eax,%eax
80100e1c:	7e 1a                	jle    80100e38 <filedup+0x38>
80100e1e:	83 c0 01             	add    $0x1,%eax
80100e21:	83 ec 0c             	sub    $0xc,%esp
80100e24:	89 43 04             	mov    %eax,0x4(%ebx)
80100e27:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e2c:	e8 1f 36 00 00       	call   80104450 <release>
80100e31:	89 d8                	mov    %ebx,%eax
80100e33:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100e36:	c9                   	leave  
80100e37:	c3                   	ret    
80100e38:	83 ec 0c             	sub    $0xc,%esp
80100e3b:	68 34 6f 10 80       	push   $0x80106f34
80100e40:	e8 5b f5 ff ff       	call   801003a0 <panic>
80100e45:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80100e50 <fileclose>:
80100e50:	55                   	push   %ebp
80100e51:	89 e5                	mov    %esp,%ebp
80100e53:	57                   	push   %edi
80100e54:	56                   	push   %esi
80100e55:	53                   	push   %ebx
80100e56:	83 ec 28             	sub    $0x28,%esp
80100e59:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100e5c:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e61:	e8 ca 34 00 00       	call   80104330 <acquire>
80100e66:	8b 53 04             	mov    0x4(%ebx),%edx
80100e69:	83 c4 10             	add    $0x10,%esp
80100e6c:	85 d2                	test   %edx,%edx
80100e6e:	0f 8e a5 00 00 00    	jle    80100f19 <fileclose+0xc9>
80100e74:	83 ea 01             	sub    $0x1,%edx
80100e77:	89 53 04             	mov    %edx,0x4(%ebx)
80100e7a:	75 44                	jne    80100ec0 <fileclose+0x70>
80100e7c:	0f b6 43 09          	movzbl 0x9(%ebx),%eax
80100e80:	83 ec 0c             	sub    $0xc,%esp
80100e83:	8b 3b                	mov    (%ebx),%edi
80100e85:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100e8b:	8b 73 0c             	mov    0xc(%ebx),%esi
80100e8e:	88 45 e7             	mov    %al,-0x19(%ebp)
80100e91:	8b 43 10             	mov    0x10(%ebx),%eax
80100e94:	68 c0 ff 10 80       	push   $0x8010ffc0
80100e99:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100e9c:	e8 af 35 00 00       	call   80104450 <release>
80100ea1:	83 c4 10             	add    $0x10,%esp
80100ea4:	83 ff 01             	cmp    $0x1,%edi
80100ea7:	74 57                	je     80100f00 <fileclose+0xb0>
80100ea9:	83 ff 02             	cmp    $0x2,%edi
80100eac:	74 2a                	je     80100ed8 <fileclose+0x88>
80100eae:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100eb1:	5b                   	pop    %ebx
80100eb2:	5e                   	pop    %esi
80100eb3:	5f                   	pop    %edi
80100eb4:	5d                   	pop    %ebp
80100eb5:	c3                   	ret    
80100eb6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100ebd:	8d 76 00             	lea    0x0(%esi),%esi
80100ec0:	c7 45 08 c0 ff 10 80 	movl   $0x8010ffc0,0x8(%ebp)
80100ec7:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100eca:	5b                   	pop    %ebx
80100ecb:	5e                   	pop    %esi
80100ecc:	5f                   	pop    %edi
80100ecd:	5d                   	pop    %ebp
80100ece:	e9 7d 35 00 00       	jmp    80104450 <release>
80100ed3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100ed7:	90                   	nop
80100ed8:	e8 f3 1c 00 00       	call   80102bd0 <begin_op>
80100edd:	83 ec 0c             	sub    $0xc,%esp
80100ee0:	ff 75 e0             	pushl  -0x20(%ebp)
80100ee3:	e8 e8 08 00 00       	call   801017d0 <iput>
80100ee8:	83 c4 10             	add    $0x10,%esp
80100eeb:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100eee:	5b                   	pop    %ebx
80100eef:	5e                   	pop    %esi
80100ef0:	5f                   	pop    %edi
80100ef1:	5d                   	pop    %ebp
80100ef2:	e9 49 1d 00 00       	jmp    80102c40 <end_op>
80100ef7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100efe:	66 90                	xchg   %ax,%ax
80100f00:	0f be 5d e7          	movsbl -0x19(%ebp),%ebx
80100f04:	83 ec 08             	sub    $0x8,%esp
80100f07:	53                   	push   %ebx
80100f08:	56                   	push   %esi
80100f09:	e8 72 24 00 00       	call   80103380 <pipeclose>
80100f0e:	83 c4 10             	add    $0x10,%esp
80100f11:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100f14:	5b                   	pop    %ebx
80100f15:	5e                   	pop    %esi
80100f16:	5f                   	pop    %edi
80100f17:	5d                   	pop    %ebp
80100f18:	c3                   	ret    
80100f19:	83 ec 0c             	sub    $0xc,%esp
80100f1c:	68 3c 6f 10 80       	push   $0x80106f3c
80100f21:	e8 7a f4 ff ff       	call   801003a0 <panic>
80100f26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100f2d:	8d 76 00             	lea    0x0(%esi),%esi

80100f30 <filestat>:
80100f30:	55                   	push   %ebp
80100f31:	89 e5                	mov    %esp,%ebp
80100f33:	53                   	push   %ebx
80100f34:	83 ec 04             	sub    $0x4,%esp
80100f37:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100f3a:	83 3b 02             	cmpl   $0x2,(%ebx)
80100f3d:	75 31                	jne    80100f70 <filestat+0x40>
80100f3f:	83 ec 0c             	sub    $0xc,%esp
80100f42:	ff 73 10             	pushl  0x10(%ebx)
80100f45:	e8 56 07 00 00       	call   801016a0 <ilock>
80100f4a:	58                   	pop    %eax
80100f4b:	5a                   	pop    %edx
80100f4c:	ff 75 0c             	pushl  0xc(%ebp)
80100f4f:	ff 73 10             	pushl  0x10(%ebx)
80100f52:	e8 f9 09 00 00       	call   80101950 <stati>
80100f57:	59                   	pop    %ecx
80100f58:	ff 73 10             	pushl  0x10(%ebx)
80100f5b:	e8 20 08 00 00       	call   80101780 <iunlock>
80100f60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100f63:	83 c4 10             	add    $0x10,%esp
80100f66:	31 c0                	xor    %eax,%eax
80100f68:	c9                   	leave  
80100f69:	c3                   	ret    
80100f6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100f70:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80100f73:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f78:	c9                   	leave  
80100f79:	c3                   	ret    
80100f7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80100f80 <fileread>:
80100f80:	55                   	push   %ebp
80100f81:	89 e5                	mov    %esp,%ebp
80100f83:	57                   	push   %edi
80100f84:	56                   	push   %esi
80100f85:	53                   	push   %ebx
80100f86:	83 ec 0c             	sub    $0xc,%esp
80100f89:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100f8c:	8b 75 0c             	mov    0xc(%ebp),%esi
80100f8f:	8b 7d 10             	mov    0x10(%ebp),%edi
80100f92:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100f96:	74 60                	je     80100ff8 <fileread+0x78>
80100f98:	8b 03                	mov    (%ebx),%eax
80100f9a:	83 f8 01             	cmp    $0x1,%eax
80100f9d:	74 41                	je     80100fe0 <fileread+0x60>
80100f9f:	83 f8 02             	cmp    $0x2,%eax
80100fa2:	75 5b                	jne    80100fff <fileread+0x7f>
80100fa4:	83 ec 0c             	sub    $0xc,%esp
80100fa7:	ff 73 10             	pushl  0x10(%ebx)
80100faa:	e8 f1 06 00 00       	call   801016a0 <ilock>
80100faf:	57                   	push   %edi
80100fb0:	ff 73 14             	pushl  0x14(%ebx)
80100fb3:	56                   	push   %esi
80100fb4:	ff 73 10             	pushl  0x10(%ebx)
80100fb7:	e8 c4 09 00 00       	call   80101980 <readi>
80100fbc:	83 c4 20             	add    $0x20,%esp
80100fbf:	89 c6                	mov    %eax,%esi
80100fc1:	85 c0                	test   %eax,%eax
80100fc3:	7e 03                	jle    80100fc8 <fileread+0x48>
80100fc5:	01 43 14             	add    %eax,0x14(%ebx)
80100fc8:	83 ec 0c             	sub    $0xc,%esp
80100fcb:	ff 73 10             	pushl  0x10(%ebx)
80100fce:	e8 ad 07 00 00       	call   80101780 <iunlock>
80100fd3:	83 c4 10             	add    $0x10,%esp
80100fd6:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100fd9:	89 f0                	mov    %esi,%eax
80100fdb:	5b                   	pop    %ebx
80100fdc:	5e                   	pop    %esi
80100fdd:	5f                   	pop    %edi
80100fde:	5d                   	pop    %ebp
80100fdf:	c3                   	ret    
80100fe0:	8b 43 0c             	mov    0xc(%ebx),%eax
80100fe3:	89 45 08             	mov    %eax,0x8(%ebp)
80100fe6:	8d 65 f4             	lea    -0xc(%ebp),%esp
80100fe9:	5b                   	pop    %ebx
80100fea:	5e                   	pop    %esi
80100feb:	5f                   	pop    %edi
80100fec:	5d                   	pop    %ebp
80100fed:	e9 3e 25 00 00       	jmp    80103530 <piperead>
80100ff2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100ff8:	be ff ff ff ff       	mov    $0xffffffff,%esi
80100ffd:	eb d7                	jmp    80100fd6 <fileread+0x56>
80100fff:	83 ec 0c             	sub    $0xc,%esp
80101002:	68 46 6f 10 80       	push   $0x80106f46
80101007:	e8 94 f3 ff ff       	call   801003a0 <panic>
8010100c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101010 <filewrite>:
80101010:	55                   	push   %ebp
80101011:	89 e5                	mov    %esp,%ebp
80101013:	57                   	push   %edi
80101014:	56                   	push   %esi
80101015:	53                   	push   %ebx
80101016:	83 ec 1c             	sub    $0x1c,%esp
80101019:	8b 45 0c             	mov    0xc(%ebp),%eax
8010101c:	8b 75 08             	mov    0x8(%ebp),%esi
8010101f:	89 45 dc             	mov    %eax,-0x24(%ebp)
80101022:	8b 45 10             	mov    0x10(%ebp),%eax
80101025:	80 7e 09 00          	cmpb   $0x0,0x9(%esi)
80101029:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010102c:	0f 84 bd 00 00 00    	je     801010ef <filewrite+0xdf>
80101032:	8b 06                	mov    (%esi),%eax
80101034:	83 f8 01             	cmp    $0x1,%eax
80101037:	0f 84 bf 00 00 00    	je     801010fc <filewrite+0xec>
8010103d:	83 f8 02             	cmp    $0x2,%eax
80101040:	0f 85 c8 00 00 00    	jne    8010110e <filewrite+0xfe>
80101046:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101049:	31 ff                	xor    %edi,%edi
8010104b:	85 c0                	test   %eax,%eax
8010104d:	7f 30                	jg     8010107f <filewrite+0x6f>
8010104f:	e9 94 00 00 00       	jmp    801010e8 <filewrite+0xd8>
80101054:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101058:	01 46 14             	add    %eax,0x14(%esi)
8010105b:	83 ec 0c             	sub    $0xc,%esp
8010105e:	ff 76 10             	pushl  0x10(%esi)
80101061:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101064:	e8 17 07 00 00       	call   80101780 <iunlock>
80101069:	e8 d2 1b 00 00       	call   80102c40 <end_op>
8010106e:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101071:	83 c4 10             	add    $0x10,%esp
80101074:	39 c3                	cmp    %eax,%ebx
80101076:	75 60                	jne    801010d8 <filewrite+0xc8>
80101078:	01 df                	add    %ebx,%edi
8010107a:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
8010107d:	7e 69                	jle    801010e8 <filewrite+0xd8>
8010107f:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101082:	b8 00 06 00 00       	mov    $0x600,%eax
80101087:	29 fb                	sub    %edi,%ebx
80101089:	81 fb 00 06 00 00    	cmp    $0x600,%ebx
8010108f:	0f 4f d8             	cmovg  %eax,%ebx
80101092:	e8 39 1b 00 00       	call   80102bd0 <begin_op>
80101097:	83 ec 0c             	sub    $0xc,%esp
8010109a:	ff 76 10             	pushl  0x10(%esi)
8010109d:	e8 fe 05 00 00       	call   801016a0 <ilock>
801010a2:	8b 45 dc             	mov    -0x24(%ebp),%eax
801010a5:	53                   	push   %ebx
801010a6:	ff 76 14             	pushl  0x14(%esi)
801010a9:	01 f8                	add    %edi,%eax
801010ab:	50                   	push   %eax
801010ac:	ff 76 10             	pushl  0x10(%esi)
801010af:	e8 cc 09 00 00       	call   80101a80 <writei>
801010b4:	83 c4 20             	add    $0x20,%esp
801010b7:	85 c0                	test   %eax,%eax
801010b9:	7f 9d                	jg     80101058 <filewrite+0x48>
801010bb:	83 ec 0c             	sub    $0xc,%esp
801010be:	ff 76 10             	pushl  0x10(%esi)
801010c1:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801010c4:	e8 b7 06 00 00       	call   80101780 <iunlock>
801010c9:	e8 72 1b 00 00       	call   80102c40 <end_op>
801010ce:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801010d1:	83 c4 10             	add    $0x10,%esp
801010d4:	85 c0                	test   %eax,%eax
801010d6:	75 17                	jne    801010ef <filewrite+0xdf>
801010d8:	83 ec 0c             	sub    $0xc,%esp
801010db:	68 4f 6f 10 80       	push   $0x80106f4f
801010e0:	e8 bb f2 ff ff       	call   801003a0 <panic>
801010e5:	8d 76 00             	lea    0x0(%esi),%esi
801010e8:	89 f8                	mov    %edi,%eax
801010ea:	3b 7d e4             	cmp    -0x1c(%ebp),%edi
801010ed:	74 05                	je     801010f4 <filewrite+0xe4>
801010ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801010f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
801010f7:	5b                   	pop    %ebx
801010f8:	5e                   	pop    %esi
801010f9:	5f                   	pop    %edi
801010fa:	5d                   	pop    %ebp
801010fb:	c3                   	ret    
801010fc:	8b 46 0c             	mov    0xc(%esi),%eax
801010ff:	89 45 08             	mov    %eax,0x8(%ebp)
80101102:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101105:	5b                   	pop    %ebx
80101106:	5e                   	pop    %esi
80101107:	5f                   	pop    %edi
80101108:	5d                   	pop    %ebp
80101109:	e9 12 23 00 00       	jmp    80103420 <pipewrite>
8010110e:	83 ec 0c             	sub    $0xc,%esp
80101111:	68 55 6f 10 80       	push   $0x80106f55
80101116:	e8 85 f2 ff ff       	call   801003a0 <panic>
8010111b:	66 90                	xchg   %ax,%ax
8010111d:	66 90                	xchg   %ax,%ax
8010111f:	90                   	nop

80101120 <balloc>:
// Blocks.

// Allocate a zeroed disk block.
static uint
balloc(uint dev)
{
80101120:	55                   	push   %ebp
80101121:	89 e5                	mov    %esp,%ebp
80101123:	57                   	push   %edi
80101124:	56                   	push   %esi
80101125:	53                   	push   %ebx
80101126:	83 ec 1c             	sub    $0x1c,%esp
  int b, bi, m;
  struct buf *bp;

  bp = 0;
  for(b = 0; b < sb.size; b += BPB){
80101129:	8b 0d c0 09 11 80    	mov    0x801109c0,%ecx
{
8010112f:	89 45 d8             	mov    %eax,-0x28(%ebp)
  for(b = 0; b < sb.size; b += BPB){
80101132:	85 c9                	test   %ecx,%ecx
80101134:	0f 84 87 00 00 00    	je     801011c1 <balloc+0xa1>
8010113a:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    bp = bread(dev, BBLOCK(b, sb));
80101141:	8b 75 dc             	mov    -0x24(%ebp),%esi
80101144:	83 ec 08             	sub    $0x8,%esp
80101147:	89 f0                	mov    %esi,%eax
80101149:	c1 f8 0c             	sar    $0xc,%eax
8010114c:	03 05 d8 09 11 80    	add    0x801109d8,%eax
80101152:	50                   	push   %eax
80101153:	ff 75 d8             	pushl  -0x28(%ebp)
80101156:	e8 75 ef ff ff       	call   801000d0 <bread>
8010115b:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
8010115e:	a1 c0 09 11 80       	mov    0x801109c0,%eax
80101163:	83 c4 10             	add    $0x10,%esp
80101166:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101169:	31 c0                	xor    %eax,%eax
8010116b:	eb 2f                	jmp    8010119c <balloc+0x7c>
8010116d:	8d 76 00             	lea    0x0(%esi),%esi
      m = 1 << (bi % 8);
80101170:	89 c1                	mov    %eax,%ecx
      if((bp->data[bi/8] & m) == 0){  // Is block free?
80101172:	8b 55 e4             	mov    -0x1c(%ebp),%edx
      m = 1 << (bi % 8);
80101175:	bb 01 00 00 00       	mov    $0x1,%ebx
8010117a:	83 e1 07             	and    $0x7,%ecx
8010117d:	d3 e3                	shl    %cl,%ebx
      if((bp->data[bi/8] & m) == 0){  // Is block free?
8010117f:	89 c1                	mov    %eax,%ecx
80101181:	c1 f9 03             	sar    $0x3,%ecx
80101184:	0f b6 7c 0a 5c       	movzbl 0x5c(%edx,%ecx,1),%edi
80101189:	85 df                	test   %ebx,%edi
8010118b:	89 fa                	mov    %edi,%edx
8010118d:	74 41                	je     801011d0 <balloc+0xb0>
    for(bi = 0; bi < BPB && b + bi < sb.size; bi++){
8010118f:	83 c0 01             	add    $0x1,%eax
80101192:	83 c6 01             	add    $0x1,%esi
80101195:	3d 00 10 00 00       	cmp    $0x1000,%eax
8010119a:	74 05                	je     801011a1 <balloc+0x81>
8010119c:	39 75 e0             	cmp    %esi,-0x20(%ebp)
8010119f:	77 cf                	ja     80101170 <balloc+0x50>
        brelse(bp);
        bzero(dev, b + bi);
        return b + bi;
      }
    }
    brelse(bp);
801011a1:	83 ec 0c             	sub    $0xc,%esp
801011a4:	ff 75 e4             	pushl  -0x1c(%ebp)
801011a7:	e8 44 f0 ff ff       	call   801001f0 <brelse>
  for(b = 0; b < sb.size; b += BPB){
801011ac:	81 45 dc 00 10 00 00 	addl   $0x1000,-0x24(%ebp)
801011b3:	83 c4 10             	add    $0x10,%esp
801011b6:	8b 45 dc             	mov    -0x24(%ebp),%eax
801011b9:	39 05 c0 09 11 80    	cmp    %eax,0x801109c0
801011bf:	77 80                	ja     80101141 <balloc+0x21>
  }
  panic("balloc: out of blocks");
801011c1:	83 ec 0c             	sub    $0xc,%esp
801011c4:	68 5f 6f 10 80       	push   $0x80106f5f
801011c9:	e8 d2 f1 ff ff       	call   801003a0 <panic>
801011ce:	66 90                	xchg   %ax,%ax
        bp->data[bi/8] |= m;  // Mark block in use.
801011d0:	8b 7d e4             	mov    -0x1c(%ebp),%edi
        log_write(bp);
801011d3:	83 ec 0c             	sub    $0xc,%esp
        bp->data[bi/8] |= m;  // Mark block in use.
801011d6:	09 da                	or     %ebx,%edx
801011d8:	88 54 0f 5c          	mov    %dl,0x5c(%edi,%ecx,1)
        log_write(bp);
801011dc:	57                   	push   %edi
801011dd:	e8 ce 1b 00 00       	call   80102db0 <log_write>
        brelse(bp);
801011e2:	89 3c 24             	mov    %edi,(%esp)
801011e5:	e8 06 f0 ff ff       	call   801001f0 <brelse>
  bp = bread(dev, bno);
801011ea:	58                   	pop    %eax
801011eb:	5a                   	pop    %edx
801011ec:	56                   	push   %esi
801011ed:	ff 75 d8             	pushl  -0x28(%ebp)
801011f0:	e8 db ee ff ff       	call   801000d0 <bread>
801011f5:	89 c3                	mov    %eax,%ebx
  memset(bp->data, 0, BSIZE);
801011f7:	8d 40 5c             	lea    0x5c(%eax),%eax
801011fa:	83 c4 0c             	add    $0xc,%esp
801011fd:	68 00 02 00 00       	push   $0x200
80101202:	6a 00                	push   $0x0
80101204:	50                   	push   %eax
80101205:	e8 96 32 00 00       	call   801044a0 <memset>
  log_write(bp);
8010120a:	89 1c 24             	mov    %ebx,(%esp)
8010120d:	e8 9e 1b 00 00       	call   80102db0 <log_write>
  brelse(bp);
80101212:	89 1c 24             	mov    %ebx,(%esp)
80101215:	e8 d6 ef ff ff       	call   801001f0 <brelse>
}
8010121a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010121d:	89 f0                	mov    %esi,%eax
8010121f:	5b                   	pop    %ebx
80101220:	5e                   	pop    %esi
80101221:	5f                   	pop    %edi
80101222:	5d                   	pop    %ebp
80101223:	c3                   	ret    
80101224:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010122a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80101230 <iget>:
// Find the inode with number inum on device dev
// and return the in-memory copy. Does not lock
// the inode and does not read it from disk.
static struct inode*
iget(uint dev, uint inum)
{
80101230:	55                   	push   %ebp
80101231:	89 e5                	mov    %esp,%ebp
80101233:	57                   	push   %edi
80101234:	56                   	push   %esi
80101235:	53                   	push   %ebx
80101236:	89 c7                	mov    %eax,%edi
  struct inode *ip, *empty;

  acquire(&icache.lock);

  // Is the inode already cached?
  empty = 0;
80101238:	31 f6                	xor    %esi,%esi
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
8010123a:	bb 14 0a 11 80       	mov    $0x80110a14,%ebx
{
8010123f:	83 ec 28             	sub    $0x28,%esp
80101242:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  acquire(&icache.lock);
80101245:	68 e0 09 11 80       	push   $0x801109e0
8010124a:	e8 e1 30 00 00       	call   80104330 <acquire>
8010124f:	83 c4 10             	add    $0x10,%esp
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
80101252:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101255:	eb 17                	jmp    8010126e <iget+0x3e>
80101257:	89 f6                	mov    %esi,%esi
80101259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
80101260:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101266:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
8010126c:	73 22                	jae    80101290 <iget+0x60>
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
8010126e:	8b 4b 08             	mov    0x8(%ebx),%ecx
80101271:	85 c9                	test   %ecx,%ecx
80101273:	7e 04                	jle    80101279 <iget+0x49>
80101275:	39 3b                	cmp    %edi,(%ebx)
80101277:	74 4f                	je     801012c8 <iget+0x98>
      ip->ref++;
      release(&icache.lock);
      return ip;
    }
    if(empty == 0 && ip->ref == 0)    // Remember empty slot.
80101279:	85 f6                	test   %esi,%esi
8010127b:	75 e3                	jne    80101260 <iget+0x30>
8010127d:	85 c9                	test   %ecx,%ecx
8010127f:	0f 44 f3             	cmove  %ebx,%esi
  for(ip = &icache.inode[0]; ip < &icache.inode[NINODE]; ip++){
80101282:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101288:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
8010128e:	72 de                	jb     8010126e <iget+0x3e>
      empty = ip;
  }

  // Recycle an inode cache entry.
  if(empty == 0)
80101290:	85 f6                	test   %esi,%esi
80101292:	74 5b                	je     801012ef <iget+0xbf>
  ip = empty;
  ip->dev = dev;
  ip->inum = inum;
  ip->ref = 1;
  ip->valid = 0;
  release(&icache.lock);
80101294:	83 ec 0c             	sub    $0xc,%esp
  ip->dev = dev;
80101297:	89 3e                	mov    %edi,(%esi)
  ip->inum = inum;
80101299:	89 56 04             	mov    %edx,0x4(%esi)
  ip->ref = 1;
8010129c:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
  ip->valid = 0;
801012a3:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
  release(&icache.lock);
801012aa:	68 e0 09 11 80       	push   $0x801109e0
801012af:	e8 9c 31 00 00       	call   80104450 <release>

  return ip;
801012b4:	83 c4 10             	add    $0x10,%esp
}
801012b7:	8d 65 f4             	lea    -0xc(%ebp),%esp
801012ba:	89 f0                	mov    %esi,%eax
801012bc:	5b                   	pop    %ebx
801012bd:	5e                   	pop    %esi
801012be:	5f                   	pop    %edi
801012bf:	5d                   	pop    %ebp
801012c0:	c3                   	ret    
801012c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(ip->ref > 0 && ip->dev == dev && ip->inum == inum){
801012c8:	39 53 04             	cmp    %edx,0x4(%ebx)
801012cb:	75 ac                	jne    80101279 <iget+0x49>
      release(&icache.lock);
801012cd:	83 ec 0c             	sub    $0xc,%esp
      ip->ref++;
801012d0:	83 c1 01             	add    $0x1,%ecx
      return ip;
801012d3:	89 de                	mov    %ebx,%esi
      release(&icache.lock);
801012d5:	68 e0 09 11 80       	push   $0x801109e0
      ip->ref++;
801012da:	89 4b 08             	mov    %ecx,0x8(%ebx)
      release(&icache.lock);
801012dd:	e8 6e 31 00 00       	call   80104450 <release>
      return ip;
801012e2:	83 c4 10             	add    $0x10,%esp
}
801012e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
801012e8:	89 f0                	mov    %esi,%eax
801012ea:	5b                   	pop    %ebx
801012eb:	5e                   	pop    %esi
801012ec:	5f                   	pop    %edi
801012ed:	5d                   	pop    %ebp
801012ee:	c3                   	ret    
    panic("iget: no inodes");
801012ef:	83 ec 0c             	sub    $0xc,%esp
801012f2:	68 75 6f 10 80       	push   $0x80106f75
801012f7:	e8 a4 f0 ff ff       	call   801003a0 <panic>
801012fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101300 <bmap>:

// Return the disk block address of the nth block in inode ip.
// If there is no such block, bmap allocates one.
static uint
bmap(struct inode *ip, uint bn)
{
80101300:	55                   	push   %ebp
80101301:	89 e5                	mov    %esp,%ebp
80101303:	57                   	push   %edi
80101304:	56                   	push   %esi
80101305:	53                   	push   %ebx
80101306:	89 c6                	mov    %eax,%esi
80101308:	83 ec 1c             	sub    $0x1c,%esp
  uint addr, *a;
  struct buf *bp;

  if(bn < NDIRECT){
8010130b:	83 fa 0b             	cmp    $0xb,%edx
8010130e:	77 18                	ja     80101328 <bmap+0x28>
80101310:	8d 3c 90             	lea    (%eax,%edx,4),%edi
    if((addr = ip->addrs[bn]) == 0)
80101313:	8b 5f 5c             	mov    0x5c(%edi),%ebx
80101316:	85 db                	test   %ebx,%ebx
80101318:	74 76                	je     80101390 <bmap+0x90>
    brelse(bp);
    return addr;
  }

  panic("bmap: out of range");
}
8010131a:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010131d:	89 d8                	mov    %ebx,%eax
8010131f:	5b                   	pop    %ebx
80101320:	5e                   	pop    %esi
80101321:	5f                   	pop    %edi
80101322:	5d                   	pop    %ebp
80101323:	c3                   	ret    
80101324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  bn -= NDIRECT;
80101328:	8d 5a f4             	lea    -0xc(%edx),%ebx
  if(bn < NINDIRECT){
8010132b:	83 fb 7f             	cmp    $0x7f,%ebx
8010132e:	0f 87 90 00 00 00    	ja     801013c4 <bmap+0xc4>
    if((addr = ip->addrs[NDIRECT]) == 0)
80101334:	8b 90 8c 00 00 00    	mov    0x8c(%eax),%edx
8010133a:	8b 00                	mov    (%eax),%eax
8010133c:	85 d2                	test   %edx,%edx
8010133e:	74 70                	je     801013b0 <bmap+0xb0>
    bp = bread(ip->dev, addr);
80101340:	83 ec 08             	sub    $0x8,%esp
80101343:	52                   	push   %edx
80101344:	50                   	push   %eax
80101345:	e8 86 ed ff ff       	call   801000d0 <bread>
    if((addr = a[bn]) == 0){
8010134a:	8d 54 98 5c          	lea    0x5c(%eax,%ebx,4),%edx
8010134e:	83 c4 10             	add    $0x10,%esp
    bp = bread(ip->dev, addr);
80101351:	89 c7                	mov    %eax,%edi
    if((addr = a[bn]) == 0){
80101353:	8b 1a                	mov    (%edx),%ebx
80101355:	85 db                	test   %ebx,%ebx
80101357:	75 1d                	jne    80101376 <bmap+0x76>
      a[bn] = addr = balloc(ip->dev);
80101359:	8b 06                	mov    (%esi),%eax
8010135b:	89 55 e4             	mov    %edx,-0x1c(%ebp)
8010135e:	e8 bd fd ff ff       	call   80101120 <balloc>
80101363:	8b 55 e4             	mov    -0x1c(%ebp),%edx
      log_write(bp);
80101366:	83 ec 0c             	sub    $0xc,%esp
      a[bn] = addr = balloc(ip->dev);
80101369:	89 c3                	mov    %eax,%ebx
8010136b:	89 02                	mov    %eax,(%edx)
      log_write(bp);
8010136d:	57                   	push   %edi
8010136e:	e8 3d 1a 00 00       	call   80102db0 <log_write>
80101373:	83 c4 10             	add    $0x10,%esp
    brelse(bp);
80101376:	83 ec 0c             	sub    $0xc,%esp
80101379:	57                   	push   %edi
8010137a:	e8 71 ee ff ff       	call   801001f0 <brelse>
8010137f:	83 c4 10             	add    $0x10,%esp
}
80101382:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101385:	89 d8                	mov    %ebx,%eax
80101387:	5b                   	pop    %ebx
80101388:	5e                   	pop    %esi
80101389:	5f                   	pop    %edi
8010138a:	5d                   	pop    %ebp
8010138b:	c3                   	ret    
8010138c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      ip->addrs[bn] = addr = balloc(ip->dev);
80101390:	8b 00                	mov    (%eax),%eax
80101392:	e8 89 fd ff ff       	call   80101120 <balloc>
80101397:	89 47 5c             	mov    %eax,0x5c(%edi)
}
8010139a:	8d 65 f4             	lea    -0xc(%ebp),%esp
      ip->addrs[bn] = addr = balloc(ip->dev);
8010139d:	89 c3                	mov    %eax,%ebx
}
8010139f:	89 d8                	mov    %ebx,%eax
801013a1:	5b                   	pop    %ebx
801013a2:	5e                   	pop    %esi
801013a3:	5f                   	pop    %edi
801013a4:	5d                   	pop    %ebp
801013a5:	c3                   	ret    
801013a6:	8d 76 00             	lea    0x0(%esi),%esi
801013a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      ip->addrs[NDIRECT] = addr = balloc(ip->dev);
801013b0:	e8 6b fd ff ff       	call   80101120 <balloc>
801013b5:	89 c2                	mov    %eax,%edx
801013b7:	89 86 8c 00 00 00    	mov    %eax,0x8c(%esi)
801013bd:	8b 06                	mov    (%esi),%eax
801013bf:	e9 7c ff ff ff       	jmp    80101340 <bmap+0x40>
  panic("bmap: out of range");
801013c4:	83 ec 0c             	sub    $0xc,%esp
801013c7:	68 85 6f 10 80       	push   $0x80106f85
801013cc:	e8 cf ef ff ff       	call   801003a0 <panic>
801013d1:	eb 0d                	jmp    801013e0 <readsb>
801013d3:	90                   	nop
801013d4:	90                   	nop
801013d5:	90                   	nop
801013d6:	90                   	nop
801013d7:	90                   	nop
801013d8:	90                   	nop
801013d9:	90                   	nop
801013da:	90                   	nop
801013db:	90                   	nop
801013dc:	90                   	nop
801013dd:	90                   	nop
801013de:	90                   	nop
801013df:	90                   	nop

801013e0 <readsb>:
{
801013e0:	55                   	push   %ebp
801013e1:	89 e5                	mov    %esp,%ebp
801013e3:	56                   	push   %esi
801013e4:	53                   	push   %ebx
801013e5:	8b 75 0c             	mov    0xc(%ebp),%esi
  bp = bread(dev, 1);
801013e8:	83 ec 08             	sub    $0x8,%esp
801013eb:	6a 01                	push   $0x1
801013ed:	ff 75 08             	pushl  0x8(%ebp)
801013f0:	e8 db ec ff ff       	call   801000d0 <bread>
801013f5:	89 c3                	mov    %eax,%ebx
  memmove(sb, bp->data, sizeof(*sb));
801013f7:	8d 40 5c             	lea    0x5c(%eax),%eax
801013fa:	83 c4 0c             	add    $0xc,%esp
801013fd:	6a 1c                	push   $0x1c
801013ff:	50                   	push   %eax
80101400:	56                   	push   %esi
80101401:	e8 3a 31 00 00       	call   80104540 <memmove>
  brelse(bp);
80101406:	89 5d 08             	mov    %ebx,0x8(%ebp)
80101409:	83 c4 10             	add    $0x10,%esp
}
8010140c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010140f:	5b                   	pop    %ebx
80101410:	5e                   	pop    %esi
80101411:	5d                   	pop    %ebp
  brelse(bp);
80101412:	e9 d9 ed ff ff       	jmp    801001f0 <brelse>
80101417:	89 f6                	mov    %esi,%esi
80101419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101420 <bfree>:
{
80101420:	55                   	push   %ebp
80101421:	89 e5                	mov    %esp,%ebp
80101423:	56                   	push   %esi
80101424:	53                   	push   %ebx
80101425:	89 d3                	mov    %edx,%ebx
80101427:	89 c6                	mov    %eax,%esi
  readsb(dev, &sb);
80101429:	83 ec 08             	sub    $0x8,%esp
8010142c:	68 c0 09 11 80       	push   $0x801109c0
80101431:	50                   	push   %eax
80101432:	e8 a9 ff ff ff       	call   801013e0 <readsb>
  bp = bread(dev, BBLOCK(b, sb));
80101437:	58                   	pop    %eax
80101438:	5a                   	pop    %edx
80101439:	89 da                	mov    %ebx,%edx
8010143b:	c1 ea 0c             	shr    $0xc,%edx
8010143e:	03 15 d8 09 11 80    	add    0x801109d8,%edx
80101444:	52                   	push   %edx
80101445:	56                   	push   %esi
80101446:	e8 85 ec ff ff       	call   801000d0 <bread>
  m = 1 << (bi % 8);
8010144b:	89 d9                	mov    %ebx,%ecx
  if((bp->data[bi/8] & m) == 0)
8010144d:	c1 fb 03             	sar    $0x3,%ebx
  m = 1 << (bi % 8);
80101450:	ba 01 00 00 00       	mov    $0x1,%edx
80101455:	83 e1 07             	and    $0x7,%ecx
  if((bp->data[bi/8] & m) == 0)
80101458:	81 e3 ff 01 00 00    	and    $0x1ff,%ebx
8010145e:	83 c4 10             	add    $0x10,%esp
  m = 1 << (bi % 8);
80101461:	d3 e2                	shl    %cl,%edx
  if((bp->data[bi/8] & m) == 0)
80101463:	0f b6 4c 18 5c       	movzbl 0x5c(%eax,%ebx,1),%ecx
80101468:	85 d1                	test   %edx,%ecx
8010146a:	74 25                	je     80101491 <bfree+0x71>
  bp->data[bi/8] &= ~m;
8010146c:	f7 d2                	not    %edx
8010146e:	89 c6                	mov    %eax,%esi
  log_write(bp);
80101470:	83 ec 0c             	sub    $0xc,%esp
  bp->data[bi/8] &= ~m;
80101473:	21 ca                	and    %ecx,%edx
80101475:	88 54 1e 5c          	mov    %dl,0x5c(%esi,%ebx,1)
  log_write(bp);
80101479:	56                   	push   %esi
8010147a:	e8 31 19 00 00       	call   80102db0 <log_write>
  brelse(bp);
8010147f:	89 34 24             	mov    %esi,(%esp)
80101482:	e8 69 ed ff ff       	call   801001f0 <brelse>
}
80101487:	83 c4 10             	add    $0x10,%esp
8010148a:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010148d:	5b                   	pop    %ebx
8010148e:	5e                   	pop    %esi
8010148f:	5d                   	pop    %ebp
80101490:	c3                   	ret    
    panic("freeing free block");
80101491:	83 ec 0c             	sub    $0xc,%esp
80101494:	68 98 6f 10 80       	push   $0x80106f98
80101499:	e8 02 ef ff ff       	call   801003a0 <panic>
8010149e:	66 90                	xchg   %ax,%ax

801014a0 <iinit>:
{
801014a0:	55                   	push   %ebp
801014a1:	89 e5                	mov    %esp,%ebp
801014a3:	53                   	push   %ebx
801014a4:	bb 20 0a 11 80       	mov    $0x80110a20,%ebx
801014a9:	83 ec 0c             	sub    $0xc,%esp
  initlock(&icache.lock, "icache");
801014ac:	68 ab 6f 10 80       	push   $0x80106fab
801014b1:	68 e0 09 11 80       	push   $0x801109e0
801014b6:	e8 75 2d 00 00       	call   80104230 <initlock>
801014bb:	83 c4 10             	add    $0x10,%esp
801014be:	66 90                	xchg   %ax,%ax
    initsleeplock(&icache.inode[i].lock, "inode");
801014c0:	83 ec 08             	sub    $0x8,%esp
801014c3:	68 b2 6f 10 80       	push   $0x80106fb2
801014c8:	53                   	push   %ebx
801014c9:	81 c3 90 00 00 00    	add    $0x90,%ebx
801014cf:	e8 4c 2c 00 00       	call   80104120 <initsleeplock>
  for(i = 0; i < NINODE; i++) {
801014d4:	83 c4 10             	add    $0x10,%esp
801014d7:	81 fb 40 26 11 80    	cmp    $0x80112640,%ebx
801014dd:	75 e1                	jne    801014c0 <iinit+0x20>
  readsb(dev, &sb);
801014df:	83 ec 08             	sub    $0x8,%esp
801014e2:	68 c0 09 11 80       	push   $0x801109c0
801014e7:	ff 75 08             	pushl  0x8(%ebp)
801014ea:	e8 f1 fe ff ff       	call   801013e0 <readsb>
  cprintf("sb: size %d nblocks %d ninodes %d nlog %d logstart %d\
801014ef:	ff 35 d8 09 11 80    	pushl  0x801109d8
801014f5:	ff 35 d4 09 11 80    	pushl  0x801109d4
801014fb:	ff 35 d0 09 11 80    	pushl  0x801109d0
80101501:	ff 35 cc 09 11 80    	pushl  0x801109cc
80101507:	ff 35 c8 09 11 80    	pushl  0x801109c8
8010150d:	ff 35 c4 09 11 80    	pushl  0x801109c4
80101513:	ff 35 c0 09 11 80    	pushl  0x801109c0
80101519:	68 18 70 10 80       	push   $0x80107018
8010151e:	e8 4d f1 ff ff       	call   80100670 <cprintf>
}
80101523:	83 c4 30             	add    $0x30,%esp
80101526:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101529:	c9                   	leave  
8010152a:	c3                   	ret    
8010152b:	90                   	nop
8010152c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101530 <ialloc>:
{
80101530:	55                   	push   %ebp
80101531:	89 e5                	mov    %esp,%ebp
80101533:	57                   	push   %edi
80101534:	56                   	push   %esi
80101535:	53                   	push   %ebx
80101536:	83 ec 1c             	sub    $0x1c,%esp
  for(inum = 1; inum < sb.ninodes; inum++){
80101539:	83 3d c8 09 11 80 01 	cmpl   $0x1,0x801109c8
{
80101540:	8b 45 0c             	mov    0xc(%ebp),%eax
80101543:	8b 75 08             	mov    0x8(%ebp),%esi
80101546:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  for(inum = 1; inum < sb.ninodes; inum++){
80101549:	0f 86 91 00 00 00    	jbe    801015e0 <ialloc+0xb0>
8010154f:	bb 01 00 00 00       	mov    $0x1,%ebx
80101554:	eb 21                	jmp    80101577 <ialloc+0x47>
80101556:	8d 76 00             	lea    0x0(%esi),%esi
80101559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    brelse(bp);
80101560:	83 ec 0c             	sub    $0xc,%esp
  for(inum = 1; inum < sb.ninodes; inum++){
80101563:	83 c3 01             	add    $0x1,%ebx
    brelse(bp);
80101566:	57                   	push   %edi
80101567:	e8 84 ec ff ff       	call   801001f0 <brelse>
  for(inum = 1; inum < sb.ninodes; inum++){
8010156c:	83 c4 10             	add    $0x10,%esp
8010156f:	39 1d c8 09 11 80    	cmp    %ebx,0x801109c8
80101575:	76 69                	jbe    801015e0 <ialloc+0xb0>
    bp = bread(dev, IBLOCK(inum, sb));
80101577:	89 d8                	mov    %ebx,%eax
80101579:	83 ec 08             	sub    $0x8,%esp
8010157c:	c1 e8 03             	shr    $0x3,%eax
8010157f:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101585:	50                   	push   %eax
80101586:	56                   	push   %esi
80101587:	e8 44 eb ff ff       	call   801000d0 <bread>
8010158c:	89 c7                	mov    %eax,%edi
    dip = (struct dinode*)bp->data + inum%IPB;
8010158e:	89 d8                	mov    %ebx,%eax
    if(dip->type == 0){  // a free inode
80101590:	83 c4 10             	add    $0x10,%esp
    dip = (struct dinode*)bp->data + inum%IPB;
80101593:	83 e0 07             	and    $0x7,%eax
80101596:	c1 e0 06             	shl    $0x6,%eax
80101599:	8d 4c 07 5c          	lea    0x5c(%edi,%eax,1),%ecx
    if(dip->type == 0){  // a free inode
8010159d:	66 83 39 00          	cmpw   $0x0,(%ecx)
801015a1:	75 bd                	jne    80101560 <ialloc+0x30>
      memset(dip, 0, sizeof(*dip));
801015a3:	83 ec 04             	sub    $0x4,%esp
801015a6:	89 4d e0             	mov    %ecx,-0x20(%ebp)
801015a9:	6a 40                	push   $0x40
801015ab:	6a 00                	push   $0x0
801015ad:	51                   	push   %ecx
801015ae:	e8 ed 2e 00 00       	call   801044a0 <memset>
      dip->type = type;
801015b3:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
801015b7:	8b 4d e0             	mov    -0x20(%ebp),%ecx
801015ba:	66 89 01             	mov    %ax,(%ecx)
      log_write(bp);   // mark it allocated on the disk
801015bd:	89 3c 24             	mov    %edi,(%esp)
801015c0:	e8 eb 17 00 00       	call   80102db0 <log_write>
      brelse(bp);
801015c5:	89 3c 24             	mov    %edi,(%esp)
801015c8:	e8 23 ec ff ff       	call   801001f0 <brelse>
      return iget(dev, inum);
801015cd:	83 c4 10             	add    $0x10,%esp
}
801015d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return iget(dev, inum);
801015d3:	89 da                	mov    %ebx,%edx
801015d5:	89 f0                	mov    %esi,%eax
}
801015d7:	5b                   	pop    %ebx
801015d8:	5e                   	pop    %esi
801015d9:	5f                   	pop    %edi
801015da:	5d                   	pop    %ebp
      return iget(dev, inum);
801015db:	e9 50 fc ff ff       	jmp    80101230 <iget>
  panic("ialloc: no inodes");
801015e0:	83 ec 0c             	sub    $0xc,%esp
801015e3:	68 b8 6f 10 80       	push   $0x80106fb8
801015e8:	e8 b3 ed ff ff       	call   801003a0 <panic>
801015ed:	8d 76 00             	lea    0x0(%esi),%esi

801015f0 <iupdate>:
{
801015f0:	55                   	push   %ebp
801015f1:	89 e5                	mov    %esp,%ebp
801015f3:	56                   	push   %esi
801015f4:	53                   	push   %ebx
801015f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
801015f8:	83 ec 08             	sub    $0x8,%esp
801015fb:	8b 43 04             	mov    0x4(%ebx),%eax
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
801015fe:	83 c3 5c             	add    $0x5c,%ebx
  bp = bread(ip->dev, IBLOCK(ip->inum, sb));
80101601:	c1 e8 03             	shr    $0x3,%eax
80101604:	03 05 d4 09 11 80    	add    0x801109d4,%eax
8010160a:	50                   	push   %eax
8010160b:	ff 73 a4             	pushl  -0x5c(%ebx)
8010160e:	e8 bd ea ff ff       	call   801000d0 <bread>
80101613:	89 c6                	mov    %eax,%esi
  dip = (struct dinode*)bp->data + ip->inum%IPB;
80101615:	8b 43 a8             	mov    -0x58(%ebx),%eax
  dip->type = ip->type;
80101618:	0f b7 53 f4          	movzwl -0xc(%ebx),%edx
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
8010161c:	83 c4 0c             	add    $0xc,%esp
  dip = (struct dinode*)bp->data + ip->inum%IPB;
8010161f:	83 e0 07             	and    $0x7,%eax
80101622:	c1 e0 06             	shl    $0x6,%eax
80101625:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
  dip->type = ip->type;
80101629:	66 89 10             	mov    %dx,(%eax)
  dip->major = ip->major;
8010162c:	0f b7 53 f6          	movzwl -0xa(%ebx),%edx
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
80101630:	83 c0 0c             	add    $0xc,%eax
  dip->major = ip->major;
80101633:	66 89 50 f6          	mov    %dx,-0xa(%eax)
  dip->minor = ip->minor;
80101637:	0f b7 53 f8          	movzwl -0x8(%ebx),%edx
8010163b:	66 89 50 f8          	mov    %dx,-0x8(%eax)
  dip->nlink = ip->nlink;
8010163f:	0f b7 53 fa          	movzwl -0x6(%ebx),%edx
80101643:	66 89 50 fa          	mov    %dx,-0x6(%eax)
  dip->size = ip->size;
80101647:	8b 53 fc             	mov    -0x4(%ebx),%edx
8010164a:	89 50 fc             	mov    %edx,-0x4(%eax)
  memmove(dip->addrs, ip->addrs, sizeof(ip->addrs));
8010164d:	6a 34                	push   $0x34
8010164f:	53                   	push   %ebx
80101650:	50                   	push   %eax
80101651:	e8 ea 2e 00 00       	call   80104540 <memmove>
  log_write(bp);
80101656:	89 34 24             	mov    %esi,(%esp)
80101659:	e8 52 17 00 00       	call   80102db0 <log_write>
  brelse(bp);
8010165e:	89 75 08             	mov    %esi,0x8(%ebp)
80101661:	83 c4 10             	add    $0x10,%esp
}
80101664:	8d 65 f8             	lea    -0x8(%ebp),%esp
80101667:	5b                   	pop    %ebx
80101668:	5e                   	pop    %esi
80101669:	5d                   	pop    %ebp
  brelse(bp);
8010166a:	e9 81 eb ff ff       	jmp    801001f0 <brelse>
8010166f:	90                   	nop

80101670 <idup>:
{
80101670:	55                   	push   %ebp
80101671:	89 e5                	mov    %esp,%ebp
80101673:	53                   	push   %ebx
80101674:	83 ec 10             	sub    $0x10,%esp
80101677:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&icache.lock);
8010167a:	68 e0 09 11 80       	push   $0x801109e0
8010167f:	e8 ac 2c 00 00       	call   80104330 <acquire>
  ip->ref++;
80101684:	83 43 08 01          	addl   $0x1,0x8(%ebx)
  release(&icache.lock);
80101688:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
8010168f:	e8 bc 2d 00 00       	call   80104450 <release>
}
80101694:	89 d8                	mov    %ebx,%eax
80101696:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101699:	c9                   	leave  
8010169a:	c3                   	ret    
8010169b:	90                   	nop
8010169c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801016a0 <ilock>:
{
801016a0:	55                   	push   %ebp
801016a1:	89 e5                	mov    %esp,%ebp
801016a3:	56                   	push   %esi
801016a4:	53                   	push   %ebx
801016a5:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || ip->ref < 1)
801016a8:	85 db                	test   %ebx,%ebx
801016aa:	0f 84 b7 00 00 00    	je     80101767 <ilock+0xc7>
801016b0:	8b 53 08             	mov    0x8(%ebx),%edx
801016b3:	85 d2                	test   %edx,%edx
801016b5:	0f 8e ac 00 00 00    	jle    80101767 <ilock+0xc7>
  acquiresleep(&ip->lock);
801016bb:	8d 43 0c             	lea    0xc(%ebx),%eax
801016be:	83 ec 0c             	sub    $0xc,%esp
801016c1:	50                   	push   %eax
801016c2:	e8 99 2a 00 00       	call   80104160 <acquiresleep>
  if(ip->valid == 0){
801016c7:	8b 43 4c             	mov    0x4c(%ebx),%eax
801016ca:	83 c4 10             	add    $0x10,%esp
801016cd:	85 c0                	test   %eax,%eax
801016cf:	74 0f                	je     801016e0 <ilock+0x40>
}
801016d1:	8d 65 f8             	lea    -0x8(%ebp),%esp
801016d4:	5b                   	pop    %ebx
801016d5:	5e                   	pop    %esi
801016d6:	5d                   	pop    %ebp
801016d7:	c3                   	ret    
801016d8:	90                   	nop
801016d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    bp = bread(ip->dev, IBLOCK(ip->inum, sb));
801016e0:	8b 43 04             	mov    0x4(%ebx),%eax
801016e3:	83 ec 08             	sub    $0x8,%esp
801016e6:	c1 e8 03             	shr    $0x3,%eax
801016e9:	03 05 d4 09 11 80    	add    0x801109d4,%eax
801016ef:	50                   	push   %eax
801016f0:	ff 33                	pushl  (%ebx)
801016f2:	e8 d9 e9 ff ff       	call   801000d0 <bread>
801016f7:	89 c6                	mov    %eax,%esi
    dip = (struct dinode*)bp->data + ip->inum%IPB;
801016f9:	8b 43 04             	mov    0x4(%ebx),%eax
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
801016fc:	83 c4 0c             	add    $0xc,%esp
    dip = (struct dinode*)bp->data + ip->inum%IPB;
801016ff:	83 e0 07             	and    $0x7,%eax
80101702:	c1 e0 06             	shl    $0x6,%eax
80101705:	8d 44 06 5c          	lea    0x5c(%esi,%eax,1),%eax
    ip->type = dip->type;
80101709:	0f b7 10             	movzwl (%eax),%edx
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
8010170c:	83 c0 0c             	add    $0xc,%eax
    ip->type = dip->type;
8010170f:	66 89 53 50          	mov    %dx,0x50(%ebx)
    ip->major = dip->major;
80101713:	0f b7 50 f6          	movzwl -0xa(%eax),%edx
80101717:	66 89 53 52          	mov    %dx,0x52(%ebx)
    ip->minor = dip->minor;
8010171b:	0f b7 50 f8          	movzwl -0x8(%eax),%edx
8010171f:	66 89 53 54          	mov    %dx,0x54(%ebx)
    ip->nlink = dip->nlink;
80101723:	0f b7 50 fa          	movzwl -0x6(%eax),%edx
80101727:	66 89 53 56          	mov    %dx,0x56(%ebx)
    ip->size = dip->size;
8010172b:	8b 50 fc             	mov    -0x4(%eax),%edx
8010172e:	89 53 58             	mov    %edx,0x58(%ebx)
    memmove(ip->addrs, dip->addrs, sizeof(ip->addrs));
80101731:	6a 34                	push   $0x34
80101733:	50                   	push   %eax
80101734:	8d 43 5c             	lea    0x5c(%ebx),%eax
80101737:	50                   	push   %eax
80101738:	e8 03 2e 00 00       	call   80104540 <memmove>
    brelse(bp);
8010173d:	89 34 24             	mov    %esi,(%esp)
80101740:	e8 ab ea ff ff       	call   801001f0 <brelse>
    if(ip->type == 0)
80101745:	83 c4 10             	add    $0x10,%esp
80101748:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
    ip->valid = 1;
8010174d:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
    if(ip->type == 0)
80101754:	0f 85 77 ff ff ff    	jne    801016d1 <ilock+0x31>
      panic("ilock: no type");
8010175a:	83 ec 0c             	sub    $0xc,%esp
8010175d:	68 d0 6f 10 80       	push   $0x80106fd0
80101762:	e8 39 ec ff ff       	call   801003a0 <panic>
    panic("ilock");
80101767:	83 ec 0c             	sub    $0xc,%esp
8010176a:	68 ca 6f 10 80       	push   $0x80106fca
8010176f:	e8 2c ec ff ff       	call   801003a0 <panic>
80101774:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010177a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80101780 <iunlock>:
{
80101780:	55                   	push   %ebp
80101781:	89 e5                	mov    %esp,%ebp
80101783:	56                   	push   %esi
80101784:	53                   	push   %ebx
80101785:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(ip == 0 || !holdingsleep(&ip->lock) || ip->ref < 1)
80101788:	85 db                	test   %ebx,%ebx
8010178a:	74 28                	je     801017b4 <iunlock+0x34>
8010178c:	8d 73 0c             	lea    0xc(%ebx),%esi
8010178f:	83 ec 0c             	sub    $0xc,%esp
80101792:	56                   	push   %esi
80101793:	e8 68 2a 00 00       	call   80104200 <holdingsleep>
80101798:	83 c4 10             	add    $0x10,%esp
8010179b:	85 c0                	test   %eax,%eax
8010179d:	74 15                	je     801017b4 <iunlock+0x34>
8010179f:	8b 43 08             	mov    0x8(%ebx),%eax
801017a2:	85 c0                	test   %eax,%eax
801017a4:	7e 0e                	jle    801017b4 <iunlock+0x34>
  releasesleep(&ip->lock);
801017a6:	89 75 08             	mov    %esi,0x8(%ebp)
}
801017a9:	8d 65 f8             	lea    -0x8(%ebp),%esp
801017ac:	5b                   	pop    %ebx
801017ad:	5e                   	pop    %esi
801017ae:	5d                   	pop    %ebp
  releasesleep(&ip->lock);
801017af:	e9 0c 2a 00 00       	jmp    801041c0 <releasesleep>
    panic("iunlock");
801017b4:	83 ec 0c             	sub    $0xc,%esp
801017b7:	68 df 6f 10 80       	push   $0x80106fdf
801017bc:	e8 df eb ff ff       	call   801003a0 <panic>
801017c1:	eb 0d                	jmp    801017d0 <iput>
801017c3:	90                   	nop
801017c4:	90                   	nop
801017c5:	90                   	nop
801017c6:	90                   	nop
801017c7:	90                   	nop
801017c8:	90                   	nop
801017c9:	90                   	nop
801017ca:	90                   	nop
801017cb:	90                   	nop
801017cc:	90                   	nop
801017cd:	90                   	nop
801017ce:	90                   	nop
801017cf:	90                   	nop

801017d0 <iput>:
{
801017d0:	55                   	push   %ebp
801017d1:	89 e5                	mov    %esp,%ebp
801017d3:	57                   	push   %edi
801017d4:	56                   	push   %esi
801017d5:	53                   	push   %ebx
801017d6:	83 ec 28             	sub    $0x28,%esp
801017d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquiresleep(&ip->lock);
801017dc:	8d 7b 0c             	lea    0xc(%ebx),%edi
801017df:	57                   	push   %edi
801017e0:	e8 7b 29 00 00       	call   80104160 <acquiresleep>
  if(ip->valid && ip->nlink == 0){
801017e5:	8b 53 4c             	mov    0x4c(%ebx),%edx
801017e8:	83 c4 10             	add    $0x10,%esp
801017eb:	85 d2                	test   %edx,%edx
801017ed:	74 07                	je     801017f6 <iput+0x26>
801017ef:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
801017f4:	74 32                	je     80101828 <iput+0x58>
  releasesleep(&ip->lock);
801017f6:	83 ec 0c             	sub    $0xc,%esp
801017f9:	57                   	push   %edi
801017fa:	e8 c1 29 00 00       	call   801041c0 <releasesleep>
  acquire(&icache.lock);
801017ff:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101806:	e8 25 2b 00 00       	call   80104330 <acquire>
  ip->ref--;
8010180b:	83 6b 08 01          	subl   $0x1,0x8(%ebx)
  release(&icache.lock);
8010180f:	83 c4 10             	add    $0x10,%esp
80101812:	c7 45 08 e0 09 11 80 	movl   $0x801109e0,0x8(%ebp)
}
80101819:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010181c:	5b                   	pop    %ebx
8010181d:	5e                   	pop    %esi
8010181e:	5f                   	pop    %edi
8010181f:	5d                   	pop    %ebp
  release(&icache.lock);
80101820:	e9 2b 2c 00 00       	jmp    80104450 <release>
80101825:	8d 76 00             	lea    0x0(%esi),%esi
    acquire(&icache.lock);
80101828:	83 ec 0c             	sub    $0xc,%esp
8010182b:	68 e0 09 11 80       	push   $0x801109e0
80101830:	e8 fb 2a 00 00       	call   80104330 <acquire>
    int r = ip->ref;
80101835:	8b 73 08             	mov    0x8(%ebx),%esi
    release(&icache.lock);
80101838:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
8010183f:	e8 0c 2c 00 00       	call   80104450 <release>
    if(r == 1){
80101844:	83 c4 10             	add    $0x10,%esp
80101847:	83 fe 01             	cmp    $0x1,%esi
8010184a:	75 aa                	jne    801017f6 <iput+0x26>
8010184c:	8d 8b 8c 00 00 00    	lea    0x8c(%ebx),%ecx
80101852:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80101855:	8d 73 5c             	lea    0x5c(%ebx),%esi
80101858:	89 cf                	mov    %ecx,%edi
8010185a:	eb 0b                	jmp    80101867 <iput+0x97>
8010185c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101860:	83 c6 04             	add    $0x4,%esi
{
  int i, j;
  struct buf *bp;
  uint *a;

  for(i = 0; i < NDIRECT; i++){
80101863:	39 fe                	cmp    %edi,%esi
80101865:	74 19                	je     80101880 <iput+0xb0>
    if(ip->addrs[i]){
80101867:	8b 16                	mov    (%esi),%edx
80101869:	85 d2                	test   %edx,%edx
8010186b:	74 f3                	je     80101860 <iput+0x90>
      bfree(ip->dev, ip->addrs[i]);
8010186d:	8b 03                	mov    (%ebx),%eax
8010186f:	e8 ac fb ff ff       	call   80101420 <bfree>
      ip->addrs[i] = 0;
80101874:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
8010187a:	eb e4                	jmp    80101860 <iput+0x90>
8010187c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  if(ip->addrs[NDIRECT]){
80101880:	8b 83 8c 00 00 00    	mov    0x8c(%ebx),%eax
80101886:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80101889:	85 c0                	test   %eax,%eax
8010188b:	75 33                	jne    801018c0 <iput+0xf0>
    bfree(ip->dev, ip->addrs[NDIRECT]);
    ip->addrs[NDIRECT] = 0;
  }

  ip->size = 0;
  iupdate(ip);
8010188d:	83 ec 0c             	sub    $0xc,%esp
  ip->size = 0;
80101890:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
  iupdate(ip);
80101897:	53                   	push   %ebx
80101898:	e8 53 fd ff ff       	call   801015f0 <iupdate>
      ip->type = 0;
8010189d:	31 c0                	xor    %eax,%eax
8010189f:	66 89 43 50          	mov    %ax,0x50(%ebx)
      iupdate(ip);
801018a3:	89 1c 24             	mov    %ebx,(%esp)
801018a6:	e8 45 fd ff ff       	call   801015f0 <iupdate>
      ip->valid = 0;
801018ab:	c7 43 4c 00 00 00 00 	movl   $0x0,0x4c(%ebx)
801018b2:	83 c4 10             	add    $0x10,%esp
801018b5:	e9 3c ff ff ff       	jmp    801017f6 <iput+0x26>
801018ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    bp = bread(ip->dev, ip->addrs[NDIRECT]);
801018c0:	83 ec 08             	sub    $0x8,%esp
801018c3:	50                   	push   %eax
801018c4:	ff 33                	pushl  (%ebx)
801018c6:	e8 05 e8 ff ff       	call   801000d0 <bread>
801018cb:	8d 88 5c 02 00 00    	lea    0x25c(%eax),%ecx
801018d1:	89 7d e0             	mov    %edi,-0x20(%ebp)
801018d4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    a = (uint*)bp->data;
801018d7:	8d 70 5c             	lea    0x5c(%eax),%esi
801018da:	83 c4 10             	add    $0x10,%esp
801018dd:	89 cf                	mov    %ecx,%edi
801018df:	eb 0e                	jmp    801018ef <iput+0x11f>
801018e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801018e8:	83 c6 04             	add    $0x4,%esi
    for(j = 0; j < NINDIRECT; j++){
801018eb:	39 fe                	cmp    %edi,%esi
801018ed:	74 0f                	je     801018fe <iput+0x12e>
      if(a[j])
801018ef:	8b 16                	mov    (%esi),%edx
801018f1:	85 d2                	test   %edx,%edx
801018f3:	74 f3                	je     801018e8 <iput+0x118>
        bfree(ip->dev, a[j]);
801018f5:	8b 03                	mov    (%ebx),%eax
801018f7:	e8 24 fb ff ff       	call   80101420 <bfree>
801018fc:	eb ea                	jmp    801018e8 <iput+0x118>
    brelse(bp);
801018fe:	83 ec 0c             	sub    $0xc,%esp
80101901:	ff 75 e4             	pushl  -0x1c(%ebp)
80101904:	8b 7d e0             	mov    -0x20(%ebp),%edi
80101907:	e8 e4 e8 ff ff       	call   801001f0 <brelse>
    bfree(ip->dev, ip->addrs[NDIRECT]);
8010190c:	8b 93 8c 00 00 00    	mov    0x8c(%ebx),%edx
80101912:	8b 03                	mov    (%ebx),%eax
80101914:	e8 07 fb ff ff       	call   80101420 <bfree>
    ip->addrs[NDIRECT] = 0;
80101919:	c7 83 8c 00 00 00 00 	movl   $0x0,0x8c(%ebx)
80101920:	00 00 00 
80101923:	83 c4 10             	add    $0x10,%esp
80101926:	e9 62 ff ff ff       	jmp    8010188d <iput+0xbd>
8010192b:	90                   	nop
8010192c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101930 <iunlockput>:
{
80101930:	55                   	push   %ebp
80101931:	89 e5                	mov    %esp,%ebp
80101933:	53                   	push   %ebx
80101934:	83 ec 10             	sub    $0x10,%esp
80101937:	8b 5d 08             	mov    0x8(%ebp),%ebx
  iunlock(ip);
8010193a:	53                   	push   %ebx
8010193b:	e8 40 fe ff ff       	call   80101780 <iunlock>
  iput(ip);
80101940:	89 5d 08             	mov    %ebx,0x8(%ebp)
80101943:	83 c4 10             	add    $0x10,%esp
}
80101946:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80101949:	c9                   	leave  
  iput(ip);
8010194a:	e9 81 fe ff ff       	jmp    801017d0 <iput>
8010194f:	90                   	nop

80101950 <stati>:

// Copy stat information from inode.
// Caller must hold ip->lock.
void
stati(struct inode *ip, struct stat *st)
{
80101950:	55                   	push   %ebp
80101951:	89 e5                	mov    %esp,%ebp
80101953:	8b 55 08             	mov    0x8(%ebp),%edx
80101956:	8b 45 0c             	mov    0xc(%ebp),%eax
  st->dev = ip->dev;
80101959:	8b 0a                	mov    (%edx),%ecx
8010195b:	89 48 04             	mov    %ecx,0x4(%eax)
  st->ino = ip->inum;
8010195e:	8b 4a 04             	mov    0x4(%edx),%ecx
80101961:	89 48 08             	mov    %ecx,0x8(%eax)
  st->type = ip->type;
80101964:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
80101968:	66 89 08             	mov    %cx,(%eax)
  st->nlink = ip->nlink;
8010196b:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
8010196f:	66 89 48 0c          	mov    %cx,0xc(%eax)
  st->size = ip->size;
80101973:	8b 52 58             	mov    0x58(%edx),%edx
80101976:	89 50 10             	mov    %edx,0x10(%eax)
}
80101979:	5d                   	pop    %ebp
8010197a:	c3                   	ret    
8010197b:	90                   	nop
8010197c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101980 <readi>:
//PAGEBREAK!
// Read data from inode.
// Caller must hold ip->lock.
int
readi(struct inode *ip, char *dst, uint off, uint n)
{
80101980:	55                   	push   %ebp
80101981:	89 e5                	mov    %esp,%ebp
80101983:	57                   	push   %edi
80101984:	56                   	push   %esi
80101985:	53                   	push   %ebx
80101986:	83 ec 1c             	sub    $0x1c,%esp
80101989:	8b 45 08             	mov    0x8(%ebp),%eax
8010198c:	8b 75 0c             	mov    0xc(%ebp),%esi
8010198f:	8b 7d 14             	mov    0x14(%ebp),%edi
  uint tot, m;
  struct buf *bp;

  if(ip->type == T_DEV){
80101992:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
{
80101997:	89 75 e0             	mov    %esi,-0x20(%ebp)
8010199a:	89 45 d8             	mov    %eax,-0x28(%ebp)
8010199d:	8b 75 10             	mov    0x10(%ebp),%esi
801019a0:	89 7d e4             	mov    %edi,-0x1c(%ebp)
  if(ip->type == T_DEV){
801019a3:	0f 84 a7 00 00 00    	je     80101a50 <readi+0xd0>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
      return -1;
    return devsw[ip->major].read(ip, dst, n);
  }

  if(off > ip->size || off + n < off)
801019a9:	8b 45 d8             	mov    -0x28(%ebp),%eax
801019ac:	8b 40 58             	mov    0x58(%eax),%eax
801019af:	39 c6                	cmp    %eax,%esi
801019b1:	0f 87 ba 00 00 00    	ja     80101a71 <readi+0xf1>
801019b7:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801019ba:	89 f9                	mov    %edi,%ecx
801019bc:	01 f1                	add    %esi,%ecx
801019be:	0f 82 ad 00 00 00    	jb     80101a71 <readi+0xf1>
    return -1;
  if(off + n > ip->size)
    n = ip->size - off;
801019c4:	89 c2                	mov    %eax,%edx
801019c6:	29 f2                	sub    %esi,%edx
801019c8:	39 c8                	cmp    %ecx,%eax
801019ca:	0f 43 d7             	cmovae %edi,%edx

  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
801019cd:	31 ff                	xor    %edi,%edi
801019cf:	85 d2                	test   %edx,%edx
    n = ip->size - off;
801019d1:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
801019d4:	74 6c                	je     80101a42 <readi+0xc2>
801019d6:	8d 76 00             	lea    0x0(%esi),%esi
801019d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
801019e0:	8b 5d d8             	mov    -0x28(%ebp),%ebx
801019e3:	89 f2                	mov    %esi,%edx
801019e5:	c1 ea 09             	shr    $0x9,%edx
801019e8:	89 d8                	mov    %ebx,%eax
801019ea:	e8 11 f9 ff ff       	call   80101300 <bmap>
801019ef:	83 ec 08             	sub    $0x8,%esp
801019f2:	50                   	push   %eax
801019f3:	ff 33                	pushl  (%ebx)
801019f5:	e8 d6 e6 ff ff       	call   801000d0 <bread>
    m = min(n - tot, BSIZE - off%BSIZE);
801019fa:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
801019fd:	89 c2                	mov    %eax,%edx
    m = min(n - tot, BSIZE - off%BSIZE);
801019ff:	89 f0                	mov    %esi,%eax
80101a01:	25 ff 01 00 00       	and    $0x1ff,%eax
80101a06:	b9 00 02 00 00       	mov    $0x200,%ecx
80101a0b:	83 c4 0c             	add    $0xc,%esp
80101a0e:	29 c1                	sub    %eax,%ecx
    memmove(dst, bp->data + off%BSIZE, m);
80101a10:	8d 44 02 5c          	lea    0x5c(%edx,%eax,1),%eax
80101a14:	89 55 dc             	mov    %edx,-0x24(%ebp)
    m = min(n - tot, BSIZE - off%BSIZE);
80101a17:	29 fb                	sub    %edi,%ebx
80101a19:	39 d9                	cmp    %ebx,%ecx
80101a1b:	0f 46 d9             	cmovbe %ecx,%ebx
    memmove(dst, bp->data + off%BSIZE, m);
80101a1e:	53                   	push   %ebx
80101a1f:	50                   	push   %eax
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101a20:	01 df                	add    %ebx,%edi
    memmove(dst, bp->data + off%BSIZE, m);
80101a22:	ff 75 e0             	pushl  -0x20(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101a25:	01 de                	add    %ebx,%esi
    memmove(dst, bp->data + off%BSIZE, m);
80101a27:	e8 14 2b 00 00       	call   80104540 <memmove>
    brelse(bp);
80101a2c:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101a2f:	89 14 24             	mov    %edx,(%esp)
80101a32:	e8 b9 e7 ff ff       	call   801001f0 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, dst+=m){
80101a37:	01 5d e0             	add    %ebx,-0x20(%ebp)
80101a3a:	83 c4 10             	add    $0x10,%esp
80101a3d:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
80101a40:	77 9e                	ja     801019e0 <readi+0x60>
  }
  return n;
80101a42:	8b 45 e4             	mov    -0x1c(%ebp),%eax
}
80101a45:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101a48:	5b                   	pop    %ebx
80101a49:	5e                   	pop    %esi
80101a4a:	5f                   	pop    %edi
80101a4b:	5d                   	pop    %ebp
80101a4c:	c3                   	ret    
80101a4d:	8d 76 00             	lea    0x0(%esi),%esi
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].read)
80101a50:	0f bf 40 52          	movswl 0x52(%eax),%eax
80101a54:	66 83 f8 09          	cmp    $0x9,%ax
80101a58:	77 17                	ja     80101a71 <readi+0xf1>
80101a5a:	8b 04 c5 60 09 11 80 	mov    -0x7feef6a0(,%eax,8),%eax
80101a61:	85 c0                	test   %eax,%eax
80101a63:	74 0c                	je     80101a71 <readi+0xf1>
    return devsw[ip->major].read(ip, dst, n);
80101a65:	89 7d 10             	mov    %edi,0x10(%ebp)
}
80101a68:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101a6b:	5b                   	pop    %ebx
80101a6c:	5e                   	pop    %esi
80101a6d:	5f                   	pop    %edi
80101a6e:	5d                   	pop    %ebp
    return devsw[ip->major].read(ip, dst, n);
80101a6f:	ff e0                	jmp    *%eax
      return -1;
80101a71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a76:	eb cd                	jmp    80101a45 <readi+0xc5>
80101a78:	90                   	nop
80101a79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80101a80 <writei>:
// PAGEBREAK!
// Write data to inode.
// Caller must hold ip->lock.
int
writei(struct inode *ip, char *src, uint off, uint n)
{
80101a80:	55                   	push   %ebp
80101a81:	89 e5                	mov    %esp,%ebp
80101a83:	57                   	push   %edi
80101a84:	56                   	push   %esi
80101a85:	53                   	push   %ebx
80101a86:	83 ec 1c             	sub    $0x1c,%esp
80101a89:	8b 45 08             	mov    0x8(%ebp),%eax
80101a8c:	8b 75 0c             	mov    0xc(%ebp),%esi
80101a8f:	8b 7d 14             	mov    0x14(%ebp),%edi
  uint tot, m;
  struct buf *bp;

  if(ip->type == T_DEV){
80101a92:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
{
80101a97:	89 75 dc             	mov    %esi,-0x24(%ebp)
80101a9a:	89 45 d8             	mov    %eax,-0x28(%ebp)
80101a9d:	8b 75 10             	mov    0x10(%ebp),%esi
80101aa0:	89 7d e0             	mov    %edi,-0x20(%ebp)
  if(ip->type == T_DEV){
80101aa3:	0f 84 b7 00 00 00    	je     80101b60 <writei+0xe0>
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
      return -1;
    return devsw[ip->major].write(ip, src, n);
  }

  if(off > ip->size || off + n < off)
80101aa9:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101aac:	39 70 58             	cmp    %esi,0x58(%eax)
80101aaf:	0f 82 eb 00 00 00    	jb     80101ba0 <writei+0x120>
80101ab5:	8b 7d e0             	mov    -0x20(%ebp),%edi
80101ab8:	31 d2                	xor    %edx,%edx
80101aba:	89 f8                	mov    %edi,%eax
80101abc:	01 f0                	add    %esi,%eax
80101abe:	0f 92 c2             	setb   %dl
    return -1;
  if(off + n > MAXFILE*BSIZE)
80101ac1:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101ac6:	0f 87 d4 00 00 00    	ja     80101ba0 <writei+0x120>
80101acc:	85 d2                	test   %edx,%edx
80101ace:	0f 85 cc 00 00 00    	jne    80101ba0 <writei+0x120>
    return -1;

  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101ad4:	85 ff                	test   %edi,%edi
80101ad6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101add:	74 72                	je     80101b51 <writei+0xd1>
80101adf:	90                   	nop
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80101ae0:	8b 7d d8             	mov    -0x28(%ebp),%edi
80101ae3:	89 f2                	mov    %esi,%edx
80101ae5:	c1 ea 09             	shr    $0x9,%edx
80101ae8:	89 f8                	mov    %edi,%eax
80101aea:	e8 11 f8 ff ff       	call   80101300 <bmap>
80101aef:	83 ec 08             	sub    $0x8,%esp
80101af2:	50                   	push   %eax
80101af3:	ff 37                	pushl  (%edi)
80101af5:	e8 d6 e5 ff ff       	call   801000d0 <bread>
    m = min(n - tot, BSIZE - off%BSIZE);
80101afa:	8b 5d e0             	mov    -0x20(%ebp),%ebx
80101afd:	2b 5d e4             	sub    -0x1c(%ebp),%ebx
    bp = bread(ip->dev, bmap(ip, off/BSIZE));
80101b00:	89 c7                	mov    %eax,%edi
    m = min(n - tot, BSIZE - off%BSIZE);
80101b02:	89 f0                	mov    %esi,%eax
80101b04:	b9 00 02 00 00       	mov    $0x200,%ecx
80101b09:	83 c4 0c             	add    $0xc,%esp
80101b0c:	25 ff 01 00 00       	and    $0x1ff,%eax
80101b11:	29 c1                	sub    %eax,%ecx
    memmove(bp->data + off%BSIZE, src, m);
80101b13:	8d 44 07 5c          	lea    0x5c(%edi,%eax,1),%eax
    m = min(n - tot, BSIZE - off%BSIZE);
80101b17:	39 d9                	cmp    %ebx,%ecx
80101b19:	0f 46 d9             	cmovbe %ecx,%ebx
    memmove(bp->data + off%BSIZE, src, m);
80101b1c:	53                   	push   %ebx
80101b1d:	ff 75 dc             	pushl  -0x24(%ebp)
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101b20:	01 de                	add    %ebx,%esi
    memmove(bp->data + off%BSIZE, src, m);
80101b22:	50                   	push   %eax
80101b23:	e8 18 2a 00 00       	call   80104540 <memmove>
    log_write(bp);
80101b28:	89 3c 24             	mov    %edi,(%esp)
80101b2b:	e8 80 12 00 00       	call   80102db0 <log_write>
    brelse(bp);
80101b30:	89 3c 24             	mov    %edi,(%esp)
80101b33:	e8 b8 e6 ff ff       	call   801001f0 <brelse>
  for(tot=0; tot<n; tot+=m, off+=m, src+=m){
80101b38:	01 5d e4             	add    %ebx,-0x1c(%ebp)
80101b3b:	01 5d dc             	add    %ebx,-0x24(%ebp)
80101b3e:	83 c4 10             	add    $0x10,%esp
80101b41:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101b44:	39 45 e0             	cmp    %eax,-0x20(%ebp)
80101b47:	77 97                	ja     80101ae0 <writei+0x60>
  }

  if(n > 0 && off > ip->size){
80101b49:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101b4c:	3b 70 58             	cmp    0x58(%eax),%esi
80101b4f:	77 37                	ja     80101b88 <writei+0x108>
    ip->size = off;
    iupdate(ip);
  }
  return n;
80101b51:	8b 45 e0             	mov    -0x20(%ebp),%eax
}
80101b54:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101b57:	5b                   	pop    %ebx
80101b58:	5e                   	pop    %esi
80101b59:	5f                   	pop    %edi
80101b5a:	5d                   	pop    %ebp
80101b5b:	c3                   	ret    
80101b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(ip->major < 0 || ip->major >= NDEV || !devsw[ip->major].write)
80101b60:	0f bf 40 52          	movswl 0x52(%eax),%eax
80101b64:	66 83 f8 09          	cmp    $0x9,%ax
80101b68:	77 36                	ja     80101ba0 <writei+0x120>
80101b6a:	8b 04 c5 64 09 11 80 	mov    -0x7feef69c(,%eax,8),%eax
80101b71:	85 c0                	test   %eax,%eax
80101b73:	74 2b                	je     80101ba0 <writei+0x120>
    return devsw[ip->major].write(ip, src, n);
80101b75:	89 7d 10             	mov    %edi,0x10(%ebp)
}
80101b78:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101b7b:	5b                   	pop    %ebx
80101b7c:	5e                   	pop    %esi
80101b7d:	5f                   	pop    %edi
80101b7e:	5d                   	pop    %ebp
    return devsw[ip->major].write(ip, src, n);
80101b7f:	ff e0                	jmp    *%eax
80101b81:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    ip->size = off;
80101b88:	8b 45 d8             	mov    -0x28(%ebp),%eax
    iupdate(ip);
80101b8b:	83 ec 0c             	sub    $0xc,%esp
    ip->size = off;
80101b8e:	89 70 58             	mov    %esi,0x58(%eax)
    iupdate(ip);
80101b91:	50                   	push   %eax
80101b92:	e8 59 fa ff ff       	call   801015f0 <iupdate>
80101b97:	83 c4 10             	add    $0x10,%esp
80101b9a:	eb b5                	jmp    80101b51 <writei+0xd1>
80101b9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      return -1;
80101ba0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101ba5:	eb ad                	jmp    80101b54 <writei+0xd4>
80101ba7:	89 f6                	mov    %esi,%esi
80101ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101bb0 <namecmp>:
//PAGEBREAK!
// Directories

int
namecmp(const char *s, const char *t)
{
80101bb0:	55                   	push   %ebp
80101bb1:	89 e5                	mov    %esp,%ebp
80101bb3:	83 ec 0c             	sub    $0xc,%esp
  return strncmp(s, t, DIRSIZ);
80101bb6:	6a 0e                	push   $0xe
80101bb8:	ff 75 0c             	pushl  0xc(%ebp)
80101bbb:	ff 75 08             	pushl  0x8(%ebp)
80101bbe:	e8 ed 29 00 00       	call   801045b0 <strncmp>
}
80101bc3:	c9                   	leave  
80101bc4:	c3                   	ret    
80101bc5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101bc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101bd0 <dirlookup>:

// Look for a directory entry in a directory.
// If found, set *poff to byte offset of entry.
struct inode*
dirlookup(struct inode *dp, char *name, uint *poff)
{
80101bd0:	55                   	push   %ebp
80101bd1:	89 e5                	mov    %esp,%ebp
80101bd3:	57                   	push   %edi
80101bd4:	56                   	push   %esi
80101bd5:	53                   	push   %ebx
80101bd6:	83 ec 1c             	sub    $0x1c,%esp
80101bd9:	8b 5d 08             	mov    0x8(%ebp),%ebx
  uint off, inum;
  struct dirent de;

  if(dp->type != T_DIR)
80101bdc:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80101be1:	0f 85 85 00 00 00    	jne    80101c6c <dirlookup+0x9c>
    panic("dirlookup not DIR");

  for(off = 0; off < dp->size; off += sizeof(de)){
80101be7:	8b 53 58             	mov    0x58(%ebx),%edx
80101bea:	31 ff                	xor    %edi,%edi
80101bec:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101bef:	85 d2                	test   %edx,%edx
80101bf1:	74 3e                	je     80101c31 <dirlookup+0x61>
80101bf3:	90                   	nop
80101bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101bf8:	6a 10                	push   $0x10
80101bfa:	57                   	push   %edi
80101bfb:	56                   	push   %esi
80101bfc:	53                   	push   %ebx
80101bfd:	e8 7e fd ff ff       	call   80101980 <readi>
80101c02:	83 c4 10             	add    $0x10,%esp
80101c05:	83 f8 10             	cmp    $0x10,%eax
80101c08:	75 55                	jne    80101c5f <dirlookup+0x8f>
      panic("dirlookup read");
    if(de.inum == 0)
80101c0a:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c0f:	74 18                	je     80101c29 <dirlookup+0x59>
  return strncmp(s, t, DIRSIZ);
80101c11:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c14:	83 ec 04             	sub    $0x4,%esp
80101c17:	6a 0e                	push   $0xe
80101c19:	50                   	push   %eax
80101c1a:	ff 75 0c             	pushl  0xc(%ebp)
80101c1d:	e8 8e 29 00 00       	call   801045b0 <strncmp>
      continue;
    if(namecmp(name, de.name) == 0){
80101c22:	83 c4 10             	add    $0x10,%esp
80101c25:	85 c0                	test   %eax,%eax
80101c27:	74 17                	je     80101c40 <dirlookup+0x70>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101c29:	83 c7 10             	add    $0x10,%edi
80101c2c:	3b 7b 58             	cmp    0x58(%ebx),%edi
80101c2f:	72 c7                	jb     80101bf8 <dirlookup+0x28>
      return iget(dp->dev, inum);
    }
  }

  return 0;
}
80101c31:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
80101c34:	31 c0                	xor    %eax,%eax
}
80101c36:	5b                   	pop    %ebx
80101c37:	5e                   	pop    %esi
80101c38:	5f                   	pop    %edi
80101c39:	5d                   	pop    %ebp
80101c3a:	c3                   	ret    
80101c3b:	90                   	nop
80101c3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(poff)
80101c40:	8b 45 10             	mov    0x10(%ebp),%eax
80101c43:	85 c0                	test   %eax,%eax
80101c45:	74 05                	je     80101c4c <dirlookup+0x7c>
        *poff = off;
80101c47:	8b 45 10             	mov    0x10(%ebp),%eax
80101c4a:	89 38                	mov    %edi,(%eax)
      inum = de.inum;
80101c4c:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
      return iget(dp->dev, inum);
80101c50:	8b 03                	mov    (%ebx),%eax
80101c52:	e8 d9 f5 ff ff       	call   80101230 <iget>
}
80101c57:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101c5a:	5b                   	pop    %ebx
80101c5b:	5e                   	pop    %esi
80101c5c:	5f                   	pop    %edi
80101c5d:	5d                   	pop    %ebp
80101c5e:	c3                   	ret    
      panic("dirlookup read");
80101c5f:	83 ec 0c             	sub    $0xc,%esp
80101c62:	68 f9 6f 10 80       	push   $0x80106ff9
80101c67:	e8 34 e7 ff ff       	call   801003a0 <panic>
    panic("dirlookup not DIR");
80101c6c:	83 ec 0c             	sub    $0xc,%esp
80101c6f:	68 e7 6f 10 80       	push   $0x80106fe7
80101c74:	e8 27 e7 ff ff       	call   801003a0 <panic>
80101c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80101c80 <namex>:
// If parent != 0, return the inode for the parent and copy the final
// path element into name, which must have room for DIRSIZ bytes.
// Must be called inside a transaction since it calls iput().
static struct inode*
namex(char *path, int nameiparent, char *name)
{
80101c80:	55                   	push   %ebp
80101c81:	89 e5                	mov    %esp,%ebp
80101c83:	57                   	push   %edi
80101c84:	56                   	push   %esi
80101c85:	53                   	push   %ebx
80101c86:	89 cf                	mov    %ecx,%edi
80101c88:	89 c3                	mov    %eax,%ebx
80101c8a:	83 ec 1c             	sub    $0x1c,%esp
  struct inode *ip, *next;

  if(*path == '/')
80101c8d:	80 38 2f             	cmpb   $0x2f,(%eax)
{
80101c90:	89 55 e0             	mov    %edx,-0x20(%ebp)
  if(*path == '/')
80101c93:	0f 84 67 01 00 00    	je     80101e00 <namex+0x180>
    ip = iget(ROOTDEV, ROOTINO);
  else
    ip = idup(myproc()->cwd);
80101c99:	e8 72 1b 00 00       	call   80103810 <myproc>
  acquire(&icache.lock);
80101c9e:	83 ec 0c             	sub    $0xc,%esp
    ip = idup(myproc()->cwd);
80101ca1:	8b 70 68             	mov    0x68(%eax),%esi
  acquire(&icache.lock);
80101ca4:	68 e0 09 11 80       	push   $0x801109e0
80101ca9:	e8 82 26 00 00       	call   80104330 <acquire>
  ip->ref++;
80101cae:	83 46 08 01          	addl   $0x1,0x8(%esi)
  release(&icache.lock);
80101cb2:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101cb9:	e8 92 27 00 00       	call   80104450 <release>
80101cbe:	83 c4 10             	add    $0x10,%esp
80101cc1:	eb 08                	jmp    80101ccb <namex+0x4b>
80101cc3:	90                   	nop
80101cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    path++;
80101cc8:	83 c3 01             	add    $0x1,%ebx
  while(*path == '/')
80101ccb:	0f b6 03             	movzbl (%ebx),%eax
80101cce:	3c 2f                	cmp    $0x2f,%al
80101cd0:	74 f6                	je     80101cc8 <namex+0x48>
  if(*path == 0)
80101cd2:	84 c0                	test   %al,%al
80101cd4:	0f 84 ee 00 00 00    	je     80101dc8 <namex+0x148>
  while(*path != '/' && *path != 0)
80101cda:	0f b6 03             	movzbl (%ebx),%eax
80101cdd:	3c 2f                	cmp    $0x2f,%al
80101cdf:	0f 84 b3 00 00 00    	je     80101d98 <namex+0x118>
80101ce5:	84 c0                	test   %al,%al
80101ce7:	89 da                	mov    %ebx,%edx
80101ce9:	75 09                	jne    80101cf4 <namex+0x74>
80101ceb:	e9 a8 00 00 00       	jmp    80101d98 <namex+0x118>
80101cf0:	84 c0                	test   %al,%al
80101cf2:	74 0a                	je     80101cfe <namex+0x7e>
    path++;
80101cf4:	83 c2 01             	add    $0x1,%edx
  while(*path != '/' && *path != 0)
80101cf7:	0f b6 02             	movzbl (%edx),%eax
80101cfa:	3c 2f                	cmp    $0x2f,%al
80101cfc:	75 f2                	jne    80101cf0 <namex+0x70>
80101cfe:	89 d1                	mov    %edx,%ecx
80101d00:	29 d9                	sub    %ebx,%ecx
  if(len >= DIRSIZ)
80101d02:	83 f9 0d             	cmp    $0xd,%ecx
80101d05:	0f 8e 91 00 00 00    	jle    80101d9c <namex+0x11c>
    memmove(name, s, DIRSIZ);
80101d0b:	83 ec 04             	sub    $0x4,%esp
80101d0e:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80101d11:	6a 0e                	push   $0xe
80101d13:	53                   	push   %ebx
80101d14:	57                   	push   %edi
80101d15:	e8 26 28 00 00       	call   80104540 <memmove>
    path++;
80101d1a:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    memmove(name, s, DIRSIZ);
80101d1d:	83 c4 10             	add    $0x10,%esp
    path++;
80101d20:	89 d3                	mov    %edx,%ebx
  while(*path == '/')
80101d22:	80 3a 2f             	cmpb   $0x2f,(%edx)
80101d25:	75 11                	jne    80101d38 <namex+0xb8>
80101d27:	89 f6                	mov    %esi,%esi
80101d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    path++;
80101d30:	83 c3 01             	add    $0x1,%ebx
  while(*path == '/')
80101d33:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101d36:	74 f8                	je     80101d30 <namex+0xb0>

  while((path = skipelem(path, name)) != 0){
    ilock(ip);
80101d38:	83 ec 0c             	sub    $0xc,%esp
80101d3b:	56                   	push   %esi
80101d3c:	e8 5f f9 ff ff       	call   801016a0 <ilock>
    if(ip->type != T_DIR){
80101d41:	83 c4 10             	add    $0x10,%esp
80101d44:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101d49:	0f 85 91 00 00 00    	jne    80101de0 <namex+0x160>
      iunlockput(ip);
      return 0;
    }
    if(nameiparent && *path == '\0'){
80101d4f:	8b 55 e0             	mov    -0x20(%ebp),%edx
80101d52:	85 d2                	test   %edx,%edx
80101d54:	74 09                	je     80101d5f <namex+0xdf>
80101d56:	80 3b 00             	cmpb   $0x0,(%ebx)
80101d59:	0f 84 b7 00 00 00    	je     80101e16 <namex+0x196>
      // Stop one level early.
      iunlock(ip);
      return ip;
    }
    if((next = dirlookup(ip, name, 0)) == 0){
80101d5f:	83 ec 04             	sub    $0x4,%esp
80101d62:	6a 00                	push   $0x0
80101d64:	57                   	push   %edi
80101d65:	56                   	push   %esi
80101d66:	e8 65 fe ff ff       	call   80101bd0 <dirlookup>
80101d6b:	83 c4 10             	add    $0x10,%esp
80101d6e:	85 c0                	test   %eax,%eax
80101d70:	74 6e                	je     80101de0 <namex+0x160>
  iunlock(ip);
80101d72:	83 ec 0c             	sub    $0xc,%esp
80101d75:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101d78:	56                   	push   %esi
80101d79:	e8 02 fa ff ff       	call   80101780 <iunlock>
  iput(ip);
80101d7e:	89 34 24             	mov    %esi,(%esp)
80101d81:	e8 4a fa ff ff       	call   801017d0 <iput>
80101d86:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101d89:	83 c4 10             	add    $0x10,%esp
80101d8c:	89 c6                	mov    %eax,%esi
80101d8e:	e9 38 ff ff ff       	jmp    80101ccb <namex+0x4b>
80101d93:	90                   	nop
80101d94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(*path != '/' && *path != 0)
80101d98:	89 da                	mov    %ebx,%edx
80101d9a:	31 c9                	xor    %ecx,%ecx
    memmove(name, s, len);
80101d9c:	83 ec 04             	sub    $0x4,%esp
80101d9f:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101da2:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101da5:	51                   	push   %ecx
80101da6:	53                   	push   %ebx
80101da7:	57                   	push   %edi
80101da8:	e8 93 27 00 00       	call   80104540 <memmove>
    name[len] = 0;
80101dad:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80101db0:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101db3:	83 c4 10             	add    $0x10,%esp
80101db6:	c6 04 0f 00          	movb   $0x0,(%edi,%ecx,1)
80101dba:	89 d3                	mov    %edx,%ebx
80101dbc:	e9 61 ff ff ff       	jmp    80101d22 <namex+0xa2>
80101dc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      return 0;
    }
    iunlockput(ip);
    ip = next;
  }
  if(nameiparent){
80101dc8:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101dcb:	85 c0                	test   %eax,%eax
80101dcd:	75 5d                	jne    80101e2c <namex+0x1ac>
    iput(ip);
    return 0;
  }
  return ip;
}
80101dcf:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101dd2:	89 f0                	mov    %esi,%eax
80101dd4:	5b                   	pop    %ebx
80101dd5:	5e                   	pop    %esi
80101dd6:	5f                   	pop    %edi
80101dd7:	5d                   	pop    %ebp
80101dd8:	c3                   	ret    
80101dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  iunlock(ip);
80101de0:	83 ec 0c             	sub    $0xc,%esp
80101de3:	56                   	push   %esi
80101de4:	e8 97 f9 ff ff       	call   80101780 <iunlock>
  iput(ip);
80101de9:	89 34 24             	mov    %esi,(%esp)
      return 0;
80101dec:	31 f6                	xor    %esi,%esi
  iput(ip);
80101dee:	e8 dd f9 ff ff       	call   801017d0 <iput>
      return 0;
80101df3:	83 c4 10             	add    $0x10,%esp
}
80101df6:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101df9:	89 f0                	mov    %esi,%eax
80101dfb:	5b                   	pop    %ebx
80101dfc:	5e                   	pop    %esi
80101dfd:	5f                   	pop    %edi
80101dfe:	5d                   	pop    %ebp
80101dff:	c3                   	ret    
    ip = iget(ROOTDEV, ROOTINO);
80101e00:	ba 01 00 00 00       	mov    $0x1,%edx
80101e05:	b8 01 00 00 00       	mov    $0x1,%eax
80101e0a:	e8 21 f4 ff ff       	call   80101230 <iget>
80101e0f:	89 c6                	mov    %eax,%esi
80101e11:	e9 b5 fe ff ff       	jmp    80101ccb <namex+0x4b>
      iunlock(ip);
80101e16:	83 ec 0c             	sub    $0xc,%esp
80101e19:	56                   	push   %esi
80101e1a:	e8 61 f9 ff ff       	call   80101780 <iunlock>
      return ip;
80101e1f:	83 c4 10             	add    $0x10,%esp
}
80101e22:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101e25:	89 f0                	mov    %esi,%eax
80101e27:	5b                   	pop    %ebx
80101e28:	5e                   	pop    %esi
80101e29:	5f                   	pop    %edi
80101e2a:	5d                   	pop    %ebp
80101e2b:	c3                   	ret    
    iput(ip);
80101e2c:	83 ec 0c             	sub    $0xc,%esp
80101e2f:	56                   	push   %esi
    return 0;
80101e30:	31 f6                	xor    %esi,%esi
    iput(ip);
80101e32:	e8 99 f9 ff ff       	call   801017d0 <iput>
    return 0;
80101e37:	83 c4 10             	add    $0x10,%esp
80101e3a:	eb 93                	jmp    80101dcf <namex+0x14f>
80101e3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101e40 <dirlink>:
{
80101e40:	55                   	push   %ebp
80101e41:	89 e5                	mov    %esp,%ebp
80101e43:	57                   	push   %edi
80101e44:	56                   	push   %esi
80101e45:	53                   	push   %ebx
80101e46:	83 ec 20             	sub    $0x20,%esp
80101e49:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if((ip = dirlookup(dp, name, 0)) != 0){
80101e4c:	6a 00                	push   $0x0
80101e4e:	ff 75 0c             	pushl  0xc(%ebp)
80101e51:	53                   	push   %ebx
80101e52:	e8 79 fd ff ff       	call   80101bd0 <dirlookup>
80101e57:	83 c4 10             	add    $0x10,%esp
80101e5a:	85 c0                	test   %eax,%eax
80101e5c:	75 67                	jne    80101ec5 <dirlink+0x85>
  for(off = 0; off < dp->size; off += sizeof(de)){
80101e5e:	8b 7b 58             	mov    0x58(%ebx),%edi
80101e61:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101e64:	85 ff                	test   %edi,%edi
80101e66:	74 29                	je     80101e91 <dirlink+0x51>
80101e68:	31 ff                	xor    %edi,%edi
80101e6a:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101e6d:	eb 09                	jmp    80101e78 <dirlink+0x38>
80101e6f:	90                   	nop
80101e70:	83 c7 10             	add    $0x10,%edi
80101e73:	3b 7b 58             	cmp    0x58(%ebx),%edi
80101e76:	73 19                	jae    80101e91 <dirlink+0x51>
    if(readi(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101e78:	6a 10                	push   $0x10
80101e7a:	57                   	push   %edi
80101e7b:	56                   	push   %esi
80101e7c:	53                   	push   %ebx
80101e7d:	e8 fe fa ff ff       	call   80101980 <readi>
80101e82:	83 c4 10             	add    $0x10,%esp
80101e85:	83 f8 10             	cmp    $0x10,%eax
80101e88:	75 4e                	jne    80101ed8 <dirlink+0x98>
    if(de.inum == 0)
80101e8a:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101e8f:	75 df                	jne    80101e70 <dirlink+0x30>
  strncpy(de.name, name, DIRSIZ);
80101e91:	8d 45 da             	lea    -0x26(%ebp),%eax
80101e94:	83 ec 04             	sub    $0x4,%esp
80101e97:	6a 0e                	push   $0xe
80101e99:	ff 75 0c             	pushl  0xc(%ebp)
80101e9c:	50                   	push   %eax
80101e9d:	e8 5e 27 00 00       	call   80104600 <strncpy>
  de.inum = inum;
80101ea2:	8b 45 10             	mov    0x10(%ebp),%eax
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101ea5:	6a 10                	push   $0x10
80101ea7:	57                   	push   %edi
80101ea8:	56                   	push   %esi
80101ea9:	53                   	push   %ebx
  de.inum = inum;
80101eaa:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
  if(writei(dp, (char*)&de, off, sizeof(de)) != sizeof(de))
80101eae:	e8 cd fb ff ff       	call   80101a80 <writei>
80101eb3:	83 c4 20             	add    $0x20,%esp
80101eb6:	83 f8 10             	cmp    $0x10,%eax
80101eb9:	75 2a                	jne    80101ee5 <dirlink+0xa5>
  return 0;
80101ebb:	31 c0                	xor    %eax,%eax
}
80101ebd:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101ec0:	5b                   	pop    %ebx
80101ec1:	5e                   	pop    %esi
80101ec2:	5f                   	pop    %edi
80101ec3:	5d                   	pop    %ebp
80101ec4:	c3                   	ret    
    iput(ip);
80101ec5:	83 ec 0c             	sub    $0xc,%esp
80101ec8:	50                   	push   %eax
80101ec9:	e8 02 f9 ff ff       	call   801017d0 <iput>
    return -1;
80101ece:	83 c4 10             	add    $0x10,%esp
80101ed1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101ed6:	eb e5                	jmp    80101ebd <dirlink+0x7d>
      panic("dirlink read");
80101ed8:	83 ec 0c             	sub    $0xc,%esp
80101edb:	68 08 70 10 80       	push   $0x80107008
80101ee0:	e8 bb e4 ff ff       	call   801003a0 <panic>
    panic("dirlink");
80101ee5:	83 ec 0c             	sub    $0xc,%esp
80101ee8:	68 42 76 10 80       	push   $0x80107642
80101eed:	e8 ae e4 ff ff       	call   801003a0 <panic>
80101ef2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101ef9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101f00 <namei>:

struct inode*
namei(char *path)
{
80101f00:	55                   	push   %ebp
  char name[DIRSIZ];
  return namex(path, 0, name);
80101f01:	31 d2                	xor    %edx,%edx
{
80101f03:	89 e5                	mov    %esp,%ebp
80101f05:	83 ec 18             	sub    $0x18,%esp
  return namex(path, 0, name);
80101f08:	8b 45 08             	mov    0x8(%ebp),%eax
80101f0b:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101f0e:	e8 6d fd ff ff       	call   80101c80 <namex>
}
80101f13:	c9                   	leave  
80101f14:	c3                   	ret    
80101f15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101f19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101f20 <nameiparent>:

struct inode*
nameiparent(char *path, char *name)
{
80101f20:	55                   	push   %ebp
  return namex(path, 1, name);
80101f21:	ba 01 00 00 00       	mov    $0x1,%edx
{
80101f26:	89 e5                	mov    %esp,%ebp
  return namex(path, 1, name);
80101f28:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101f2b:	8b 45 08             	mov    0x8(%ebp),%eax
}
80101f2e:	5d                   	pop    %ebp
  return namex(path, 1, name);
80101f2f:	e9 4c fd ff ff       	jmp    80101c80 <namex>
80101f34:	66 90                	xchg   %ax,%ax
80101f36:	66 90                	xchg   %ax,%ax
80101f38:	66 90                	xchg   %ax,%ax
80101f3a:	66 90                	xchg   %ax,%ax
80101f3c:	66 90                	xchg   %ax,%ax
80101f3e:	66 90                	xchg   %ax,%ax

80101f40 <idestart>:
}

// Start the request for b.  Caller must hold idelock.
static void
idestart(struct buf *b)
{
80101f40:	55                   	push   %ebp
80101f41:	89 e5                	mov    %esp,%ebp
80101f43:	57                   	push   %edi
80101f44:	56                   	push   %esi
80101f45:	53                   	push   %ebx
80101f46:	83 ec 0c             	sub    $0xc,%esp
  if(b == 0)
80101f49:	85 c0                	test   %eax,%eax
80101f4b:	0f 84 b4 00 00 00    	je     80102005 <idestart+0xc5>
    panic("idestart");
  if(b->blockno >= FSSIZE)
80101f51:	8b 58 08             	mov    0x8(%eax),%ebx
80101f54:	89 c6                	mov    %eax,%esi
80101f56:	81 fb e7 03 00 00    	cmp    $0x3e7,%ebx
80101f5c:	0f 87 96 00 00 00    	ja     80101ff8 <idestart+0xb8>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80101f62:	b9 f7 01 00 00       	mov    $0x1f7,%ecx
80101f67:	89 f6                	mov    %esi,%esi
80101f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
80101f70:	89 ca                	mov    %ecx,%edx
80101f72:	ec                   	in     (%dx),%al
  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80101f73:	83 e0 c0             	and    $0xffffffc0,%eax
80101f76:	3c 40                	cmp    $0x40,%al
80101f78:	75 f6                	jne    80101f70 <idestart+0x30>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80101f7a:	31 ff                	xor    %edi,%edi
80101f7c:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101f81:	89 f8                	mov    %edi,%eax
80101f83:	ee                   	out    %al,(%dx)
80101f84:	b8 01 00 00 00       	mov    $0x1,%eax
80101f89:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101f8e:	ee                   	out    %al,(%dx)
80101f8f:	ba f3 01 00 00       	mov    $0x1f3,%edx
80101f94:	89 d8                	mov    %ebx,%eax
80101f96:	ee                   	out    %al,(%dx)

  idewait(0);
  outb(0x3f6, 0);  // generate interrupt
  outb(0x1f2, sector_per_block);  // number of sectors
  outb(0x1f3, sector & 0xff);
  outb(0x1f4, (sector >> 8) & 0xff);
80101f97:	89 d8                	mov    %ebx,%eax
80101f99:	ba f4 01 00 00       	mov    $0x1f4,%edx
80101f9e:	c1 f8 08             	sar    $0x8,%eax
80101fa1:	ee                   	out    %al,(%dx)
80101fa2:	ba f5 01 00 00       	mov    $0x1f5,%edx
80101fa7:	89 f8                	mov    %edi,%eax
80101fa9:	ee                   	out    %al,(%dx)
  outb(0x1f5, (sector >> 16) & 0xff);
  outb(0x1f6, 0xe0 | ((b->dev&1)<<4) | ((sector>>24)&0x0f));
80101faa:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101fae:	ba f6 01 00 00       	mov    $0x1f6,%edx
80101fb3:	c1 e0 04             	shl    $0x4,%eax
80101fb6:	83 e0 10             	and    $0x10,%eax
80101fb9:	83 c8 e0             	or     $0xffffffe0,%eax
80101fbc:	ee                   	out    %al,(%dx)
  if(b->flags & B_DIRTY){
80101fbd:	f6 06 04             	testb  $0x4,(%esi)
80101fc0:	75 16                	jne    80101fd8 <idestart+0x98>
80101fc2:	b8 20 00 00 00       	mov    $0x20,%eax
80101fc7:	89 ca                	mov    %ecx,%edx
80101fc9:	ee                   	out    %al,(%dx)
    outb(0x1f7, write_cmd);
    outsl(0x1f0, b->data, BSIZE/4);
  } else {
    outb(0x1f7, read_cmd);
  }
}
80101fca:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101fcd:	5b                   	pop    %ebx
80101fce:	5e                   	pop    %esi
80101fcf:	5f                   	pop    %edi
80101fd0:	5d                   	pop    %ebp
80101fd1:	c3                   	ret    
80101fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101fd8:	b8 30 00 00 00       	mov    $0x30,%eax
80101fdd:	89 ca                	mov    %ecx,%edx
80101fdf:	ee                   	out    %al,(%dx)
  asm volatile("cld; rep outsl" :
80101fe0:	b9 80 00 00 00       	mov    $0x80,%ecx
    outsl(0x1f0, b->data, BSIZE/4);
80101fe5:	83 c6 5c             	add    $0x5c,%esi
80101fe8:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101fed:	fc                   	cld    
80101fee:	f3 6f                	rep outsl %ds:(%esi),(%dx)
}
80101ff0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80101ff3:	5b                   	pop    %ebx
80101ff4:	5e                   	pop    %esi
80101ff5:	5f                   	pop    %edi
80101ff6:	5d                   	pop    %ebp
80101ff7:	c3                   	ret    
    panic("incorrect blockno");
80101ff8:	83 ec 0c             	sub    $0xc,%esp
80101ffb:	68 74 70 10 80       	push   $0x80107074
80102000:	e8 9b e3 ff ff       	call   801003a0 <panic>
    panic("idestart");
80102005:	83 ec 0c             	sub    $0xc,%esp
80102008:	68 6b 70 10 80       	push   $0x8010706b
8010200d:	e8 8e e3 ff ff       	call   801003a0 <panic>
80102012:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102019:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102020 <ideinit>:
{
80102020:	55                   	push   %ebp
80102021:	89 e5                	mov    %esp,%ebp
80102023:	83 ec 10             	sub    $0x10,%esp
  initlock(&idelock, "ide");
80102026:	68 86 70 10 80       	push   $0x80107086
8010202b:	68 80 a5 10 80       	push   $0x8010a580
80102030:	e8 fb 21 00 00       	call   80104230 <initlock>
  ioapicenable(IRQ_IDE, ncpu - 1);
80102035:	58                   	pop    %eax
80102036:	a1 00 2d 11 80       	mov    0x80112d00,%eax
8010203b:	5a                   	pop    %edx
8010203c:	83 e8 01             	sub    $0x1,%eax
8010203f:	50                   	push   %eax
80102040:	6a 0e                	push   $0xe
80102042:	e8 a9 02 00 00       	call   801022f0 <ioapicenable>
80102047:	83 c4 10             	add    $0x10,%esp
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
8010204a:	ba f7 01 00 00       	mov    $0x1f7,%edx
8010204f:	90                   	nop
80102050:	ec                   	in     (%dx),%al
  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
80102051:	83 e0 c0             	and    $0xffffffc0,%eax
80102054:	3c 40                	cmp    $0x40,%al
80102056:	75 f8                	jne    80102050 <ideinit+0x30>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102058:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
8010205d:	ba f6 01 00 00       	mov    $0x1f6,%edx
80102062:	ee                   	out    %al,(%dx)
80102063:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
80102068:	ba f7 01 00 00       	mov    $0x1f7,%edx
8010206d:	eb 06                	jmp    80102075 <ideinit+0x55>
8010206f:	90                   	nop
  for(i=0; i<1000; i++){
80102070:	83 e9 01             	sub    $0x1,%ecx
80102073:	74 0f                	je     80102084 <ideinit+0x64>
80102075:	ec                   	in     (%dx),%al
    if(inb(0x1f7) != 0){
80102076:	84 c0                	test   %al,%al
80102078:	74 f6                	je     80102070 <ideinit+0x50>
      havedisk1 = 1;
8010207a:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80102081:	00 00 00 
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80102084:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80102089:	ba f6 01 00 00       	mov    $0x1f6,%edx
8010208e:	ee                   	out    %al,(%dx)
}
8010208f:	c9                   	leave  
80102090:	c3                   	ret    
80102091:	eb 0d                	jmp    801020a0 <ideintr>
80102093:	90                   	nop
80102094:	90                   	nop
80102095:	90                   	nop
80102096:	90                   	nop
80102097:	90                   	nop
80102098:	90                   	nop
80102099:	90                   	nop
8010209a:	90                   	nop
8010209b:	90                   	nop
8010209c:	90                   	nop
8010209d:	90                   	nop
8010209e:	90                   	nop
8010209f:	90                   	nop

801020a0 <ideintr>:

// Interrupt handler.
void
ideintr(void)
{
801020a0:	55                   	push   %ebp
801020a1:	89 e5                	mov    %esp,%ebp
801020a3:	57                   	push   %edi
801020a4:	56                   	push   %esi
801020a5:	53                   	push   %ebx
801020a6:	83 ec 18             	sub    $0x18,%esp
  struct buf *b;

  // First queued buffer is the active request.
  acquire(&idelock);
801020a9:	68 80 a5 10 80       	push   $0x8010a580
801020ae:	e8 7d 22 00 00       	call   80104330 <acquire>

  if((b = idequeue) == 0){
801020b3:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
801020b9:	83 c4 10             	add    $0x10,%esp
801020bc:	85 db                	test   %ebx,%ebx
801020be:	74 67                	je     80102127 <ideintr+0x87>
    release(&idelock);
    return;
  }
  idequeue = b->qnext;
801020c0:	8b 43 58             	mov    0x58(%ebx),%eax
801020c3:	a3 64 a5 10 80       	mov    %eax,0x8010a564

  // Read data if needed.
  if(!(b->flags & B_DIRTY) && idewait(1) >= 0)
801020c8:	8b 3b                	mov    (%ebx),%edi
801020ca:	f7 c7 04 00 00 00    	test   $0x4,%edi
801020d0:	75 31                	jne    80102103 <ideintr+0x63>
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801020d2:	ba f7 01 00 00       	mov    $0x1f7,%edx
801020d7:	89 f6                	mov    %esi,%esi
801020d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
801020e0:	ec                   	in     (%dx),%al
  while(((r = inb(0x1f7)) & (IDE_BSY|IDE_DRDY)) != IDE_DRDY)
801020e1:	89 c6                	mov    %eax,%esi
801020e3:	83 e6 c0             	and    $0xffffffc0,%esi
801020e6:	89 f1                	mov    %esi,%ecx
801020e8:	80 f9 40             	cmp    $0x40,%cl
801020eb:	75 f3                	jne    801020e0 <ideintr+0x40>
  if(checkerr && (r & (IDE_DF|IDE_ERR)) != 0)
801020ed:	a8 21                	test   $0x21,%al
801020ef:	75 12                	jne    80102103 <ideintr+0x63>
    insl(0x1f0, b->data, BSIZE/4);
801020f1:	8d 7b 5c             	lea    0x5c(%ebx),%edi
  asm volatile("cld; rep insl" :
801020f4:	b9 80 00 00 00       	mov    $0x80,%ecx
801020f9:	ba f0 01 00 00       	mov    $0x1f0,%edx
801020fe:	fc                   	cld    
801020ff:	f3 6d                	rep insl (%dx),%es:(%edi)
80102101:	8b 3b                	mov    (%ebx),%edi

  // Wake process waiting for this buf.
  b->flags |= B_VALID;
  b->flags &= ~B_DIRTY;
80102103:	83 e7 fb             	and    $0xfffffffb,%edi
  wakeup(b);
80102106:	83 ec 0c             	sub    $0xc,%esp
  b->flags &= ~B_DIRTY;
80102109:	89 f9                	mov    %edi,%ecx
8010210b:	83 c9 02             	or     $0x2,%ecx
8010210e:	89 0b                	mov    %ecx,(%ebx)
  wakeup(b);
80102110:	53                   	push   %ebx
80102111:	e8 4a 1e 00 00       	call   80103f60 <wakeup>

  // Start disk on next buf in queue.
  if(idequeue != 0)
80102116:	a1 64 a5 10 80       	mov    0x8010a564,%eax
8010211b:	83 c4 10             	add    $0x10,%esp
8010211e:	85 c0                	test   %eax,%eax
80102120:	74 05                	je     80102127 <ideintr+0x87>
    idestart(idequeue);
80102122:	e8 19 fe ff ff       	call   80101f40 <idestart>
    release(&idelock);
80102127:	83 ec 0c             	sub    $0xc,%esp
8010212a:	68 80 a5 10 80       	push   $0x8010a580
8010212f:	e8 1c 23 00 00       	call   80104450 <release>

  release(&idelock);
}
80102134:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102137:	5b                   	pop    %ebx
80102138:	5e                   	pop    %esi
80102139:	5f                   	pop    %edi
8010213a:	5d                   	pop    %ebp
8010213b:	c3                   	ret    
8010213c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102140 <iderw>:
// Sync buf with disk.
// If B_DIRTY is set, write buf to disk, clear B_DIRTY, set B_VALID.
// Else if B_VALID is not set, read buf from disk, set B_VALID.
void
iderw(struct buf *b)
{
80102140:	55                   	push   %ebp
80102141:	89 e5                	mov    %esp,%ebp
80102143:	53                   	push   %ebx
80102144:	83 ec 10             	sub    $0x10,%esp
80102147:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct buf **pp;

  if(!holdingsleep(&b->lock))
8010214a:	8d 43 0c             	lea    0xc(%ebx),%eax
8010214d:	50                   	push   %eax
8010214e:	e8 ad 20 00 00       	call   80104200 <holdingsleep>
80102153:	83 c4 10             	add    $0x10,%esp
80102156:	85 c0                	test   %eax,%eax
80102158:	0f 84 c6 00 00 00    	je     80102224 <iderw+0xe4>
    panic("iderw: buf not locked");
  if((b->flags & (B_VALID|B_DIRTY)) == B_VALID)
8010215e:	8b 03                	mov    (%ebx),%eax
80102160:	83 e0 06             	and    $0x6,%eax
80102163:	83 f8 02             	cmp    $0x2,%eax
80102166:	0f 84 ab 00 00 00    	je     80102217 <iderw+0xd7>
    panic("iderw: nothing to do");
  if(b->dev != 0 && !havedisk1)
8010216c:	8b 53 04             	mov    0x4(%ebx),%edx
8010216f:	85 d2                	test   %edx,%edx
80102171:	74 0d                	je     80102180 <iderw+0x40>
80102173:	a1 60 a5 10 80       	mov    0x8010a560,%eax
80102178:	85 c0                	test   %eax,%eax
8010217a:	0f 84 b1 00 00 00    	je     80102231 <iderw+0xf1>
    panic("iderw: ide disk 1 not present");

  acquire(&idelock);  //DOC:acquire-lock
80102180:	83 ec 0c             	sub    $0xc,%esp
80102183:	68 80 a5 10 80       	push   $0x8010a580
80102188:	e8 a3 21 00 00       	call   80104330 <acquire>

  // Append b to idequeue.
  b->qnext = 0;
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
8010218d:	8b 15 64 a5 10 80    	mov    0x8010a564,%edx
80102193:	83 c4 10             	add    $0x10,%esp
  b->qnext = 0;
80102196:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
8010219d:	85 d2                	test   %edx,%edx
8010219f:	75 09                	jne    801021aa <iderw+0x6a>
801021a1:	eb 6d                	jmp    80102210 <iderw+0xd0>
801021a3:	90                   	nop
801021a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801021a8:	89 c2                	mov    %eax,%edx
801021aa:	8b 42 58             	mov    0x58(%edx),%eax
801021ad:	85 c0                	test   %eax,%eax
801021af:	75 f7                	jne    801021a8 <iderw+0x68>
801021b1:	83 c2 58             	add    $0x58,%edx
    ;
  *pp = b;
801021b4:	89 1a                	mov    %ebx,(%edx)

  // Start disk if necessary.
  if(idequeue == b)
801021b6:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
801021bc:	74 42                	je     80102200 <iderw+0xc0>
    idestart(b);

  // Wait for request to finish.
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
801021be:	8b 03                	mov    (%ebx),%eax
801021c0:	83 e0 06             	and    $0x6,%eax
801021c3:	83 f8 02             	cmp    $0x2,%eax
801021c6:	74 23                	je     801021eb <iderw+0xab>
801021c8:	90                   	nop
801021c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    sleep(b, &idelock);
801021d0:	83 ec 08             	sub    $0x8,%esp
801021d3:	68 80 a5 10 80       	push   $0x8010a580
801021d8:	53                   	push   %ebx
801021d9:	e8 d2 1b 00 00       	call   80103db0 <sleep>
  while((b->flags & (B_VALID|B_DIRTY)) != B_VALID){
801021de:	8b 03                	mov    (%ebx),%eax
801021e0:	83 c4 10             	add    $0x10,%esp
801021e3:	83 e0 06             	and    $0x6,%eax
801021e6:	83 f8 02             	cmp    $0x2,%eax
801021e9:	75 e5                	jne    801021d0 <iderw+0x90>
  }


  release(&idelock);
801021eb:	c7 45 08 80 a5 10 80 	movl   $0x8010a580,0x8(%ebp)
}
801021f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801021f5:	c9                   	leave  
  release(&idelock);
801021f6:	e9 55 22 00 00       	jmp    80104450 <release>
801021fb:	90                   	nop
801021fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    idestart(b);
80102200:	89 d8                	mov    %ebx,%eax
80102202:	e8 39 fd ff ff       	call   80101f40 <idestart>
80102207:	eb b5                	jmp    801021be <iderw+0x7e>
80102209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(pp=&idequeue; *pp; pp=&(*pp)->qnext)  //DOC:insert-queue
80102210:	ba 64 a5 10 80       	mov    $0x8010a564,%edx
80102215:	eb 9d                	jmp    801021b4 <iderw+0x74>
    panic("iderw: nothing to do");
80102217:	83 ec 0c             	sub    $0xc,%esp
8010221a:	68 a0 70 10 80       	push   $0x801070a0
8010221f:	e8 7c e1 ff ff       	call   801003a0 <panic>
    panic("iderw: buf not locked");
80102224:	83 ec 0c             	sub    $0xc,%esp
80102227:	68 8a 70 10 80       	push   $0x8010708a
8010222c:	e8 6f e1 ff ff       	call   801003a0 <panic>
    panic("iderw: ide disk 1 not present");
80102231:	83 ec 0c             	sub    $0xc,%esp
80102234:	68 b5 70 10 80       	push   $0x801070b5
80102239:	e8 62 e1 ff ff       	call   801003a0 <panic>
8010223e:	66 90                	xchg   %ax,%ax

80102240 <ioapicinit>:
80102240:	55                   	push   %ebp
80102241:	c7 05 34 26 11 80 00 	movl   $0xfec00000,0x80112634
80102248:	00 c0 fe 
8010224b:	89 e5                	mov    %esp,%ebp
8010224d:	56                   	push   %esi
8010224e:	53                   	push   %ebx
8010224f:	c7 05 00 00 c0 fe 01 	movl   $0x1,0xfec00000
80102256:	00 00 00 
80102259:	8b 15 34 26 11 80    	mov    0x80112634,%edx
8010225f:	8b 72 10             	mov    0x10(%edx),%esi
80102262:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
80102268:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
8010226e:	0f b6 15 60 27 11 80 	movzbl 0x80112760,%edx
80102275:	c1 ee 10             	shr    $0x10,%esi
80102278:	89 f0                	mov    %esi,%eax
8010227a:	0f b6 f0             	movzbl %al,%esi
8010227d:	8b 41 10             	mov    0x10(%ecx),%eax
80102280:	c1 e8 18             	shr    $0x18,%eax
80102283:	39 c2                	cmp    %eax,%edx
80102285:	74 16                	je     8010229d <ioapicinit+0x5d>
80102287:	83 ec 0c             	sub    $0xc,%esp
8010228a:	68 d4 70 10 80       	push   $0x801070d4
8010228f:	e8 dc e3 ff ff       	call   80100670 <cprintf>
80102294:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
8010229a:	83 c4 10             	add    $0x10,%esp
8010229d:	83 c6 21             	add    $0x21,%esi
801022a0:	ba 10 00 00 00       	mov    $0x10,%edx
801022a5:	b8 20 00 00 00       	mov    $0x20,%eax
801022aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801022b0:	89 11                	mov    %edx,(%ecx)
801022b2:	89 c3                	mov    %eax,%ebx
801022b4:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
801022ba:	83 c0 01             	add    $0x1,%eax
801022bd:	81 cb 00 00 01 00    	or     $0x10000,%ebx
801022c3:	89 59 10             	mov    %ebx,0x10(%ecx)
801022c6:	8d 5a 01             	lea    0x1(%edx),%ebx
801022c9:	83 c2 02             	add    $0x2,%edx
801022cc:	89 19                	mov    %ebx,(%ecx)
801022ce:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
801022d4:	c7 41 10 00 00 00 00 	movl   $0x0,0x10(%ecx)
801022db:	39 f0                	cmp    %esi,%eax
801022dd:	75 d1                	jne    801022b0 <ioapicinit+0x70>
801022df:	8d 65 f8             	lea    -0x8(%ebp),%esp
801022e2:	5b                   	pop    %ebx
801022e3:	5e                   	pop    %esi
801022e4:	5d                   	pop    %ebp
801022e5:	c3                   	ret    
801022e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801022ed:	8d 76 00             	lea    0x0(%esi),%esi

801022f0 <ioapicenable>:
801022f0:	55                   	push   %ebp
801022f1:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
801022f7:	89 e5                	mov    %esp,%ebp
801022f9:	8b 45 08             	mov    0x8(%ebp),%eax
801022fc:	8d 50 20             	lea    0x20(%eax),%edx
801022ff:	8d 44 00 10          	lea    0x10(%eax,%eax,1),%eax
80102303:	89 01                	mov    %eax,(%ecx)
80102305:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
8010230b:	83 c0 01             	add    $0x1,%eax
8010230e:	89 51 10             	mov    %edx,0x10(%ecx)
80102311:	8b 55 0c             	mov    0xc(%ebp),%edx
80102314:	89 01                	mov    %eax,(%ecx)
80102316:	a1 34 26 11 80       	mov    0x80112634,%eax
8010231b:	c1 e2 18             	shl    $0x18,%edx
8010231e:	89 50 10             	mov    %edx,0x10(%eax)
80102321:	5d                   	pop    %ebp
80102322:	c3                   	ret    
80102323:	66 90                	xchg   %ax,%ax
80102325:	66 90                	xchg   %ax,%ax
80102327:	66 90                	xchg   %ax,%ax
80102329:	66 90                	xchg   %ax,%ax
8010232b:	66 90                	xchg   %ax,%ax
8010232d:	66 90                	xchg   %ax,%ax
8010232f:	90                   	nop

80102330 <kfree>:
80102330:	55                   	push   %ebp
80102331:	89 e5                	mov    %esp,%ebp
80102333:	53                   	push   %ebx
80102334:	83 ec 04             	sub    $0x4,%esp
80102337:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010233a:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
80102340:	75 76                	jne    801023b8 <kfree+0x88>
80102342:	81 fb a8 55 11 80    	cmp    $0x801155a8,%ebx
80102348:	72 6e                	jb     801023b8 <kfree+0x88>
8010234a:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80102350:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80102355:	77 61                	ja     801023b8 <kfree+0x88>
80102357:	83 ec 04             	sub    $0x4,%esp
8010235a:	68 00 10 00 00       	push   $0x1000
8010235f:	6a 01                	push   $0x1
80102361:	53                   	push   %ebx
80102362:	e8 39 21 00 00       	call   801044a0 <memset>
80102367:	8b 15 74 26 11 80    	mov    0x80112674,%edx
8010236d:	83 c4 10             	add    $0x10,%esp
80102370:	85 d2                	test   %edx,%edx
80102372:	75 1c                	jne    80102390 <kfree+0x60>
80102374:	a1 78 26 11 80       	mov    0x80112678,%eax
80102379:	89 03                	mov    %eax,(%ebx)
8010237b:	a1 74 26 11 80       	mov    0x80112674,%eax
80102380:	89 1d 78 26 11 80    	mov    %ebx,0x80112678
80102386:	85 c0                	test   %eax,%eax
80102388:	75 1e                	jne    801023a8 <kfree+0x78>
8010238a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010238d:	c9                   	leave  
8010238e:	c3                   	ret    
8010238f:	90                   	nop
80102390:	83 ec 0c             	sub    $0xc,%esp
80102393:	68 40 26 11 80       	push   $0x80112640
80102398:	e8 93 1f 00 00       	call   80104330 <acquire>
8010239d:	83 c4 10             	add    $0x10,%esp
801023a0:	eb d2                	jmp    80102374 <kfree+0x44>
801023a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801023a8:	c7 45 08 40 26 11 80 	movl   $0x80112640,0x8(%ebp)
801023af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801023b2:	c9                   	leave  
801023b3:	e9 98 20 00 00       	jmp    80104450 <release>
801023b8:	83 ec 0c             	sub    $0xc,%esp
801023bb:	68 06 71 10 80       	push   $0x80107106
801023c0:	e8 db df ff ff       	call   801003a0 <panic>
801023c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801023cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801023d0 <freerange>:
801023d0:	55                   	push   %ebp
801023d1:	89 e5                	mov    %esp,%ebp
801023d3:	56                   	push   %esi
801023d4:	8b 45 08             	mov    0x8(%ebp),%eax
801023d7:	8b 75 0c             	mov    0xc(%ebp),%esi
801023da:	53                   	push   %ebx
801023db:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801023e1:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801023e7:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801023ed:	39 de                	cmp    %ebx,%esi
801023ef:	72 23                	jb     80102414 <freerange+0x44>
801023f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801023f8:	83 ec 0c             	sub    $0xc,%esp
801023fb:	8d 83 00 f0 ff ff    	lea    -0x1000(%ebx),%eax
80102401:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80102407:	50                   	push   %eax
80102408:	e8 23 ff ff ff       	call   80102330 <kfree>
8010240d:	83 c4 10             	add    $0x10,%esp
80102410:	39 f3                	cmp    %esi,%ebx
80102412:	76 e4                	jbe    801023f8 <freerange+0x28>
80102414:	8d 65 f8             	lea    -0x8(%ebp),%esp
80102417:	5b                   	pop    %ebx
80102418:	5e                   	pop    %esi
80102419:	5d                   	pop    %ebp
8010241a:	c3                   	ret    
8010241b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010241f:	90                   	nop

80102420 <kinit1>:
80102420:	55                   	push   %ebp
80102421:	89 e5                	mov    %esp,%ebp
80102423:	56                   	push   %esi
80102424:	53                   	push   %ebx
80102425:	8b 75 0c             	mov    0xc(%ebp),%esi
80102428:	83 ec 08             	sub    $0x8,%esp
8010242b:	68 0c 71 10 80       	push   $0x8010710c
80102430:	68 40 26 11 80       	push   $0x80112640
80102435:	e8 f6 1d 00 00       	call   80104230 <initlock>
8010243a:	8b 45 08             	mov    0x8(%ebp),%eax
8010243d:	83 c4 10             	add    $0x10,%esp
80102440:	c7 05 74 26 11 80 00 	movl   $0x0,0x80112674
80102447:	00 00 00 
8010244a:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
80102450:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
80102456:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010245c:	39 de                	cmp    %ebx,%esi
8010245e:	72 1c                	jb     8010247c <kinit1+0x5c>
80102460:	83 ec 0c             	sub    $0xc,%esp
80102463:	8d 83 00 f0 ff ff    	lea    -0x1000(%ebx),%eax
80102469:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010246f:	50                   	push   %eax
80102470:	e8 bb fe ff ff       	call   80102330 <kfree>
80102475:	83 c4 10             	add    $0x10,%esp
80102478:	39 de                	cmp    %ebx,%esi
8010247a:	73 e4                	jae    80102460 <kinit1+0x40>
8010247c:	8d 65 f8             	lea    -0x8(%ebp),%esp
8010247f:	5b                   	pop    %ebx
80102480:	5e                   	pop    %esi
80102481:	5d                   	pop    %ebp
80102482:	c3                   	ret    
80102483:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010248a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102490 <kinit2>:
80102490:	55                   	push   %ebp
80102491:	89 e5                	mov    %esp,%ebp
80102493:	56                   	push   %esi
80102494:	8b 45 08             	mov    0x8(%ebp),%eax
80102497:	8b 75 0c             	mov    0xc(%ebp),%esi
8010249a:	53                   	push   %ebx
8010249b:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801024a1:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801024a7:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801024ad:	39 de                	cmp    %ebx,%esi
801024af:	72 23                	jb     801024d4 <kinit2+0x44>
801024b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801024b8:	83 ec 0c             	sub    $0xc,%esp
801024bb:	8d 83 00 f0 ff ff    	lea    -0x1000(%ebx),%eax
801024c1:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801024c7:	50                   	push   %eax
801024c8:	e8 63 fe ff ff       	call   80102330 <kfree>
801024cd:	83 c4 10             	add    $0x10,%esp
801024d0:	39 de                	cmp    %ebx,%esi
801024d2:	73 e4                	jae    801024b8 <kinit2+0x28>
801024d4:	c7 05 74 26 11 80 01 	movl   $0x1,0x80112674
801024db:	00 00 00 
801024de:	8d 65 f8             	lea    -0x8(%ebp),%esp
801024e1:	5b                   	pop    %ebx
801024e2:	5e                   	pop    %esi
801024e3:	5d                   	pop    %ebp
801024e4:	c3                   	ret    
801024e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801024ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801024f0 <kalloc>:
801024f0:	a1 74 26 11 80       	mov    0x80112674,%eax
801024f5:	85 c0                	test   %eax,%eax
801024f7:	75 1f                	jne    80102518 <kalloc+0x28>
801024f9:	a1 78 26 11 80       	mov    0x80112678,%eax
801024fe:	85 c0                	test   %eax,%eax
80102500:	74 0e                	je     80102510 <kalloc+0x20>
80102502:	8b 10                	mov    (%eax),%edx
80102504:	89 15 78 26 11 80    	mov    %edx,0x80112678
8010250a:	c3                   	ret    
8010250b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010250f:	90                   	nop
80102510:	c3                   	ret    
80102511:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102518:	55                   	push   %ebp
80102519:	89 e5                	mov    %esp,%ebp
8010251b:	83 ec 24             	sub    $0x24,%esp
8010251e:	68 40 26 11 80       	push   $0x80112640
80102523:	e8 08 1e 00 00       	call   80104330 <acquire>
80102528:	a1 78 26 11 80       	mov    0x80112678,%eax
8010252d:	8b 15 74 26 11 80    	mov    0x80112674,%edx
80102533:	83 c4 10             	add    $0x10,%esp
80102536:	85 c0                	test   %eax,%eax
80102538:	74 08                	je     80102542 <kalloc+0x52>
8010253a:	8b 08                	mov    (%eax),%ecx
8010253c:	89 0d 78 26 11 80    	mov    %ecx,0x80112678
80102542:	85 d2                	test   %edx,%edx
80102544:	74 16                	je     8010255c <kalloc+0x6c>
80102546:	83 ec 0c             	sub    $0xc,%esp
80102549:	89 45 f4             	mov    %eax,-0xc(%ebp)
8010254c:	68 40 26 11 80       	push   $0x80112640
80102551:	e8 fa 1e 00 00       	call   80104450 <release>
80102556:	8b 45 f4             	mov    -0xc(%ebp),%eax
80102559:	83 c4 10             	add    $0x10,%esp
8010255c:	c9                   	leave  
8010255d:	c3                   	ret    
8010255e:	66 90                	xchg   %ax,%ax

80102560 <kbdgetc>:
80102560:	ba 64 00 00 00       	mov    $0x64,%edx
80102565:	ec                   	in     (%dx),%al
80102566:	a8 01                	test   $0x1,%al
80102568:	0f 84 c2 00 00 00    	je     80102630 <kbdgetc+0xd0>
8010256e:	55                   	push   %ebp
8010256f:	ba 60 00 00 00       	mov    $0x60,%edx
80102574:	89 e5                	mov    %esp,%ebp
80102576:	53                   	push   %ebx
80102577:	ec                   	in     (%dx),%al
80102578:	8b 1d b4 a5 10 80    	mov    0x8010a5b4,%ebx
8010257e:	0f b6 d0             	movzbl %al,%edx
80102581:	3c e0                	cmp    $0xe0,%al
80102583:	74 5b                	je     801025e0 <kbdgetc+0x80>
80102585:	89 d9                	mov    %ebx,%ecx
80102587:	83 e1 40             	and    $0x40,%ecx
8010258a:	84 c0                	test   %al,%al
8010258c:	78 62                	js     801025f0 <kbdgetc+0x90>
8010258e:	85 c9                	test   %ecx,%ecx
80102590:	74 09                	je     8010259b <kbdgetc+0x3b>
80102592:	83 c8 80             	or     $0xffffff80,%eax
80102595:	83 e3 bf             	and    $0xffffffbf,%ebx
80102598:	0f b6 d0             	movzbl %al,%edx
8010259b:	0f b6 8a 40 72 10 80 	movzbl -0x7fef8dc0(%edx),%ecx
801025a2:	0f b6 82 40 71 10 80 	movzbl -0x7fef8ec0(%edx),%eax
801025a9:	09 d9                	or     %ebx,%ecx
801025ab:	31 c1                	xor    %eax,%ecx
801025ad:	89 c8                	mov    %ecx,%eax
801025af:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
801025b5:	83 e0 03             	and    $0x3,%eax
801025b8:	83 e1 08             	and    $0x8,%ecx
801025bb:	8b 04 85 20 71 10 80 	mov    -0x7fef8ee0(,%eax,4),%eax
801025c2:	0f b6 04 10          	movzbl (%eax,%edx,1),%eax
801025c6:	74 0b                	je     801025d3 <kbdgetc+0x73>
801025c8:	8d 50 9f             	lea    -0x61(%eax),%edx
801025cb:	83 fa 19             	cmp    $0x19,%edx
801025ce:	77 48                	ja     80102618 <kbdgetc+0xb8>
801025d0:	83 e8 20             	sub    $0x20,%eax
801025d3:	5b                   	pop    %ebx
801025d4:	5d                   	pop    %ebp
801025d5:	c3                   	ret    
801025d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801025dd:	8d 76 00             	lea    0x0(%esi),%esi
801025e0:	83 cb 40             	or     $0x40,%ebx
801025e3:	31 c0                	xor    %eax,%eax
801025e5:	89 1d b4 a5 10 80    	mov    %ebx,0x8010a5b4
801025eb:	5b                   	pop    %ebx
801025ec:	5d                   	pop    %ebp
801025ed:	c3                   	ret    
801025ee:	66 90                	xchg   %ax,%ax
801025f0:	83 e0 7f             	and    $0x7f,%eax
801025f3:	85 c9                	test   %ecx,%ecx
801025f5:	0f 44 d0             	cmove  %eax,%edx
801025f8:	31 c0                	xor    %eax,%eax
801025fa:	0f b6 8a 40 72 10 80 	movzbl -0x7fef8dc0(%edx),%ecx
80102601:	83 c9 40             	or     $0x40,%ecx
80102604:	0f b6 c9             	movzbl %cl,%ecx
80102607:	f7 d1                	not    %ecx
80102609:	21 d9                	and    %ebx,%ecx
8010260b:	5b                   	pop    %ebx
8010260c:	5d                   	pop    %ebp
8010260d:	89 0d b4 a5 10 80    	mov    %ecx,0x8010a5b4
80102613:	c3                   	ret    
80102614:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102618:	8d 48 bf             	lea    -0x41(%eax),%ecx
8010261b:	8d 50 20             	lea    0x20(%eax),%edx
8010261e:	5b                   	pop    %ebx
8010261f:	5d                   	pop    %ebp
80102620:	83 f9 1a             	cmp    $0x1a,%ecx
80102623:	0f 42 c2             	cmovb  %edx,%eax
80102626:	c3                   	ret    
80102627:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010262e:	66 90                	xchg   %ax,%ax
80102630:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80102635:	c3                   	ret    
80102636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010263d:	8d 76 00             	lea    0x0(%esi),%esi

80102640 <kbdintr>:
80102640:	55                   	push   %ebp
80102641:	89 e5                	mov    %esp,%ebp
80102643:	83 ec 14             	sub    $0x14,%esp
80102646:	68 60 25 10 80       	push   $0x80102560
8010264b:	e8 d0 e1 ff ff       	call   80100820 <consoleintr>
80102650:	83 c4 10             	add    $0x10,%esp
80102653:	c9                   	leave  
80102654:	c3                   	ret    
80102655:	66 90                	xchg   %ax,%ax
80102657:	66 90                	xchg   %ax,%ax
80102659:	66 90                	xchg   %ax,%ax
8010265b:	66 90                	xchg   %ax,%ax
8010265d:	66 90                	xchg   %ax,%ax
8010265f:	90                   	nop

80102660 <lapicinit>:
80102660:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102665:	85 c0                	test   %eax,%eax
80102667:	0f 84 cb 00 00 00    	je     80102738 <lapicinit+0xd8>
8010266d:	c7 80 f0 00 00 00 3f 	movl   $0x13f,0xf0(%eax)
80102674:	01 00 00 
80102677:	8b 50 20             	mov    0x20(%eax),%edx
8010267a:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%eax)
80102681:	00 00 00 
80102684:	8b 50 20             	mov    0x20(%eax),%edx
80102687:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%eax)
8010268e:	00 02 00 
80102691:	8b 50 20             	mov    0x20(%eax),%edx
80102694:	c7 80 80 03 00 00 80 	movl   $0x989680,0x380(%eax)
8010269b:	96 98 00 
8010269e:	8b 50 20             	mov    0x20(%eax),%edx
801026a1:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%eax)
801026a8:	00 01 00 
801026ab:	8b 50 20             	mov    0x20(%eax),%edx
801026ae:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%eax)
801026b5:	00 01 00 
801026b8:	8b 50 20             	mov    0x20(%eax),%edx
801026bb:	8b 50 30             	mov    0x30(%eax),%edx
801026be:	c1 ea 10             	shr    $0x10,%edx
801026c1:	81 e2 fc 00 00 00    	and    $0xfc,%edx
801026c7:	75 77                	jne    80102740 <lapicinit+0xe0>
801026c9:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%eax)
801026d0:	00 00 00 
801026d3:	8b 50 20             	mov    0x20(%eax),%edx
801026d6:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
801026dd:	00 00 00 
801026e0:	8b 50 20             	mov    0x20(%eax),%edx
801026e3:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
801026ea:	00 00 00 
801026ed:	8b 50 20             	mov    0x20(%eax),%edx
801026f0:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
801026f7:	00 00 00 
801026fa:	8b 50 20             	mov    0x20(%eax),%edx
801026fd:	c7 80 10 03 00 00 00 	movl   $0x0,0x310(%eax)
80102704:	00 00 00 
80102707:	8b 50 20             	mov    0x20(%eax),%edx
8010270a:	c7 80 00 03 00 00 00 	movl   $0x88500,0x300(%eax)
80102711:	85 08 00 
80102714:	8b 50 20             	mov    0x20(%eax),%edx
80102717:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010271e:	66 90                	xchg   %ax,%ax
80102720:	8b 90 00 03 00 00    	mov    0x300(%eax),%edx
80102726:	80 e6 10             	and    $0x10,%dh
80102729:	75 f5                	jne    80102720 <lapicinit+0xc0>
8010272b:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
80102732:	00 00 00 
80102735:	8b 40 20             	mov    0x20(%eax),%eax
80102738:	c3                   	ret    
80102739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102740:	c7 80 40 03 00 00 00 	movl   $0x10000,0x340(%eax)
80102747:	00 01 00 
8010274a:	8b 50 20             	mov    0x20(%eax),%edx
8010274d:	e9 77 ff ff ff       	jmp    801026c9 <lapicinit+0x69>
80102752:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102760 <lapicid>:
80102760:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102765:	85 c0                	test   %eax,%eax
80102767:	74 07                	je     80102770 <lapicid+0x10>
80102769:	8b 40 20             	mov    0x20(%eax),%eax
8010276c:	c1 e8 18             	shr    $0x18,%eax
8010276f:	c3                   	ret    
80102770:	31 c0                	xor    %eax,%eax
80102772:	c3                   	ret    
80102773:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010277a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102780 <lapiceoi>:
80102780:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102785:	85 c0                	test   %eax,%eax
80102787:	74 0d                	je     80102796 <lapiceoi+0x16>
80102789:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
80102790:	00 00 00 
80102793:	8b 40 20             	mov    0x20(%eax),%eax
80102796:	c3                   	ret    
80102797:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010279e:	66 90                	xchg   %ax,%ax

801027a0 <microdelay>:
801027a0:	c3                   	ret    
801027a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801027a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801027af:	90                   	nop

801027b0 <lapicstartap>:
801027b0:	55                   	push   %ebp
801027b1:	b8 0f 00 00 00       	mov    $0xf,%eax
801027b6:	ba 70 00 00 00       	mov    $0x70,%edx
801027bb:	89 e5                	mov    %esp,%ebp
801027bd:	53                   	push   %ebx
801027be:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801027c1:	8b 5d 08             	mov    0x8(%ebp),%ebx
801027c4:	ee                   	out    %al,(%dx)
801027c5:	b8 0a 00 00 00       	mov    $0xa,%eax
801027ca:	ba 71 00 00 00       	mov    $0x71,%edx
801027cf:	ee                   	out    %al,(%dx)
801027d0:	31 c0                	xor    %eax,%eax
801027d2:	c1 e3 18             	shl    $0x18,%ebx
801027d5:	66 a3 67 04 00 80    	mov    %ax,0x80000467
801027db:	89 c8                	mov    %ecx,%eax
801027dd:	c1 e9 0c             	shr    $0xc,%ecx
801027e0:	89 da                	mov    %ebx,%edx
801027e2:	c1 e8 04             	shr    $0x4,%eax
801027e5:	80 cd 06             	or     $0x6,%ch
801027e8:	66 a3 69 04 00 80    	mov    %ax,0x80000469
801027ee:	a1 7c 26 11 80       	mov    0x8011267c,%eax
801027f3:	89 98 10 03 00 00    	mov    %ebx,0x310(%eax)
801027f9:	8b 58 20             	mov    0x20(%eax),%ebx
801027fc:	c7 80 00 03 00 00 00 	movl   $0xc500,0x300(%eax)
80102803:	c5 00 00 
80102806:	8b 58 20             	mov    0x20(%eax),%ebx
80102809:	c7 80 00 03 00 00 00 	movl   $0x8500,0x300(%eax)
80102810:	85 00 00 
80102813:	8b 58 20             	mov    0x20(%eax),%ebx
80102816:	89 90 10 03 00 00    	mov    %edx,0x310(%eax)
8010281c:	8b 58 20             	mov    0x20(%eax),%ebx
8010281f:	89 88 00 03 00 00    	mov    %ecx,0x300(%eax)
80102825:	8b 58 20             	mov    0x20(%eax),%ebx
80102828:	89 90 10 03 00 00    	mov    %edx,0x310(%eax)
8010282e:	8b 50 20             	mov    0x20(%eax),%edx
80102831:	89 88 00 03 00 00    	mov    %ecx,0x300(%eax)
80102837:	5b                   	pop    %ebx
80102838:	8b 40 20             	mov    0x20(%eax),%eax
8010283b:	5d                   	pop    %ebp
8010283c:	c3                   	ret    
8010283d:	8d 76 00             	lea    0x0(%esi),%esi

80102840 <cmostime>:
80102840:	55                   	push   %ebp
80102841:	b8 0b 00 00 00       	mov    $0xb,%eax
80102846:	ba 70 00 00 00       	mov    $0x70,%edx
8010284b:	89 e5                	mov    %esp,%ebp
8010284d:	57                   	push   %edi
8010284e:	56                   	push   %esi
8010284f:	53                   	push   %ebx
80102850:	83 ec 4c             	sub    $0x4c,%esp
80102853:	ee                   	out    %al,(%dx)
80102854:	ba 71 00 00 00       	mov    $0x71,%edx
80102859:	ec                   	in     (%dx),%al
8010285a:	83 e0 04             	and    $0x4,%eax
8010285d:	bb 70 00 00 00       	mov    $0x70,%ebx
80102862:	88 45 b3             	mov    %al,-0x4d(%ebp)
80102865:	8d 76 00             	lea    0x0(%esi),%esi
80102868:	31 c0                	xor    %eax,%eax
8010286a:	89 da                	mov    %ebx,%edx
8010286c:	ee                   	out    %al,(%dx)
8010286d:	b9 71 00 00 00       	mov    $0x71,%ecx
80102872:	89 ca                	mov    %ecx,%edx
80102874:	ec                   	in     (%dx),%al
80102875:	88 45 b7             	mov    %al,-0x49(%ebp)
80102878:	89 da                	mov    %ebx,%edx
8010287a:	b8 02 00 00 00       	mov    $0x2,%eax
8010287f:	ee                   	out    %al,(%dx)
80102880:	89 ca                	mov    %ecx,%edx
80102882:	ec                   	in     (%dx),%al
80102883:	88 45 b6             	mov    %al,-0x4a(%ebp)
80102886:	89 da                	mov    %ebx,%edx
80102888:	b8 04 00 00 00       	mov    $0x4,%eax
8010288d:	ee                   	out    %al,(%dx)
8010288e:	89 ca                	mov    %ecx,%edx
80102890:	ec                   	in     (%dx),%al
80102891:	88 45 b5             	mov    %al,-0x4b(%ebp)
80102894:	89 da                	mov    %ebx,%edx
80102896:	b8 07 00 00 00       	mov    $0x7,%eax
8010289b:	ee                   	out    %al,(%dx)
8010289c:	89 ca                	mov    %ecx,%edx
8010289e:	ec                   	in     (%dx),%al
8010289f:	88 45 b4             	mov    %al,-0x4c(%ebp)
801028a2:	89 da                	mov    %ebx,%edx
801028a4:	b8 08 00 00 00       	mov    $0x8,%eax
801028a9:	ee                   	out    %al,(%dx)
801028aa:	89 ca                	mov    %ecx,%edx
801028ac:	ec                   	in     (%dx),%al
801028ad:	89 c7                	mov    %eax,%edi
801028af:	89 da                	mov    %ebx,%edx
801028b1:	b8 09 00 00 00       	mov    $0x9,%eax
801028b6:	ee                   	out    %al,(%dx)
801028b7:	89 ca                	mov    %ecx,%edx
801028b9:	ec                   	in     (%dx),%al
801028ba:	89 c6                	mov    %eax,%esi
801028bc:	89 da                	mov    %ebx,%edx
801028be:	b8 0a 00 00 00       	mov    $0xa,%eax
801028c3:	ee                   	out    %al,(%dx)
801028c4:	89 ca                	mov    %ecx,%edx
801028c6:	ec                   	in     (%dx),%al
801028c7:	84 c0                	test   %al,%al
801028c9:	78 9d                	js     80102868 <cmostime+0x28>
801028cb:	0f b6 45 b7          	movzbl -0x49(%ebp),%eax
801028cf:	89 fa                	mov    %edi,%edx
801028d1:	0f b6 fa             	movzbl %dl,%edi
801028d4:	89 f2                	mov    %esi,%edx
801028d6:	89 45 b8             	mov    %eax,-0x48(%ebp)
801028d9:	0f b6 45 b6          	movzbl -0x4a(%ebp),%eax
801028dd:	0f b6 f2             	movzbl %dl,%esi
801028e0:	89 da                	mov    %ebx,%edx
801028e2:	89 7d c8             	mov    %edi,-0x38(%ebp)
801028e5:	89 45 bc             	mov    %eax,-0x44(%ebp)
801028e8:	0f b6 45 b5          	movzbl -0x4b(%ebp),%eax
801028ec:	89 75 cc             	mov    %esi,-0x34(%ebp)
801028ef:	89 45 c0             	mov    %eax,-0x40(%ebp)
801028f2:	0f b6 45 b4          	movzbl -0x4c(%ebp),%eax
801028f6:	89 45 c4             	mov    %eax,-0x3c(%ebp)
801028f9:	31 c0                	xor    %eax,%eax
801028fb:	ee                   	out    %al,(%dx)
801028fc:	89 ca                	mov    %ecx,%edx
801028fe:	ec                   	in     (%dx),%al
801028ff:	0f b6 c0             	movzbl %al,%eax
80102902:	89 da                	mov    %ebx,%edx
80102904:	89 45 d0             	mov    %eax,-0x30(%ebp)
80102907:	b8 02 00 00 00       	mov    $0x2,%eax
8010290c:	ee                   	out    %al,(%dx)
8010290d:	89 ca                	mov    %ecx,%edx
8010290f:	ec                   	in     (%dx),%al
80102910:	0f b6 c0             	movzbl %al,%eax
80102913:	89 da                	mov    %ebx,%edx
80102915:	89 45 d4             	mov    %eax,-0x2c(%ebp)
80102918:	b8 04 00 00 00       	mov    $0x4,%eax
8010291d:	ee                   	out    %al,(%dx)
8010291e:	89 ca                	mov    %ecx,%edx
80102920:	ec                   	in     (%dx),%al
80102921:	0f b6 c0             	movzbl %al,%eax
80102924:	89 da                	mov    %ebx,%edx
80102926:	89 45 d8             	mov    %eax,-0x28(%ebp)
80102929:	b8 07 00 00 00       	mov    $0x7,%eax
8010292e:	ee                   	out    %al,(%dx)
8010292f:	89 ca                	mov    %ecx,%edx
80102931:	ec                   	in     (%dx),%al
80102932:	0f b6 c0             	movzbl %al,%eax
80102935:	89 da                	mov    %ebx,%edx
80102937:	89 45 dc             	mov    %eax,-0x24(%ebp)
8010293a:	b8 08 00 00 00       	mov    $0x8,%eax
8010293f:	ee                   	out    %al,(%dx)
80102940:	89 ca                	mov    %ecx,%edx
80102942:	ec                   	in     (%dx),%al
80102943:	0f b6 c0             	movzbl %al,%eax
80102946:	89 da                	mov    %ebx,%edx
80102948:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010294b:	b8 09 00 00 00       	mov    $0x9,%eax
80102950:	ee                   	out    %al,(%dx)
80102951:	89 ca                	mov    %ecx,%edx
80102953:	ec                   	in     (%dx),%al
80102954:	0f b6 c0             	movzbl %al,%eax
80102957:	83 ec 04             	sub    $0x4,%esp
8010295a:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010295d:	8d 45 d0             	lea    -0x30(%ebp),%eax
80102960:	6a 18                	push   $0x18
80102962:	50                   	push   %eax
80102963:	8d 45 b8             	lea    -0x48(%ebp),%eax
80102966:	50                   	push   %eax
80102967:	e8 84 1b 00 00       	call   801044f0 <memcmp>
8010296c:	83 c4 10             	add    $0x10,%esp
8010296f:	85 c0                	test   %eax,%eax
80102971:	0f 85 f1 fe ff ff    	jne    80102868 <cmostime+0x28>
80102977:	80 7d b3 00          	cmpb   $0x0,-0x4d(%ebp)
8010297b:	75 78                	jne    801029f5 <cmostime+0x1b5>
8010297d:	8b 45 b8             	mov    -0x48(%ebp),%eax
80102980:	89 c2                	mov    %eax,%edx
80102982:	83 e0 0f             	and    $0xf,%eax
80102985:	c1 ea 04             	shr    $0x4,%edx
80102988:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010298b:	8d 04 50             	lea    (%eax,%edx,2),%eax
8010298e:	89 45 b8             	mov    %eax,-0x48(%ebp)
80102991:	8b 45 bc             	mov    -0x44(%ebp),%eax
80102994:	89 c2                	mov    %eax,%edx
80102996:	83 e0 0f             	and    $0xf,%eax
80102999:	c1 ea 04             	shr    $0x4,%edx
8010299c:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010299f:	8d 04 50             	lea    (%eax,%edx,2),%eax
801029a2:	89 45 bc             	mov    %eax,-0x44(%ebp)
801029a5:	8b 45 c0             	mov    -0x40(%ebp),%eax
801029a8:	89 c2                	mov    %eax,%edx
801029aa:	83 e0 0f             	and    $0xf,%eax
801029ad:	c1 ea 04             	shr    $0x4,%edx
801029b0:	8d 14 92             	lea    (%edx,%edx,4),%edx
801029b3:	8d 04 50             	lea    (%eax,%edx,2),%eax
801029b6:	89 45 c0             	mov    %eax,-0x40(%ebp)
801029b9:	8b 45 c4             	mov    -0x3c(%ebp),%eax
801029bc:	89 c2                	mov    %eax,%edx
801029be:	83 e0 0f             	and    $0xf,%eax
801029c1:	c1 ea 04             	shr    $0x4,%edx
801029c4:	8d 14 92             	lea    (%edx,%edx,4),%edx
801029c7:	8d 04 50             	lea    (%eax,%edx,2),%eax
801029ca:	89 45 c4             	mov    %eax,-0x3c(%ebp)
801029cd:	8b 45 c8             	mov    -0x38(%ebp),%eax
801029d0:	89 c2                	mov    %eax,%edx
801029d2:	83 e0 0f             	and    $0xf,%eax
801029d5:	c1 ea 04             	shr    $0x4,%edx
801029d8:	8d 14 92             	lea    (%edx,%edx,4),%edx
801029db:	8d 04 50             	lea    (%eax,%edx,2),%eax
801029de:	89 45 c8             	mov    %eax,-0x38(%ebp)
801029e1:	8b 45 cc             	mov    -0x34(%ebp),%eax
801029e4:	89 c2                	mov    %eax,%edx
801029e6:	83 e0 0f             	and    $0xf,%eax
801029e9:	c1 ea 04             	shr    $0x4,%edx
801029ec:	8d 14 92             	lea    (%edx,%edx,4),%edx
801029ef:	8d 04 50             	lea    (%eax,%edx,2),%eax
801029f2:	89 45 cc             	mov    %eax,-0x34(%ebp)
801029f5:	8b 75 08             	mov    0x8(%ebp),%esi
801029f8:	8b 45 b8             	mov    -0x48(%ebp),%eax
801029fb:	89 06                	mov    %eax,(%esi)
801029fd:	8b 45 bc             	mov    -0x44(%ebp),%eax
80102a00:	89 46 04             	mov    %eax,0x4(%esi)
80102a03:	8b 45 c0             	mov    -0x40(%ebp),%eax
80102a06:	89 46 08             	mov    %eax,0x8(%esi)
80102a09:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80102a0c:	89 46 0c             	mov    %eax,0xc(%esi)
80102a0f:	8b 45 c8             	mov    -0x38(%ebp),%eax
80102a12:	89 46 10             	mov    %eax,0x10(%esi)
80102a15:	8b 45 cc             	mov    -0x34(%ebp),%eax
80102a18:	89 46 14             	mov    %eax,0x14(%esi)
80102a1b:	81 46 14 d0 07 00 00 	addl   $0x7d0,0x14(%esi)
80102a22:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102a25:	5b                   	pop    %ebx
80102a26:	5e                   	pop    %esi
80102a27:	5f                   	pop    %edi
80102a28:	5d                   	pop    %ebp
80102a29:	c3                   	ret    
80102a2a:	66 90                	xchg   %ax,%ax
80102a2c:	66 90                	xchg   %ax,%ax
80102a2e:	66 90                	xchg   %ax,%ax

80102a30 <install_trans>:
80102a30:	8b 0d c8 26 11 80    	mov    0x801126c8,%ecx
80102a36:	85 c9                	test   %ecx,%ecx
80102a38:	0f 8e 8a 00 00 00    	jle    80102ac8 <install_trans+0x98>
80102a3e:	55                   	push   %ebp
80102a3f:	89 e5                	mov    %esp,%ebp
80102a41:	57                   	push   %edi
80102a42:	31 ff                	xor    %edi,%edi
80102a44:	56                   	push   %esi
80102a45:	53                   	push   %ebx
80102a46:	83 ec 0c             	sub    $0xc,%esp
80102a49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a50:	a1 b4 26 11 80       	mov    0x801126b4,%eax
80102a55:	83 ec 08             	sub    $0x8,%esp
80102a58:	01 f8                	add    %edi,%eax
80102a5a:	83 c0 01             	add    $0x1,%eax
80102a5d:	50                   	push   %eax
80102a5e:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102a64:	e8 67 d6 ff ff       	call   801000d0 <bread>
80102a69:	89 c6                	mov    %eax,%esi
80102a6b:	58                   	pop    %eax
80102a6c:	5a                   	pop    %edx
80102a6d:	ff 34 bd cc 26 11 80 	pushl  -0x7feed934(,%edi,4)
80102a74:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102a7a:	83 c7 01             	add    $0x1,%edi
80102a7d:	e8 4e d6 ff ff       	call   801000d0 <bread>
80102a82:	83 c4 0c             	add    $0xc,%esp
80102a85:	89 c3                	mov    %eax,%ebx
80102a87:	8d 46 5c             	lea    0x5c(%esi),%eax
80102a8a:	68 00 02 00 00       	push   $0x200
80102a8f:	50                   	push   %eax
80102a90:	8d 43 5c             	lea    0x5c(%ebx),%eax
80102a93:	50                   	push   %eax
80102a94:	e8 a7 1a 00 00       	call   80104540 <memmove>
80102a99:	89 1c 24             	mov    %ebx,(%esp)
80102a9c:	e8 0f d7 ff ff       	call   801001b0 <bwrite>
80102aa1:	89 34 24             	mov    %esi,(%esp)
80102aa4:	e8 47 d7 ff ff       	call   801001f0 <brelse>
80102aa9:	89 1c 24             	mov    %ebx,(%esp)
80102aac:	e8 3f d7 ff ff       	call   801001f0 <brelse>
80102ab1:	83 c4 10             	add    $0x10,%esp
80102ab4:	39 3d c8 26 11 80    	cmp    %edi,0x801126c8
80102aba:	7f 94                	jg     80102a50 <install_trans+0x20>
80102abc:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102abf:	5b                   	pop    %ebx
80102ac0:	5e                   	pop    %esi
80102ac1:	5f                   	pop    %edi
80102ac2:	5d                   	pop    %ebp
80102ac3:	c3                   	ret    
80102ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102ac8:	c3                   	ret    
80102ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102ad0 <write_head>:
80102ad0:	55                   	push   %ebp
80102ad1:	89 e5                	mov    %esp,%ebp
80102ad3:	53                   	push   %ebx
80102ad4:	83 ec 0c             	sub    $0xc,%esp
80102ad7:	ff 35 b4 26 11 80    	pushl  0x801126b4
80102add:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102ae3:	e8 e8 d5 ff ff       	call   801000d0 <bread>
80102ae8:	83 c4 10             	add    $0x10,%esp
80102aeb:	89 c3                	mov    %eax,%ebx
80102aed:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102af2:	89 43 5c             	mov    %eax,0x5c(%ebx)
80102af5:	85 c0                	test   %eax,%eax
80102af7:	7e 19                	jle    80102b12 <write_head+0x42>
80102af9:	31 d2                	xor    %edx,%edx
80102afb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102aff:	90                   	nop
80102b00:	8b 0c 95 cc 26 11 80 	mov    -0x7feed934(,%edx,4),%ecx
80102b07:	89 4c 93 60          	mov    %ecx,0x60(%ebx,%edx,4)
80102b0b:	83 c2 01             	add    $0x1,%edx
80102b0e:	39 d0                	cmp    %edx,%eax
80102b10:	75 ee                	jne    80102b00 <write_head+0x30>
80102b12:	83 ec 0c             	sub    $0xc,%esp
80102b15:	53                   	push   %ebx
80102b16:	e8 95 d6 ff ff       	call   801001b0 <bwrite>
80102b1b:	89 1c 24             	mov    %ebx,(%esp)
80102b1e:	e8 cd d6 ff ff       	call   801001f0 <brelse>
80102b23:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102b26:	83 c4 10             	add    $0x10,%esp
80102b29:	c9                   	leave  
80102b2a:	c3                   	ret    
80102b2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102b2f:	90                   	nop

80102b30 <initlog>:
80102b30:	55                   	push   %ebp
80102b31:	89 e5                	mov    %esp,%ebp
80102b33:	53                   	push   %ebx
80102b34:	83 ec 2c             	sub    $0x2c,%esp
80102b37:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102b3a:	68 40 73 10 80       	push   $0x80107340
80102b3f:	68 80 26 11 80       	push   $0x80112680
80102b44:	e8 e7 16 00 00       	call   80104230 <initlock>
80102b49:	58                   	pop    %eax
80102b4a:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102b4d:	5a                   	pop    %edx
80102b4e:	50                   	push   %eax
80102b4f:	53                   	push   %ebx
80102b50:	e8 8b e8 ff ff       	call   801013e0 <readsb>
80102b55:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102b58:	59                   	pop    %ecx
80102b59:	89 1d c4 26 11 80    	mov    %ebx,0x801126c4
80102b5f:	8b 55 e8             	mov    -0x18(%ebp),%edx
80102b62:	a3 b4 26 11 80       	mov    %eax,0x801126b4
80102b67:	89 15 b8 26 11 80    	mov    %edx,0x801126b8
80102b6d:	5a                   	pop    %edx
80102b6e:	50                   	push   %eax
80102b6f:	53                   	push   %ebx
80102b70:	e8 5b d5 ff ff       	call   801000d0 <bread>
80102b75:	83 c4 10             	add    $0x10,%esp
80102b78:	8b 48 5c             	mov    0x5c(%eax),%ecx
80102b7b:	89 0d c8 26 11 80    	mov    %ecx,0x801126c8
80102b81:	85 c9                	test   %ecx,%ecx
80102b83:	7e 1d                	jle    80102ba2 <initlog+0x72>
80102b85:	31 d2                	xor    %edx,%edx
80102b87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102b8e:	66 90                	xchg   %ax,%ax
80102b90:	8b 5c 90 60          	mov    0x60(%eax,%edx,4),%ebx
80102b94:	89 1c 95 cc 26 11 80 	mov    %ebx,-0x7feed934(,%edx,4)
80102b9b:	83 c2 01             	add    $0x1,%edx
80102b9e:	39 d1                	cmp    %edx,%ecx
80102ba0:	75 ee                	jne    80102b90 <initlog+0x60>
80102ba2:	83 ec 0c             	sub    $0xc,%esp
80102ba5:	50                   	push   %eax
80102ba6:	e8 45 d6 ff ff       	call   801001f0 <brelse>
80102bab:	e8 80 fe ff ff       	call   80102a30 <install_trans>
80102bb0:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102bb7:	00 00 00 
80102bba:	e8 11 ff ff ff       	call   80102ad0 <write_head>
80102bbf:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102bc2:	83 c4 10             	add    $0x10,%esp
80102bc5:	c9                   	leave  
80102bc6:	c3                   	ret    
80102bc7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102bce:	66 90                	xchg   %ax,%ax

80102bd0 <begin_op>:
80102bd0:	55                   	push   %ebp
80102bd1:	89 e5                	mov    %esp,%ebp
80102bd3:	83 ec 14             	sub    $0x14,%esp
80102bd6:	68 80 26 11 80       	push   $0x80112680
80102bdb:	e8 50 17 00 00       	call   80104330 <acquire>
80102be0:	83 c4 10             	add    $0x10,%esp
80102be3:	eb 18                	jmp    80102bfd <begin_op+0x2d>
80102be5:	8d 76 00             	lea    0x0(%esi),%esi
80102be8:	83 ec 08             	sub    $0x8,%esp
80102beb:	68 80 26 11 80       	push   $0x80112680
80102bf0:	68 80 26 11 80       	push   $0x80112680
80102bf5:	e8 b6 11 00 00       	call   80103db0 <sleep>
80102bfa:	83 c4 10             	add    $0x10,%esp
80102bfd:	a1 c0 26 11 80       	mov    0x801126c0,%eax
80102c02:	85 c0                	test   %eax,%eax
80102c04:	75 e2                	jne    80102be8 <begin_op+0x18>
80102c06:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102c0b:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102c11:	83 c0 01             	add    $0x1,%eax
80102c14:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
80102c17:	8d 14 4a             	lea    (%edx,%ecx,2),%edx
80102c1a:	83 fa 1e             	cmp    $0x1e,%edx
80102c1d:	7f c9                	jg     80102be8 <begin_op+0x18>
80102c1f:	83 ec 0c             	sub    $0xc,%esp
80102c22:	a3 bc 26 11 80       	mov    %eax,0x801126bc
80102c27:	68 80 26 11 80       	push   $0x80112680
80102c2c:	e8 1f 18 00 00       	call   80104450 <release>
80102c31:	83 c4 10             	add    $0x10,%esp
80102c34:	c9                   	leave  
80102c35:	c3                   	ret    
80102c36:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102c3d:	8d 76 00             	lea    0x0(%esi),%esi

80102c40 <end_op>:
80102c40:	55                   	push   %ebp
80102c41:	89 e5                	mov    %esp,%ebp
80102c43:	57                   	push   %edi
80102c44:	56                   	push   %esi
80102c45:	53                   	push   %ebx
80102c46:	83 ec 18             	sub    $0x18,%esp
80102c49:	68 80 26 11 80       	push   $0x80112680
80102c4e:	e8 dd 16 00 00       	call   80104330 <acquire>
80102c53:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102c58:	8b 35 c0 26 11 80    	mov    0x801126c0,%esi
80102c5e:	83 c4 10             	add    $0x10,%esp
80102c61:	8d 58 ff             	lea    -0x1(%eax),%ebx
80102c64:	89 1d bc 26 11 80    	mov    %ebx,0x801126bc
80102c6a:	85 f6                	test   %esi,%esi
80102c6c:	0f 85 22 01 00 00    	jne    80102d94 <end_op+0x154>
80102c72:	85 db                	test   %ebx,%ebx
80102c74:	0f 85 f6 00 00 00    	jne    80102d70 <end_op+0x130>
80102c7a:	c7 05 c0 26 11 80 01 	movl   $0x1,0x801126c0
80102c81:	00 00 00 
80102c84:	83 ec 0c             	sub    $0xc,%esp
80102c87:	68 80 26 11 80       	push   $0x80112680
80102c8c:	e8 bf 17 00 00       	call   80104450 <release>
80102c91:	8b 0d c8 26 11 80    	mov    0x801126c8,%ecx
80102c97:	83 c4 10             	add    $0x10,%esp
80102c9a:	85 c9                	test   %ecx,%ecx
80102c9c:	7f 42                	jg     80102ce0 <end_op+0xa0>
80102c9e:	83 ec 0c             	sub    $0xc,%esp
80102ca1:	68 80 26 11 80       	push   $0x80112680
80102ca6:	e8 85 16 00 00       	call   80104330 <acquire>
80102cab:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102cb2:	c7 05 c0 26 11 80 00 	movl   $0x0,0x801126c0
80102cb9:	00 00 00 
80102cbc:	e8 9f 12 00 00       	call   80103f60 <wakeup>
80102cc1:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102cc8:	e8 83 17 00 00       	call   80104450 <release>
80102ccd:	83 c4 10             	add    $0x10,%esp
80102cd0:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102cd3:	5b                   	pop    %ebx
80102cd4:	5e                   	pop    %esi
80102cd5:	5f                   	pop    %edi
80102cd6:	5d                   	pop    %ebp
80102cd7:	c3                   	ret    
80102cd8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102cdf:	90                   	nop
80102ce0:	a1 b4 26 11 80       	mov    0x801126b4,%eax
80102ce5:	83 ec 08             	sub    $0x8,%esp
80102ce8:	01 d8                	add    %ebx,%eax
80102cea:	83 c0 01             	add    $0x1,%eax
80102ced:	50                   	push   %eax
80102cee:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102cf4:	e8 d7 d3 ff ff       	call   801000d0 <bread>
80102cf9:	89 c6                	mov    %eax,%esi
80102cfb:	58                   	pop    %eax
80102cfc:	5a                   	pop    %edx
80102cfd:	ff 34 9d cc 26 11 80 	pushl  -0x7feed934(,%ebx,4)
80102d04:	ff 35 c4 26 11 80    	pushl  0x801126c4
80102d0a:	83 c3 01             	add    $0x1,%ebx
80102d0d:	e8 be d3 ff ff       	call   801000d0 <bread>
80102d12:	83 c4 0c             	add    $0xc,%esp
80102d15:	89 c7                	mov    %eax,%edi
80102d17:	8d 40 5c             	lea    0x5c(%eax),%eax
80102d1a:	68 00 02 00 00       	push   $0x200
80102d1f:	50                   	push   %eax
80102d20:	8d 46 5c             	lea    0x5c(%esi),%eax
80102d23:	50                   	push   %eax
80102d24:	e8 17 18 00 00       	call   80104540 <memmove>
80102d29:	89 34 24             	mov    %esi,(%esp)
80102d2c:	e8 7f d4 ff ff       	call   801001b0 <bwrite>
80102d31:	89 3c 24             	mov    %edi,(%esp)
80102d34:	e8 b7 d4 ff ff       	call   801001f0 <brelse>
80102d39:	89 34 24             	mov    %esi,(%esp)
80102d3c:	e8 af d4 ff ff       	call   801001f0 <brelse>
80102d41:	83 c4 10             	add    $0x10,%esp
80102d44:	3b 1d c8 26 11 80    	cmp    0x801126c8,%ebx
80102d4a:	7c 94                	jl     80102ce0 <end_op+0xa0>
80102d4c:	e8 7f fd ff ff       	call   80102ad0 <write_head>
80102d51:	e8 da fc ff ff       	call   80102a30 <install_trans>
80102d56:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102d5d:	00 00 00 
80102d60:	e8 6b fd ff ff       	call   80102ad0 <write_head>
80102d65:	e9 34 ff ff ff       	jmp    80102c9e <end_op+0x5e>
80102d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102d70:	83 ec 0c             	sub    $0xc,%esp
80102d73:	68 80 26 11 80       	push   $0x80112680
80102d78:	e8 e3 11 00 00       	call   80103f60 <wakeup>
80102d7d:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102d84:	e8 c7 16 00 00       	call   80104450 <release>
80102d89:	83 c4 10             	add    $0x10,%esp
80102d8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80102d8f:	5b                   	pop    %ebx
80102d90:	5e                   	pop    %esi
80102d91:	5f                   	pop    %edi
80102d92:	5d                   	pop    %ebp
80102d93:	c3                   	ret    
80102d94:	83 ec 0c             	sub    $0xc,%esp
80102d97:	68 44 73 10 80       	push   $0x80107344
80102d9c:	e8 ff d5 ff ff       	call   801003a0 <panic>
80102da1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102da8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102daf:	90                   	nop

80102db0 <log_write>:
80102db0:	55                   	push   %ebp
80102db1:	89 e5                	mov    %esp,%ebp
80102db3:	53                   	push   %ebx
80102db4:	83 ec 04             	sub    $0x4,%esp
80102db7:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102dbd:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102dc0:	83 fa 1d             	cmp    $0x1d,%edx
80102dc3:	0f 8f 85 00 00 00    	jg     80102e4e <log_write+0x9e>
80102dc9:	a1 b8 26 11 80       	mov    0x801126b8,%eax
80102dce:	83 e8 01             	sub    $0x1,%eax
80102dd1:	39 c2                	cmp    %eax,%edx
80102dd3:	7d 79                	jge    80102e4e <log_write+0x9e>
80102dd5:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102dda:	85 c0                	test   %eax,%eax
80102ddc:	7e 7d                	jle    80102e5b <log_write+0xab>
80102dde:	83 ec 0c             	sub    $0xc,%esp
80102de1:	68 80 26 11 80       	push   $0x80112680
80102de6:	e8 45 15 00 00       	call   80104330 <acquire>
80102deb:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102df1:	83 c4 10             	add    $0x10,%esp
80102df4:	85 d2                	test   %edx,%edx
80102df6:	7e 4a                	jle    80102e42 <log_write+0x92>
80102df8:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102dfb:	31 c0                	xor    %eax,%eax
80102dfd:	eb 08                	jmp    80102e07 <log_write+0x57>
80102dff:	90                   	nop
80102e00:	83 c0 01             	add    $0x1,%eax
80102e03:	39 c2                	cmp    %eax,%edx
80102e05:	74 29                	je     80102e30 <log_write+0x80>
80102e07:	39 0c 85 cc 26 11 80 	cmp    %ecx,-0x7feed934(,%eax,4)
80102e0e:	75 f0                	jne    80102e00 <log_write+0x50>
80102e10:	89 0c 85 cc 26 11 80 	mov    %ecx,-0x7feed934(,%eax,4)
80102e17:	83 0b 04             	orl    $0x4,(%ebx)
80102e1a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80102e1d:	c7 45 08 80 26 11 80 	movl   $0x80112680,0x8(%ebp)
80102e24:	c9                   	leave  
80102e25:	e9 26 16 00 00       	jmp    80104450 <release>
80102e2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102e30:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
80102e37:	83 c2 01             	add    $0x1,%edx
80102e3a:	89 15 c8 26 11 80    	mov    %edx,0x801126c8
80102e40:	eb d5                	jmp    80102e17 <log_write+0x67>
80102e42:	8b 43 08             	mov    0x8(%ebx),%eax
80102e45:	a3 cc 26 11 80       	mov    %eax,0x801126cc
80102e4a:	75 cb                	jne    80102e17 <log_write+0x67>
80102e4c:	eb e9                	jmp    80102e37 <log_write+0x87>
80102e4e:	83 ec 0c             	sub    $0xc,%esp
80102e51:	68 53 73 10 80       	push   $0x80107353
80102e56:	e8 45 d5 ff ff       	call   801003a0 <panic>
80102e5b:	83 ec 0c             	sub    $0xc,%esp
80102e5e:	68 69 73 10 80       	push   $0x80107369
80102e63:	e8 38 d5 ff ff       	call   801003a0 <panic>
80102e68:	66 90                	xchg   %ax,%ax
80102e6a:	66 90                	xchg   %ax,%ax
80102e6c:	66 90                	xchg   %ax,%ax
80102e6e:	66 90                	xchg   %ax,%ax

80102e70 <mpmain>:
}

// Common CPU setup code.
static void
mpmain(void)
{
80102e70:	55                   	push   %ebp
80102e71:	89 e5                	mov    %esp,%ebp
80102e73:	53                   	push   %ebx
80102e74:	83 ec 04             	sub    $0x4,%esp
  cprintf("cpu%d: starting %d\n", cpuid(), cpuid());
80102e77:	e8 74 09 00 00       	call   801037f0 <cpuid>
80102e7c:	89 c3                	mov    %eax,%ebx
80102e7e:	e8 6d 09 00 00       	call   801037f0 <cpuid>
80102e83:	83 ec 04             	sub    $0x4,%esp
80102e86:	53                   	push   %ebx
80102e87:	50                   	push   %eax
80102e88:	68 84 73 10 80       	push   $0x80107384
80102e8d:	e8 de d7 ff ff       	call   80100670 <cprintf>
  idtinit();       // load idt register
80102e92:	e8 69 28 00 00       	call   80105700 <idtinit>
  xchg(&(mycpu()->started), 1); // tell startothers() we're up
80102e97:	e8 e4 08 00 00       	call   80103780 <mycpu>
80102e9c:	89 c2                	mov    %eax,%edx
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
80102e9e:	b8 01 00 00 00       	mov    $0x1,%eax
80102ea3:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
  scheduler();     // start running processes
80102eaa:	e8 21 0c 00 00       	call   80103ad0 <scheduler>
80102eaf:	90                   	nop

80102eb0 <mpenter>:
{
80102eb0:	55                   	push   %ebp
80102eb1:	89 e5                	mov    %esp,%ebp
80102eb3:	83 ec 08             	sub    $0x8,%esp
  switchkvm();
80102eb6:	e8 15 39 00 00       	call   801067d0 <switchkvm>
  seginit();
80102ebb:	e8 80 38 00 00       	call   80106740 <seginit>
  lapicinit();
80102ec0:	e8 9b f7 ff ff       	call   80102660 <lapicinit>
  mpmain();
80102ec5:	e8 a6 ff ff ff       	call   80102e70 <mpmain>
80102eca:	66 90                	xchg   %ax,%ax
80102ecc:	66 90                	xchg   %ax,%ax
80102ece:	66 90                	xchg   %ax,%ax

80102ed0 <main>:
{
80102ed0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
80102ed4:	83 e4 f0             	and    $0xfffffff0,%esp
80102ed7:	ff 71 fc             	pushl  -0x4(%ecx)
80102eda:	55                   	push   %ebp
80102edb:	89 e5                	mov    %esp,%ebp
80102edd:	53                   	push   %ebx
80102ede:	51                   	push   %ecx
  kinit1(end, P2V(4*1024*1024)); // phys page allocator
80102edf:	83 ec 08             	sub    $0x8,%esp
80102ee2:	68 00 00 40 80       	push   $0x80400000
80102ee7:	68 a8 55 11 80       	push   $0x801155a8
80102eec:	e8 2f f5 ff ff       	call   80102420 <kinit1>
  kvmalloc();      // kernel page table
80102ef1:	e8 9a 3d 00 00       	call   80106c90 <kvmalloc>
  mpinit();        // detect other processors
80102ef6:	e8 75 01 00 00       	call   80103070 <mpinit>
  lapicinit();     // interrupt controller
80102efb:	e8 60 f7 ff ff       	call   80102660 <lapicinit>
  seginit();       // segment descriptors
80102f00:	e8 3b 38 00 00       	call   80106740 <seginit>
  picinit();       // disable pic
80102f05:	e8 46 03 00 00       	call   80103250 <picinit>
  ioapicinit();    // another interrupt controller
80102f0a:	e8 31 f3 ff ff       	call   80102240 <ioapicinit>
  consoleinit();   // console hardware
80102f0f:	e8 bc da ff ff       	call   801009d0 <consoleinit>
  uartinit();      // serial port
80102f14:	e8 e7 2a 00 00       	call   80105a00 <uartinit>
  pinit();         // process table
80102f19:	e8 42 08 00 00       	call   80103760 <pinit>
  tvinit();        // trap vectors
80102f1e:	e8 5d 27 00 00       	call   80105680 <tvinit>
  binit();         // buffer cache
80102f23:	e8 18 d1 ff ff       	call   80100040 <binit>
  fileinit();      // file table
80102f28:	e8 43 de ff ff       	call   80100d70 <fileinit>
  ideinit();       // disk 
80102f2d:	e8 ee f0 ff ff       	call   80102020 <ideinit>

  // Write entry code to unused memory at 0x7000.
  // The linker has placed the image of entryother.S in
  // _binary_entryother_start.
  code = P2V(0x7000);
  memmove(code, _binary_entryother_start, (uint)_binary_entryother_size);
80102f32:	83 c4 0c             	add    $0xc,%esp
80102f35:	68 8a 00 00 00       	push   $0x8a
80102f3a:	68 8c a4 10 80       	push   $0x8010a48c
80102f3f:	68 00 70 00 80       	push   $0x80007000
80102f44:	e8 f7 15 00 00       	call   80104540 <memmove>

  for(c = cpus; c < cpus+ncpu; c++){
80102f49:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80102f50:	00 00 00 
80102f53:	83 c4 10             	add    $0x10,%esp
80102f56:	05 80 27 11 80       	add    $0x80112780,%eax
80102f5b:	3d 80 27 11 80       	cmp    $0x80112780,%eax
80102f60:	76 71                	jbe    80102fd3 <main+0x103>
80102f62:	bb 80 27 11 80       	mov    $0x80112780,%ebx
80102f67:	89 f6                	mov    %esi,%esi
80102f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(c == mycpu())  // We've started already.
80102f70:	e8 0b 08 00 00       	call   80103780 <mycpu>
80102f75:	39 d8                	cmp    %ebx,%eax
80102f77:	74 41                	je     80102fba <main+0xea>
      continue;

    // Tell entryother.S what stack to use, where to enter, and what
    // pgdir to use. We cannot use kpgdir yet, because the AP processor
    // is running in low  memory, so we use entrypgdir for the APs too.
    stack = kalloc();
80102f79:	e8 72 f5 ff ff       	call   801024f0 <kalloc>
    *(void**)(code-4) = stack + KSTACKSIZE;
80102f7e:	05 00 10 00 00       	add    $0x1000,%eax
    *(void**)(code-8) = mpenter;
80102f83:	c7 05 f8 6f 00 80 b0 	movl   $0x80102eb0,0x80006ff8
80102f8a:	2e 10 80 
    *(int**)(code-12) = (void *) V2P(entrypgdir);
80102f8d:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102f94:	90 10 00 
    *(void**)(code-4) = stack + KSTACKSIZE;
80102f97:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc

    lapicstartap(c->apicid, V2P(code));
80102f9c:	0f b6 03             	movzbl (%ebx),%eax
80102f9f:	83 ec 08             	sub    $0x8,%esp
80102fa2:	68 00 70 00 00       	push   $0x7000
80102fa7:	50                   	push   %eax
80102fa8:	e8 03 f8 ff ff       	call   801027b0 <lapicstartap>
80102fad:	83 c4 10             	add    $0x10,%esp

    // wait for cpu to finish mpmain()
    while(c->started == 0)
80102fb0:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102fb6:	85 c0                	test   %eax,%eax
80102fb8:	74 f6                	je     80102fb0 <main+0xe0>
  for(c = cpus; c < cpus+ncpu; c++){
80102fba:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80102fc1:	00 00 00 
80102fc4:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102fca:	05 80 27 11 80       	add    $0x80112780,%eax
80102fcf:	39 c3                	cmp    %eax,%ebx
80102fd1:	72 9d                	jb     80102f70 <main+0xa0>
  kinit2(P2V(4*1024*1024), P2V(PHYSTOP)); // must come after startothers()
80102fd3:	83 ec 08             	sub    $0x8,%esp
80102fd6:	68 00 00 00 8e       	push   $0x8e000000
80102fdb:	68 00 00 40 80       	push   $0x80400000
80102fe0:	e8 ab f4 ff ff       	call   80102490 <kinit2>
  userinit();      // first user process
80102fe5:	e8 56 08 00 00       	call   80103840 <userinit>
  mpmain();        // finish this processor's setup
80102fea:	e8 81 fe ff ff       	call   80102e70 <mpmain>
80102fef:	90                   	nop

80102ff0 <mpsearch1>:
}

// Look for an MP structure in the len bytes at addr.
static struct mp*
mpsearch1(uint a, int len)
{
80102ff0:	55                   	push   %ebp
80102ff1:	89 e5                	mov    %esp,%ebp
80102ff3:	57                   	push   %edi
80102ff4:	56                   	push   %esi
  uchar *e, *p, *addr;

  addr = P2V(a);
80102ff5:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
{
80102ffb:	53                   	push   %ebx
  e = addr+len;
80102ffc:	8d 1c 16             	lea    (%esi,%edx,1),%ebx
{
80102fff:	83 ec 0c             	sub    $0xc,%esp
  for(p = addr; p < e; p += sizeof(struct mp))
80103002:	39 de                	cmp    %ebx,%esi
80103004:	72 10                	jb     80103016 <mpsearch1+0x26>
80103006:	eb 50                	jmp    80103058 <mpsearch1+0x68>
80103008:	90                   	nop
80103009:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103010:	39 fb                	cmp    %edi,%ebx
80103012:	89 fe                	mov    %edi,%esi
80103014:	76 42                	jbe    80103058 <mpsearch1+0x68>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80103016:	83 ec 04             	sub    $0x4,%esp
80103019:	8d 7e 10             	lea    0x10(%esi),%edi
8010301c:	6a 04                	push   $0x4
8010301e:	68 98 73 10 80       	push   $0x80107398
80103023:	56                   	push   %esi
80103024:	e8 c7 14 00 00       	call   801044f0 <memcmp>
80103029:	83 c4 10             	add    $0x10,%esp
8010302c:	85 c0                	test   %eax,%eax
8010302e:	75 e0                	jne    80103010 <mpsearch1+0x20>
80103030:	89 f1                	mov    %esi,%ecx
80103032:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    sum += addr[i];
80103038:	0f b6 11             	movzbl (%ecx),%edx
8010303b:	83 c1 01             	add    $0x1,%ecx
8010303e:	01 d0                	add    %edx,%eax
  for(i=0; i<len; i++)
80103040:	39 f9                	cmp    %edi,%ecx
80103042:	75 f4                	jne    80103038 <mpsearch1+0x48>
    if(memcmp(p, "_MP_", 4) == 0 && sum(p, sizeof(struct mp)) == 0)
80103044:	84 c0                	test   %al,%al
80103046:	75 c8                	jne    80103010 <mpsearch1+0x20>
      return (struct mp*)p;
  return 0;
}
80103048:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010304b:	89 f0                	mov    %esi,%eax
8010304d:	5b                   	pop    %ebx
8010304e:	5e                   	pop    %esi
8010304f:	5f                   	pop    %edi
80103050:	5d                   	pop    %ebp
80103051:	c3                   	ret    
80103052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103058:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
8010305b:	31 f6                	xor    %esi,%esi
}
8010305d:	89 f0                	mov    %esi,%eax
8010305f:	5b                   	pop    %ebx
80103060:	5e                   	pop    %esi
80103061:	5f                   	pop    %edi
80103062:	5d                   	pop    %ebp
80103063:	c3                   	ret    
80103064:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010306a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80103070 <mpinit>:
  return conf;
}

void
mpinit(void)
{
80103070:	55                   	push   %ebp
80103071:	89 e5                	mov    %esp,%ebp
80103073:	57                   	push   %edi
80103074:	56                   	push   %esi
80103075:	53                   	push   %ebx
80103076:	83 ec 1c             	sub    $0x1c,%esp
  if((p = ((bda[0x0F]<<8)| bda[0x0E]) << 4)){
80103079:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80103080:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80103087:	c1 e0 08             	shl    $0x8,%eax
8010308a:	09 d0                	or     %edx,%eax
8010308c:	c1 e0 04             	shl    $0x4,%eax
8010308f:	85 c0                	test   %eax,%eax
80103091:	75 1b                	jne    801030ae <mpinit+0x3e>
    p = ((bda[0x14]<<8)|bda[0x13])*1024;
80103093:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
8010309a:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
801030a1:	c1 e0 08             	shl    $0x8,%eax
801030a4:	09 d0                	or     %edx,%eax
801030a6:	c1 e0 0a             	shl    $0xa,%eax
    if((mp = mpsearch1(p-1024, 1024)))
801030a9:	2d 00 04 00 00       	sub    $0x400,%eax
    if((mp = mpsearch1(p, 1024)))
801030ae:	ba 00 04 00 00       	mov    $0x400,%edx
801030b3:	e8 38 ff ff ff       	call   80102ff0 <mpsearch1>
801030b8:	85 c0                	test   %eax,%eax
801030ba:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801030bd:	0f 84 3d 01 00 00    	je     80103200 <mpinit+0x190>
  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
801030c3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801030c6:	8b 58 04             	mov    0x4(%eax),%ebx
801030c9:	85 db                	test   %ebx,%ebx
801030cb:	0f 84 4f 01 00 00    	je     80103220 <mpinit+0x1b0>
  conf = (struct mpconf*) P2V((uint) mp->physaddr);
801030d1:	8d b3 00 00 00 80    	lea    -0x80000000(%ebx),%esi
  if(memcmp(conf, "PCMP", 4) != 0)
801030d7:	83 ec 04             	sub    $0x4,%esp
801030da:	6a 04                	push   $0x4
801030dc:	68 b5 73 10 80       	push   $0x801073b5
801030e1:	56                   	push   %esi
801030e2:	e8 09 14 00 00       	call   801044f0 <memcmp>
801030e7:	83 c4 10             	add    $0x10,%esp
801030ea:	85 c0                	test   %eax,%eax
801030ec:	0f 85 2e 01 00 00    	jne    80103220 <mpinit+0x1b0>
  if(conf->version != 1 && conf->version != 4)
801030f2:	0f b6 83 06 00 00 80 	movzbl -0x7ffffffa(%ebx),%eax
801030f9:	3c 01                	cmp    $0x1,%al
801030fb:	0f 95 c2             	setne  %dl
801030fe:	3c 04                	cmp    $0x4,%al
80103100:	0f 95 c0             	setne  %al
80103103:	20 c2                	and    %al,%dl
80103105:	0f 85 15 01 00 00    	jne    80103220 <mpinit+0x1b0>
  if(sum((uchar*)conf, conf->length) != 0)
8010310b:	0f b7 bb 04 00 00 80 	movzwl -0x7ffffffc(%ebx),%edi
  for(i=0; i<len; i++)
80103112:	66 85 ff             	test   %di,%di
80103115:	74 1a                	je     80103131 <mpinit+0xc1>
80103117:	89 f0                	mov    %esi,%eax
80103119:	01 f7                	add    %esi,%edi
  sum = 0;
8010311b:	31 d2                	xor    %edx,%edx
8010311d:	8d 76 00             	lea    0x0(%esi),%esi
    sum += addr[i];
80103120:	0f b6 08             	movzbl (%eax),%ecx
80103123:	83 c0 01             	add    $0x1,%eax
80103126:	01 ca                	add    %ecx,%edx
  for(i=0; i<len; i++)
80103128:	39 c7                	cmp    %eax,%edi
8010312a:	75 f4                	jne    80103120 <mpinit+0xb0>
8010312c:	84 d2                	test   %dl,%dl
8010312e:	0f 95 c2             	setne  %dl
  struct mp *mp;
  struct mpconf *conf;
  struct mpproc *proc;
  struct mpioapic *ioapic;

  if((conf = mpconfig(&mp)) == 0)
80103131:	85 f6                	test   %esi,%esi
80103133:	0f 84 e7 00 00 00    	je     80103220 <mpinit+0x1b0>
80103139:	84 d2                	test   %dl,%dl
8010313b:	0f 85 df 00 00 00    	jne    80103220 <mpinit+0x1b0>
    panic("Expect to run on an SMP");
  ismp = 1;
  lapic = (uint*)conf->lapicaddr;
80103141:	8b 83 24 00 00 80    	mov    -0x7fffffdc(%ebx),%eax
80103147:	a3 7c 26 11 80       	mov    %eax,0x8011267c
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
8010314c:	0f b7 93 04 00 00 80 	movzwl -0x7ffffffc(%ebx),%edx
80103153:	8d 83 2c 00 00 80    	lea    -0x7fffffd4(%ebx),%eax
  ismp = 1;
80103159:	bb 01 00 00 00       	mov    $0x1,%ebx
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
8010315e:	01 d6                	add    %edx,%esi
80103160:	39 c6                	cmp    %eax,%esi
80103162:	76 23                	jbe    80103187 <mpinit+0x117>
    switch(*p){
80103164:	0f b6 10             	movzbl (%eax),%edx
80103167:	80 fa 04             	cmp    $0x4,%dl
8010316a:	0f 87 ca 00 00 00    	ja     8010323a <mpinit+0x1ca>
80103170:	ff 24 95 dc 73 10 80 	jmp    *-0x7fef8c24(,%edx,4)
80103177:	89 f6                	mov    %esi,%esi
80103179:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      p += sizeof(struct mpioapic);
      continue;
    case MPBUS:
    case MPIOINTR:
    case MPLINTR:
      p += 8;
80103180:	83 c0 08             	add    $0x8,%eax
  for(p=(uchar*)(conf+1), e=(uchar*)conf+conf->length; p<e; ){
80103183:	39 c6                	cmp    %eax,%esi
80103185:	77 dd                	ja     80103164 <mpinit+0xf4>
    default:
      ismp = 0;
      break;
    }
  }
  if(!ismp)
80103187:	85 db                	test   %ebx,%ebx
80103189:	0f 84 9e 00 00 00    	je     8010322d <mpinit+0x1bd>
    panic("Didn't find a suitable machine");

  if(mp->imcrp){
8010318f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80103192:	80 78 0c 00          	cmpb   $0x0,0xc(%eax)
80103196:	74 15                	je     801031ad <mpinit+0x13d>
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
80103198:	b8 70 00 00 00       	mov    $0x70,%eax
8010319d:	ba 22 00 00 00       	mov    $0x22,%edx
801031a2:	ee                   	out    %al,(%dx)
  asm volatile("in %1,%0" : "=a" (data) : "d" (port));
801031a3:	ba 23 00 00 00       	mov    $0x23,%edx
801031a8:	ec                   	in     (%dx),%al
    // Bochs doesn't support IMCR, so this doesn't run on Bochs.
    // But it would on real hardware.
    outb(0x22, 0x70);   // Select IMCR
    outb(0x23, inb(0x23) | 1);  // Mask external interrupts.
801031a9:	83 c8 01             	or     $0x1,%eax
  asm volatile("out %0,%1" : : "a" (data), "d" (port));
801031ac:	ee                   	out    %al,(%dx)
  }
}
801031ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
801031b0:	5b                   	pop    %ebx
801031b1:	5e                   	pop    %esi
801031b2:	5f                   	pop    %edi
801031b3:	5d                   	pop    %ebp
801031b4:	c3                   	ret    
801031b5:	8d 76 00             	lea    0x0(%esi),%esi
      if(ncpu < NCPU) {
801031b8:	8b 0d 00 2d 11 80    	mov    0x80112d00,%ecx
801031be:	83 f9 07             	cmp    $0x7,%ecx
801031c1:	7f 19                	jg     801031dc <mpinit+0x16c>
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
801031c3:	0f b6 50 01          	movzbl 0x1(%eax),%edx
801031c7:	69 f9 b0 00 00 00    	imul   $0xb0,%ecx,%edi
        ncpu++;
801031cd:	83 c1 01             	add    $0x1,%ecx
801031d0:	89 0d 00 2d 11 80    	mov    %ecx,0x80112d00
        cpus[ncpu].apicid = proc->apicid;  // apicid may differ from ncpu
801031d6:	88 97 80 27 11 80    	mov    %dl,-0x7feed880(%edi)
      p += sizeof(struct mpproc);
801031dc:	83 c0 14             	add    $0x14,%eax
      continue;
801031df:	e9 7c ff ff ff       	jmp    80103160 <mpinit+0xf0>
801031e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      ioapicid = ioapic->apicno;
801031e8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
      p += sizeof(struct mpioapic);
801031ec:	83 c0 08             	add    $0x8,%eax
      ioapicid = ioapic->apicno;
801031ef:	88 15 60 27 11 80    	mov    %dl,0x80112760
      continue;
801031f5:	e9 66 ff ff ff       	jmp    80103160 <mpinit+0xf0>
801031fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  return mpsearch1(0xF0000, 0x10000);
80103200:	ba 00 00 01 00       	mov    $0x10000,%edx
80103205:	b8 00 00 0f 00       	mov    $0xf0000,%eax
8010320a:	e8 e1 fd ff ff       	call   80102ff0 <mpsearch1>
  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
8010320f:	85 c0                	test   %eax,%eax
  return mpsearch1(0xF0000, 0x10000);
80103211:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if((mp = mpsearch()) == 0 || mp->physaddr == 0)
80103214:	0f 85 a9 fe ff ff    	jne    801030c3 <mpinit+0x53>
8010321a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    panic("Expect to run on an SMP");
80103220:	83 ec 0c             	sub    $0xc,%esp
80103223:	68 9d 73 10 80       	push   $0x8010739d
80103228:	e8 73 d1 ff ff       	call   801003a0 <panic>
    panic("Didn't find a suitable machine");
8010322d:	83 ec 0c             	sub    $0xc,%esp
80103230:	68 bc 73 10 80       	push   $0x801073bc
80103235:	e8 66 d1 ff ff       	call   801003a0 <panic>
      ismp = 0;
8010323a:	31 db                	xor    %ebx,%ebx
8010323c:	e9 26 ff ff ff       	jmp    80103167 <mpinit+0xf7>
80103241:	66 90                	xchg   %ax,%ax
80103243:	66 90                	xchg   %ax,%ax
80103245:	66 90                	xchg   %ax,%ax
80103247:	66 90                	xchg   %ax,%ax
80103249:	66 90                	xchg   %ax,%ax
8010324b:	66 90                	xchg   %ax,%ax
8010324d:	66 90                	xchg   %ax,%ax
8010324f:	90                   	nop

80103250 <picinit>:
80103250:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103255:	ba 21 00 00 00       	mov    $0x21,%edx
8010325a:	ee                   	out    %al,(%dx)
8010325b:	ba a1 00 00 00       	mov    $0xa1,%edx
80103260:	ee                   	out    %al,(%dx)
80103261:	c3                   	ret    
80103262:	66 90                	xchg   %ax,%ax
80103264:	66 90                	xchg   %ax,%ax
80103266:	66 90                	xchg   %ax,%ax
80103268:	66 90                	xchg   %ax,%ax
8010326a:	66 90                	xchg   %ax,%ax
8010326c:	66 90                	xchg   %ax,%ax
8010326e:	66 90                	xchg   %ax,%ax

80103270 <pipealloc>:
  int writeopen;  // write fd is still open
};

int
pipealloc(struct file **f0, struct file **f1)
{
80103270:	55                   	push   %ebp
80103271:	89 e5                	mov    %esp,%ebp
80103273:	57                   	push   %edi
80103274:	56                   	push   %esi
80103275:	53                   	push   %ebx
80103276:	83 ec 0c             	sub    $0xc,%esp
80103279:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010327c:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct pipe *p;

  p = 0;
  *f0 = *f1 = 0;
8010327f:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
80103285:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
  if((*f0 = filealloc()) == 0 || (*f1 = filealloc()) == 0)
8010328b:	e8 00 db ff ff       	call   80100d90 <filealloc>
80103290:	85 c0                	test   %eax,%eax
80103292:	89 03                	mov    %eax,(%ebx)
80103294:	74 22                	je     801032b8 <pipealloc+0x48>
80103296:	e8 f5 da ff ff       	call   80100d90 <filealloc>
8010329b:	85 c0                	test   %eax,%eax
8010329d:	89 06                	mov    %eax,(%esi)
8010329f:	74 3f                	je     801032e0 <pipealloc+0x70>
    goto bad;
  if((p = (struct pipe*)kalloc()) == 0)
801032a1:	e8 4a f2 ff ff       	call   801024f0 <kalloc>
801032a6:	85 c0                	test   %eax,%eax
801032a8:	89 c7                	mov    %eax,%edi
801032aa:	75 54                	jne    80103300 <pipealloc+0x90>

//PAGEBREAK: 20
 bad:
  if(p)
    kfree((char*)p);
  if(*f0)
801032ac:	8b 03                	mov    (%ebx),%eax
801032ae:	85 c0                	test   %eax,%eax
801032b0:	75 34                	jne    801032e6 <pipealloc+0x76>
801032b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    fileclose(*f0);
  if(*f1)
801032b8:	8b 06                	mov    (%esi),%eax
801032ba:	85 c0                	test   %eax,%eax
801032bc:	74 0c                	je     801032ca <pipealloc+0x5a>
    fileclose(*f1);
801032be:	83 ec 0c             	sub    $0xc,%esp
801032c1:	50                   	push   %eax
801032c2:	e8 89 db ff ff       	call   80100e50 <fileclose>
801032c7:	83 c4 10             	add    $0x10,%esp
  return -1;
}
801032ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return -1;
801032cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
801032d2:	5b                   	pop    %ebx
801032d3:	5e                   	pop    %esi
801032d4:	5f                   	pop    %edi
801032d5:	5d                   	pop    %ebp
801032d6:	c3                   	ret    
801032d7:	89 f6                	mov    %esi,%esi
801032d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  if(*f0)
801032e0:	8b 03                	mov    (%ebx),%eax
801032e2:	85 c0                	test   %eax,%eax
801032e4:	74 e4                	je     801032ca <pipealloc+0x5a>
    fileclose(*f0);
801032e6:	83 ec 0c             	sub    $0xc,%esp
801032e9:	50                   	push   %eax
801032ea:	e8 61 db ff ff       	call   80100e50 <fileclose>
  if(*f1)
801032ef:	8b 06                	mov    (%esi),%eax
    fileclose(*f0);
801032f1:	83 c4 10             	add    $0x10,%esp
  if(*f1)
801032f4:	85 c0                	test   %eax,%eax
801032f6:	75 c6                	jne    801032be <pipealloc+0x4e>
801032f8:	eb d0                	jmp    801032ca <pipealloc+0x5a>
801032fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  initlock(&p->lock, "pipe");
80103300:	83 ec 08             	sub    $0x8,%esp
  p->readopen = 1;
80103303:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
8010330a:	00 00 00 
  p->writeopen = 1;
8010330d:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
80103314:	00 00 00 
  p->nwrite = 0;
80103317:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
8010331e:	00 00 00 
  p->nread = 0;
80103321:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
80103328:	00 00 00 
  initlock(&p->lock, "pipe");
8010332b:	68 f0 73 10 80       	push   $0x801073f0
80103330:	50                   	push   %eax
80103331:	e8 fa 0e 00 00       	call   80104230 <initlock>
  (*f0)->type = FD_PIPE;
80103336:	8b 03                	mov    (%ebx),%eax
  return 0;
80103338:	83 c4 10             	add    $0x10,%esp
  (*f0)->type = FD_PIPE;
8010333b:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f0)->readable = 1;
80103341:	8b 03                	mov    (%ebx),%eax
80103343:	c6 40 08 01          	movb   $0x1,0x8(%eax)
  (*f0)->writable = 0;
80103347:	8b 03                	mov    (%ebx),%eax
80103349:	c6 40 09 00          	movb   $0x0,0x9(%eax)
  (*f0)->pipe = p;
8010334d:	8b 03                	mov    (%ebx),%eax
8010334f:	89 78 0c             	mov    %edi,0xc(%eax)
  (*f1)->type = FD_PIPE;
80103352:	8b 06                	mov    (%esi),%eax
80103354:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  (*f1)->readable = 0;
8010335a:	8b 06                	mov    (%esi),%eax
8010335c:	c6 40 08 00          	movb   $0x0,0x8(%eax)
  (*f1)->writable = 1;
80103360:	8b 06                	mov    (%esi),%eax
80103362:	c6 40 09 01          	movb   $0x1,0x9(%eax)
  (*f1)->pipe = p;
80103366:	8b 06                	mov    (%esi),%eax
80103368:	89 78 0c             	mov    %edi,0xc(%eax)
}
8010336b:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
8010336e:	31 c0                	xor    %eax,%eax
}
80103370:	5b                   	pop    %ebx
80103371:	5e                   	pop    %esi
80103372:	5f                   	pop    %edi
80103373:	5d                   	pop    %ebp
80103374:	c3                   	ret    
80103375:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103380 <pipeclose>:

void
pipeclose(struct pipe *p, int writable)
{
80103380:	55                   	push   %ebp
80103381:	89 e5                	mov    %esp,%ebp
80103383:	56                   	push   %esi
80103384:	53                   	push   %ebx
80103385:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103388:	8b 75 0c             	mov    0xc(%ebp),%esi
  acquire(&p->lock);
8010338b:	83 ec 0c             	sub    $0xc,%esp
8010338e:	53                   	push   %ebx
8010338f:	e8 9c 0f 00 00       	call   80104330 <acquire>
  if(writable){
80103394:	83 c4 10             	add    $0x10,%esp
80103397:	85 f6                	test   %esi,%esi
80103399:	74 45                	je     801033e0 <pipeclose+0x60>
    p->writeopen = 0;
    wakeup(&p->nread);
8010339b:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
801033a1:	83 ec 0c             	sub    $0xc,%esp
    p->writeopen = 0;
801033a4:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
801033ab:	00 00 00 
    wakeup(&p->nread);
801033ae:	50                   	push   %eax
801033af:	e8 ac 0b 00 00       	call   80103f60 <wakeup>
801033b4:	83 c4 10             	add    $0x10,%esp
  } else {
    p->readopen = 0;
    wakeup(&p->nwrite);
  }
  if(p->readopen == 0 && p->writeopen == 0){
801033b7:	8b 93 3c 02 00 00    	mov    0x23c(%ebx),%edx
801033bd:	85 d2                	test   %edx,%edx
801033bf:	75 0a                	jne    801033cb <pipeclose+0x4b>
801033c1:	8b 83 40 02 00 00    	mov    0x240(%ebx),%eax
801033c7:	85 c0                	test   %eax,%eax
801033c9:	74 35                	je     80103400 <pipeclose+0x80>
    release(&p->lock);
    kfree((char*)p);
  } else
    release(&p->lock);
801033cb:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
801033ce:	8d 65 f8             	lea    -0x8(%ebp),%esp
801033d1:	5b                   	pop    %ebx
801033d2:	5e                   	pop    %esi
801033d3:	5d                   	pop    %ebp
    release(&p->lock);
801033d4:	e9 77 10 00 00       	jmp    80104450 <release>
801033d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wakeup(&p->nwrite);
801033e0:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801033e6:	83 ec 0c             	sub    $0xc,%esp
    p->readopen = 0;
801033e9:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
801033f0:	00 00 00 
    wakeup(&p->nwrite);
801033f3:	50                   	push   %eax
801033f4:	e8 67 0b 00 00       	call   80103f60 <wakeup>
801033f9:	83 c4 10             	add    $0x10,%esp
801033fc:	eb b9                	jmp    801033b7 <pipeclose+0x37>
801033fe:	66 90                	xchg   %ax,%ax
    release(&p->lock);
80103400:	83 ec 0c             	sub    $0xc,%esp
80103403:	53                   	push   %ebx
80103404:	e8 47 10 00 00       	call   80104450 <release>
    kfree((char*)p);
80103409:	89 5d 08             	mov    %ebx,0x8(%ebp)
8010340c:	83 c4 10             	add    $0x10,%esp
}
8010340f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103412:	5b                   	pop    %ebx
80103413:	5e                   	pop    %esi
80103414:	5d                   	pop    %ebp
    kfree((char*)p);
80103415:	e9 16 ef ff ff       	jmp    80102330 <kfree>
8010341a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103420 <pipewrite>:

//PAGEBREAK: 40
int
pipewrite(struct pipe *p, char *addr, int n)
{
80103420:	55                   	push   %ebp
80103421:	89 e5                	mov    %esp,%ebp
80103423:	57                   	push   %edi
80103424:	56                   	push   %esi
80103425:	53                   	push   %ebx
80103426:	83 ec 28             	sub    $0x28,%esp
80103429:	8b 5d 08             	mov    0x8(%ebp),%ebx
  int i;

  acquire(&p->lock);
8010342c:	53                   	push   %ebx
8010342d:	e8 fe 0e 00 00       	call   80104330 <acquire>
  for(i = 0; i < n; i++){
80103432:	8b 45 10             	mov    0x10(%ebp),%eax
80103435:	83 c4 10             	add    $0x10,%esp
80103438:	85 c0                	test   %eax,%eax
8010343a:	0f 8e c9 00 00 00    	jle    80103509 <pipewrite+0xe9>
80103440:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103443:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
      if(p->readopen == 0 || myproc()->killed){
        release(&p->lock);
        return -1;
      }
      wakeup(&p->nread);
80103449:	8d bb 34 02 00 00    	lea    0x234(%ebx),%edi
8010344f:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80103452:	03 4d 10             	add    0x10(%ebp),%ecx
80103455:	89 4d e0             	mov    %ecx,-0x20(%ebp)
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
80103458:	8b 8b 34 02 00 00    	mov    0x234(%ebx),%ecx
8010345e:	8d 91 00 02 00 00    	lea    0x200(%ecx),%edx
80103464:	39 d0                	cmp    %edx,%eax
80103466:	75 71                	jne    801034d9 <pipewrite+0xb9>
      if(p->readopen == 0 || myproc()->killed){
80103468:	8b 83 3c 02 00 00    	mov    0x23c(%ebx),%eax
8010346e:	85 c0                	test   %eax,%eax
80103470:	74 4e                	je     801034c0 <pipewrite+0xa0>
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
80103472:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
80103478:	eb 3a                	jmp    801034b4 <pipewrite+0x94>
8010347a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      wakeup(&p->nread);
80103480:	83 ec 0c             	sub    $0xc,%esp
80103483:	57                   	push   %edi
80103484:	e8 d7 0a 00 00       	call   80103f60 <wakeup>
      sleep(&p->nwrite, &p->lock);  //DOC: pipewrite-sleep
80103489:	5a                   	pop    %edx
8010348a:	59                   	pop    %ecx
8010348b:	53                   	push   %ebx
8010348c:	56                   	push   %esi
8010348d:	e8 1e 09 00 00       	call   80103db0 <sleep>
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
80103492:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80103498:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
8010349e:	83 c4 10             	add    $0x10,%esp
801034a1:	05 00 02 00 00       	add    $0x200,%eax
801034a6:	39 c2                	cmp    %eax,%edx
801034a8:	75 36                	jne    801034e0 <pipewrite+0xc0>
      if(p->readopen == 0 || myproc()->killed){
801034aa:	8b 83 3c 02 00 00    	mov    0x23c(%ebx),%eax
801034b0:	85 c0                	test   %eax,%eax
801034b2:	74 0c                	je     801034c0 <pipewrite+0xa0>
801034b4:	e8 57 03 00 00       	call   80103810 <myproc>
801034b9:	8b 40 24             	mov    0x24(%eax),%eax
801034bc:	85 c0                	test   %eax,%eax
801034be:	74 c0                	je     80103480 <pipewrite+0x60>
        release(&p->lock);
801034c0:	83 ec 0c             	sub    $0xc,%esp
801034c3:	53                   	push   %ebx
801034c4:	e8 87 0f 00 00       	call   80104450 <release>
        return -1;
801034c9:	83 c4 10             	add    $0x10,%esp
801034cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
  }
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
  release(&p->lock);
  return n;
}
801034d1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801034d4:	5b                   	pop    %ebx
801034d5:	5e                   	pop    %esi
801034d6:	5f                   	pop    %edi
801034d7:	5d                   	pop    %ebp
801034d8:	c3                   	ret    
    while(p->nwrite == p->nread + PIPESIZE){  //DOC: pipewrite-full
801034d9:	89 c2                	mov    %eax,%edx
801034db:	90                   	nop
801034dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
801034e0:	8b 75 e4             	mov    -0x1c(%ebp),%esi
801034e3:	8d 42 01             	lea    0x1(%edx),%eax
801034e6:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
801034ec:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
801034f2:	83 c6 01             	add    $0x1,%esi
801034f5:	0f b6 4e ff          	movzbl -0x1(%esi),%ecx
  for(i = 0; i < n; i++){
801034f9:	3b 75 e0             	cmp    -0x20(%ebp),%esi
801034fc:	89 75 e4             	mov    %esi,-0x1c(%ebp)
    p->data[p->nwrite++ % PIPESIZE] = addr[i];
801034ff:	88 4c 13 34          	mov    %cl,0x34(%ebx,%edx,1)
  for(i = 0; i < n; i++){
80103503:	0f 85 4f ff ff ff    	jne    80103458 <pipewrite+0x38>
  wakeup(&p->nread);  //DOC: pipewrite-wakeup1
80103509:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
8010350f:	83 ec 0c             	sub    $0xc,%esp
80103512:	50                   	push   %eax
80103513:	e8 48 0a 00 00       	call   80103f60 <wakeup>
  release(&p->lock);
80103518:	89 1c 24             	mov    %ebx,(%esp)
8010351b:	e8 30 0f 00 00       	call   80104450 <release>
  return n;
80103520:	83 c4 10             	add    $0x10,%esp
80103523:	8b 45 10             	mov    0x10(%ebp),%eax
80103526:	eb a9                	jmp    801034d1 <pipewrite+0xb1>
80103528:	90                   	nop
80103529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103530 <piperead>:

int
piperead(struct pipe *p, char *addr, int n)
{
80103530:	55                   	push   %ebp
80103531:	89 e5                	mov    %esp,%ebp
80103533:	57                   	push   %edi
80103534:	56                   	push   %esi
80103535:	53                   	push   %ebx
80103536:	83 ec 18             	sub    $0x18,%esp
80103539:	8b 75 08             	mov    0x8(%ebp),%esi
8010353c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  int i;

  acquire(&p->lock);
8010353f:	56                   	push   %esi
80103540:	e8 eb 0d 00 00       	call   80104330 <acquire>
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
80103545:	83 c4 10             	add    $0x10,%esp
80103548:	8b 8e 34 02 00 00    	mov    0x234(%esi),%ecx
8010354e:	3b 8e 38 02 00 00    	cmp    0x238(%esi),%ecx
80103554:	75 6a                	jne    801035c0 <piperead+0x90>
80103556:	8b 9e 40 02 00 00    	mov    0x240(%esi),%ebx
8010355c:	85 db                	test   %ebx,%ebx
8010355e:	0f 84 c4 00 00 00    	je     80103628 <piperead+0xf8>
    if(myproc()->killed){
      release(&p->lock);
      return -1;
    }
    sleep(&p->nread, &p->lock); //DOC: piperead-sleep
80103564:	8d 9e 34 02 00 00    	lea    0x234(%esi),%ebx
8010356a:	eb 2d                	jmp    80103599 <piperead+0x69>
8010356c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103570:	83 ec 08             	sub    $0x8,%esp
80103573:	56                   	push   %esi
80103574:	53                   	push   %ebx
80103575:	e8 36 08 00 00       	call   80103db0 <sleep>
  while(p->nread == p->nwrite && p->writeopen){  //DOC: pipe-empty
8010357a:	83 c4 10             	add    $0x10,%esp
8010357d:	8b 8e 34 02 00 00    	mov    0x234(%esi),%ecx
80103583:	3b 8e 38 02 00 00    	cmp    0x238(%esi),%ecx
80103589:	75 35                	jne    801035c0 <piperead+0x90>
8010358b:	8b 96 40 02 00 00    	mov    0x240(%esi),%edx
80103591:	85 d2                	test   %edx,%edx
80103593:	0f 84 8f 00 00 00    	je     80103628 <piperead+0xf8>
    if(myproc()->killed){
80103599:	e8 72 02 00 00       	call   80103810 <myproc>
8010359e:	8b 48 24             	mov    0x24(%eax),%ecx
801035a1:	85 c9                	test   %ecx,%ecx
801035a3:	74 cb                	je     80103570 <piperead+0x40>
      release(&p->lock);
801035a5:	83 ec 0c             	sub    $0xc,%esp
      return -1;
801035a8:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
      release(&p->lock);
801035ad:	56                   	push   %esi
801035ae:	e8 9d 0e 00 00       	call   80104450 <release>
      return -1;
801035b3:	83 c4 10             	add    $0x10,%esp
    addr[i] = p->data[p->nread++ % PIPESIZE];
  }
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
  release(&p->lock);
  return i;
}
801035b6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801035b9:	89 d8                	mov    %ebx,%eax
801035bb:	5b                   	pop    %ebx
801035bc:	5e                   	pop    %esi
801035bd:	5f                   	pop    %edi
801035be:	5d                   	pop    %ebp
801035bf:	c3                   	ret    
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801035c0:	8b 45 10             	mov    0x10(%ebp),%eax
801035c3:	85 c0                	test   %eax,%eax
801035c5:	7e 61                	jle    80103628 <piperead+0xf8>
    if(p->nread == p->nwrite)
801035c7:	31 db                	xor    %ebx,%ebx
801035c9:	eb 13                	jmp    801035de <piperead+0xae>
801035cb:	90                   	nop
801035cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801035d0:	8b 8e 34 02 00 00    	mov    0x234(%esi),%ecx
801035d6:	3b 8e 38 02 00 00    	cmp    0x238(%esi),%ecx
801035dc:	74 1f                	je     801035fd <piperead+0xcd>
    addr[i] = p->data[p->nread++ % PIPESIZE];
801035de:	8d 41 01             	lea    0x1(%ecx),%eax
801035e1:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
801035e7:	89 86 34 02 00 00    	mov    %eax,0x234(%esi)
801035ed:	0f b6 44 0e 34       	movzbl 0x34(%esi,%ecx,1),%eax
801035f2:	88 04 1f             	mov    %al,(%edi,%ebx,1)
  for(i = 0; i < n; i++){  //DOC: piperead-copy
801035f5:	83 c3 01             	add    $0x1,%ebx
801035f8:	39 5d 10             	cmp    %ebx,0x10(%ebp)
801035fb:	75 d3                	jne    801035d0 <piperead+0xa0>
  wakeup(&p->nwrite);  //DOC: piperead-wakeup
801035fd:	8d 86 38 02 00 00    	lea    0x238(%esi),%eax
80103603:	83 ec 0c             	sub    $0xc,%esp
80103606:	50                   	push   %eax
80103607:	e8 54 09 00 00       	call   80103f60 <wakeup>
  release(&p->lock);
8010360c:	89 34 24             	mov    %esi,(%esp)
8010360f:	e8 3c 0e 00 00       	call   80104450 <release>
  return i;
80103614:	83 c4 10             	add    $0x10,%esp
}
80103617:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010361a:	89 d8                	mov    %ebx,%eax
8010361c:	5b                   	pop    %ebx
8010361d:	5e                   	pop    %esi
8010361e:	5f                   	pop    %edi
8010361f:	5d                   	pop    %ebp
80103620:	c3                   	ret    
80103621:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103628:	31 db                	xor    %ebx,%ebx
8010362a:	eb d1                	jmp    801035fd <piperead+0xcd>
8010362c:	66 90                	xchg   %ax,%ax
8010362e:	66 90                	xchg   %ax,%ax

80103630 <allocproc>:
80103630:	55                   	push   %ebp
80103631:	89 e5                	mov    %esp,%ebp
80103633:	53                   	push   %ebx
80103634:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103639:	83 ec 10             	sub    $0x10,%esp
8010363c:	68 20 2d 11 80       	push   $0x80112d20
80103641:	e8 ea 0c 00 00       	call   80104330 <acquire>
80103646:	83 c4 10             	add    $0x10,%esp
80103649:	eb 14                	jmp    8010365f <allocproc+0x2f>
8010364b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010364f:	90                   	nop
80103650:	83 eb 80             	sub    $0xffffff80,%ebx
80103653:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103659:	0f 84 81 00 00 00    	je     801036e0 <allocproc+0xb0>
8010365f:	8b 43 0c             	mov    0xc(%ebx),%eax
80103662:	85 c0                	test   %eax,%eax
80103664:	75 ea                	jne    80103650 <allocproc+0x20>
80103666:	a1 04 a0 10 80       	mov    0x8010a004,%eax
8010366b:	83 ec 0c             	sub    $0xc,%esp
8010366e:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
80103675:	89 43 10             	mov    %eax,0x10(%ebx)
80103678:	8d 50 01             	lea    0x1(%eax),%edx
8010367b:	68 20 2d 11 80       	push   $0x80112d20
80103680:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
80103686:	e8 c5 0d 00 00       	call   80104450 <release>
8010368b:	e8 60 ee ff ff       	call   801024f0 <kalloc>
80103690:	83 c4 10             	add    $0x10,%esp
80103693:	89 43 08             	mov    %eax,0x8(%ebx)
80103696:	85 c0                	test   %eax,%eax
80103698:	74 5f                	je     801036f9 <allocproc+0xc9>
8010369a:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
801036a0:	83 ec 04             	sub    $0x4,%esp
801036a3:	05 9c 0f 00 00       	add    $0xf9c,%eax
801036a8:	89 53 18             	mov    %edx,0x18(%ebx)
801036ab:	c7 40 14 6f 56 10 80 	movl   $0x8010566f,0x14(%eax)
801036b2:	89 43 1c             	mov    %eax,0x1c(%ebx)
801036b5:	6a 14                	push   $0x14
801036b7:	6a 00                	push   $0x0
801036b9:	50                   	push   %eax
801036ba:	e8 e1 0d 00 00       	call   801044a0 <memset>
801036bf:	8b 43 1c             	mov    0x1c(%ebx),%eax
801036c2:	83 c4 10             	add    $0x10,%esp
801036c5:	c7 40 10 10 37 10 80 	movl   $0x80103710,0x10(%eax)
801036cc:	a1 a0 55 11 80       	mov    0x801155a0,%eax
801036d1:	89 43 7c             	mov    %eax,0x7c(%ebx)
801036d4:	89 d8                	mov    %ebx,%eax
801036d6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801036d9:	c9                   	leave  
801036da:	c3                   	ret    
801036db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801036df:	90                   	nop
801036e0:	83 ec 0c             	sub    $0xc,%esp
801036e3:	31 db                	xor    %ebx,%ebx
801036e5:	68 20 2d 11 80       	push   $0x80112d20
801036ea:	e8 61 0d 00 00       	call   80104450 <release>
801036ef:	89 d8                	mov    %ebx,%eax
801036f1:	83 c4 10             	add    $0x10,%esp
801036f4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801036f7:	c9                   	leave  
801036f8:	c3                   	ret    
801036f9:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103700:	31 db                	xor    %ebx,%ebx
80103702:	89 d8                	mov    %ebx,%eax
80103704:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103707:	c9                   	leave  
80103708:	c3                   	ret    
80103709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103710 <forkret>:
80103710:	55                   	push   %ebp
80103711:	89 e5                	mov    %esp,%ebp
80103713:	83 ec 14             	sub    $0x14,%esp
80103716:	68 20 2d 11 80       	push   $0x80112d20
8010371b:	e8 30 0d 00 00       	call   80104450 <release>
80103720:	a1 00 a0 10 80       	mov    0x8010a000,%eax
80103725:	83 c4 10             	add    $0x10,%esp
80103728:	85 c0                	test   %eax,%eax
8010372a:	75 04                	jne    80103730 <forkret+0x20>
8010372c:	c9                   	leave  
8010372d:	c3                   	ret    
8010372e:	66 90                	xchg   %ax,%ax
80103730:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
80103737:	00 00 00 
8010373a:	83 ec 0c             	sub    $0xc,%esp
8010373d:	6a 01                	push   $0x1
8010373f:	e8 5c dd ff ff       	call   801014a0 <iinit>
80103744:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
8010374b:	e8 e0 f3 ff ff       	call   80102b30 <initlog>
80103750:	83 c4 10             	add    $0x10,%esp
80103753:	c9                   	leave  
80103754:	c3                   	ret    
80103755:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010375c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80103760 <pinit>:
80103760:	55                   	push   %ebp
80103761:	89 e5                	mov    %esp,%ebp
80103763:	83 ec 10             	sub    $0x10,%esp
80103766:	68 f5 73 10 80       	push   $0x801073f5
8010376b:	68 20 2d 11 80       	push   $0x80112d20
80103770:	e8 bb 0a 00 00       	call   80104230 <initlock>
80103775:	83 c4 10             	add    $0x10,%esp
80103778:	c9                   	leave  
80103779:	c3                   	ret    
8010377a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103780 <mycpu>:
80103780:	55                   	push   %ebp
80103781:	89 e5                	mov    %esp,%ebp
80103783:	56                   	push   %esi
80103784:	53                   	push   %ebx
80103785:	9c                   	pushf  
80103786:	58                   	pop    %eax
80103787:	f6 c4 02             	test   $0x2,%ah
8010378a:	75 4e                	jne    801037da <mycpu+0x5a>
8010378c:	e8 cf ef ff ff       	call   80102760 <lapicid>
80103791:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
80103797:	89 c3                	mov    %eax,%ebx
80103799:	85 f6                	test   %esi,%esi
8010379b:	7e 30                	jle    801037cd <mycpu+0x4d>
8010379d:	31 d2                	xor    %edx,%edx
8010379f:	eb 0e                	jmp    801037af <mycpu+0x2f>
801037a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801037a8:	83 c2 01             	add    $0x1,%edx
801037ab:	39 f2                	cmp    %esi,%edx
801037ad:	74 1e                	je     801037cd <mycpu+0x4d>
801037af:	69 ca b0 00 00 00    	imul   $0xb0,%edx,%ecx
801037b5:	0f b6 81 80 27 11 80 	movzbl -0x7feed880(%ecx),%eax
801037bc:	39 d8                	cmp    %ebx,%eax
801037be:	75 e8                	jne    801037a8 <mycpu+0x28>
801037c0:	8d 65 f8             	lea    -0x8(%ebp),%esp
801037c3:	8d 81 80 27 11 80    	lea    -0x7feed880(%ecx),%eax
801037c9:	5b                   	pop    %ebx
801037ca:	5e                   	pop    %esi
801037cb:	5d                   	pop    %ebp
801037cc:	c3                   	ret    
801037cd:	83 ec 0c             	sub    $0xc,%esp
801037d0:	68 fc 73 10 80       	push   $0x801073fc
801037d5:	e8 c6 cb ff ff       	call   801003a0 <panic>
801037da:	83 ec 0c             	sub    $0xc,%esp
801037dd:	68 e0 74 10 80       	push   $0x801074e0
801037e2:	e8 b9 cb ff ff       	call   801003a0 <panic>
801037e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801037ee:	66 90                	xchg   %ax,%ax

801037f0 <cpuid>:
801037f0:	55                   	push   %ebp
801037f1:	89 e5                	mov    %esp,%ebp
801037f3:	83 ec 08             	sub    $0x8,%esp
801037f6:	e8 85 ff ff ff       	call   80103780 <mycpu>
801037fb:	c9                   	leave  
801037fc:	2d 80 27 11 80       	sub    $0x80112780,%eax
80103801:	c1 f8 04             	sar    $0x4,%eax
80103804:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
8010380a:	c3                   	ret    
8010380b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010380f:	90                   	nop

80103810 <myproc>:
80103810:	55                   	push   %ebp
80103811:	89 e5                	mov    %esp,%ebp
80103813:	53                   	push   %ebx
80103814:	83 ec 04             	sub    $0x4,%esp
80103817:	e8 c4 0a 00 00       	call   801042e0 <pushcli>
8010381c:	e8 5f ff ff ff       	call   80103780 <mycpu>
80103821:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103827:	e8 c4 0b 00 00       	call   801043f0 <popcli>
8010382c:	83 c4 04             	add    $0x4,%esp
8010382f:	89 d8                	mov    %ebx,%eax
80103831:	5b                   	pop    %ebx
80103832:	5d                   	pop    %ebp
80103833:	c3                   	ret    
80103834:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010383b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010383f:	90                   	nop

80103840 <userinit>:
80103840:	55                   	push   %ebp
80103841:	89 e5                	mov    %esp,%ebp
80103843:	53                   	push   %ebx
80103844:	83 ec 04             	sub    $0x4,%esp
80103847:	e8 e4 fd ff ff       	call   80103630 <allocproc>
8010384c:	89 c3                	mov    %eax,%ebx
8010384e:	a3 b8 a5 10 80       	mov    %eax,0x8010a5b8
80103853:	e8 b8 33 00 00       	call   80106c10 <setupkvm>
80103858:	89 43 04             	mov    %eax,0x4(%ebx)
8010385b:	85 c0                	test   %eax,%eax
8010385d:	0f 84 bd 00 00 00    	je     80103920 <userinit+0xe0>
80103863:	83 ec 04             	sub    $0x4,%esp
80103866:	68 2c 00 00 00       	push   $0x2c
8010386b:	68 60 a4 10 80       	push   $0x8010a460
80103870:	50                   	push   %eax
80103871:	e8 7a 30 00 00       	call   801068f0 <inituvm>
80103876:	83 c4 0c             	add    $0xc,%esp
80103879:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
8010387f:	6a 4c                	push   $0x4c
80103881:	6a 00                	push   $0x0
80103883:	ff 73 18             	pushl  0x18(%ebx)
80103886:	e8 15 0c 00 00       	call   801044a0 <memset>
8010388b:	8b 43 18             	mov    0x18(%ebx),%eax
8010388e:	ba 1b 00 00 00       	mov    $0x1b,%edx
80103893:	83 c4 0c             	add    $0xc,%esp
80103896:	b9 23 00 00 00       	mov    $0x23,%ecx
8010389b:	66 89 50 3c          	mov    %dx,0x3c(%eax)
8010389f:	8b 43 18             	mov    0x18(%ebx),%eax
801038a2:	66 89 48 2c          	mov    %cx,0x2c(%eax)
801038a6:	8b 43 18             	mov    0x18(%ebx),%eax
801038a9:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
801038ad:	66 89 50 28          	mov    %dx,0x28(%eax)
801038b1:	8b 43 18             	mov    0x18(%ebx),%eax
801038b4:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
801038b8:	66 89 50 48          	mov    %dx,0x48(%eax)
801038bc:	8b 43 18             	mov    0x18(%ebx),%eax
801038bf:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
801038c6:	8b 43 18             	mov    0x18(%ebx),%eax
801038c9:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
801038d0:	8b 43 18             	mov    0x18(%ebx),%eax
801038d3:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)
801038da:	8d 43 6c             	lea    0x6c(%ebx),%eax
801038dd:	6a 10                	push   $0x10
801038df:	68 25 74 10 80       	push   $0x80107425
801038e4:	50                   	push   %eax
801038e5:	e8 76 0d 00 00       	call   80104660 <safestrcpy>
801038ea:	c7 04 24 2e 74 10 80 	movl   $0x8010742e,(%esp)
801038f1:	e8 0a e6 ff ff       	call   80101f00 <namei>
801038f6:	89 43 68             	mov    %eax,0x68(%ebx)
801038f9:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103900:	e8 2b 0a 00 00       	call   80104330 <acquire>
80103905:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
8010390c:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103913:	e8 38 0b 00 00       	call   80104450 <release>
80103918:	8b 5d fc             	mov    -0x4(%ebp),%ebx
8010391b:	83 c4 10             	add    $0x10,%esp
8010391e:	c9                   	leave  
8010391f:	c3                   	ret    
80103920:	83 ec 0c             	sub    $0xc,%esp
80103923:	68 0c 74 10 80       	push   $0x8010740c
80103928:	e8 73 ca ff ff       	call   801003a0 <panic>
8010392d:	8d 76 00             	lea    0x0(%esi),%esi

80103930 <growproc>:
80103930:	55                   	push   %ebp
80103931:	89 e5                	mov    %esp,%ebp
80103933:	56                   	push   %esi
80103934:	53                   	push   %ebx
80103935:	8b 75 08             	mov    0x8(%ebp),%esi
80103938:	e8 a3 09 00 00       	call   801042e0 <pushcli>
8010393d:	e8 3e fe ff ff       	call   80103780 <mycpu>
80103942:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103948:	e8 a3 0a 00 00       	call   801043f0 <popcli>
8010394d:	8b 03                	mov    (%ebx),%eax
8010394f:	85 f6                	test   %esi,%esi
80103951:	7f 1d                	jg     80103970 <growproc+0x40>
80103953:	75 3b                	jne    80103990 <growproc+0x60>
80103955:	83 ec 0c             	sub    $0xc,%esp
80103958:	89 03                	mov    %eax,(%ebx)
8010395a:	53                   	push   %ebx
8010395b:	e8 80 2e 00 00       	call   801067e0 <switchuvm>
80103960:	83 c4 10             	add    $0x10,%esp
80103963:	31 c0                	xor    %eax,%eax
80103965:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103968:	5b                   	pop    %ebx
80103969:	5e                   	pop    %esi
8010396a:	5d                   	pop    %ebp
8010396b:	c3                   	ret    
8010396c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103970:	83 ec 04             	sub    $0x4,%esp
80103973:	01 c6                	add    %eax,%esi
80103975:	56                   	push   %esi
80103976:	50                   	push   %eax
80103977:	ff 73 04             	pushl  0x4(%ebx)
8010397a:	e8 b1 30 00 00       	call   80106a30 <allocuvm>
8010397f:	83 c4 10             	add    $0x10,%esp
80103982:	85 c0                	test   %eax,%eax
80103984:	75 cf                	jne    80103955 <growproc+0x25>
80103986:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010398b:	eb d8                	jmp    80103965 <growproc+0x35>
8010398d:	8d 76 00             	lea    0x0(%esi),%esi
80103990:	83 ec 04             	sub    $0x4,%esp
80103993:	01 c6                	add    %eax,%esi
80103995:	56                   	push   %esi
80103996:	50                   	push   %eax
80103997:	ff 73 04             	pushl  0x4(%ebx)
8010399a:	e8 c1 31 00 00       	call   80106b60 <deallocuvm>
8010399f:	83 c4 10             	add    $0x10,%esp
801039a2:	85 c0                	test   %eax,%eax
801039a4:	75 af                	jne    80103955 <growproc+0x25>
801039a6:	eb de                	jmp    80103986 <growproc+0x56>
801039a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801039af:	90                   	nop

801039b0 <fork>:
801039b0:	55                   	push   %ebp
801039b1:	89 e5                	mov    %esp,%ebp
801039b3:	57                   	push   %edi
801039b4:	56                   	push   %esi
801039b5:	53                   	push   %ebx
801039b6:	83 ec 1c             	sub    $0x1c,%esp
801039b9:	e8 22 09 00 00       	call   801042e0 <pushcli>
801039be:	e8 bd fd ff ff       	call   80103780 <mycpu>
801039c3:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
801039c9:	e8 22 0a 00 00       	call   801043f0 <popcli>
801039ce:	e8 5d fc ff ff       	call   80103630 <allocproc>
801039d3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801039d6:	85 c0                	test   %eax,%eax
801039d8:	0f 84 b7 00 00 00    	je     80103a95 <fork+0xe5>
801039de:	83 ec 08             	sub    $0x8,%esp
801039e1:	ff 33                	pushl  (%ebx)
801039e3:	89 c7                	mov    %eax,%edi
801039e5:	ff 73 04             	pushl  0x4(%ebx)
801039e8:	e8 f3 32 00 00       	call   80106ce0 <copyuvm>
801039ed:	83 c4 10             	add    $0x10,%esp
801039f0:	89 47 04             	mov    %eax,0x4(%edi)
801039f3:	85 c0                	test   %eax,%eax
801039f5:	0f 84 a1 00 00 00    	je     80103a9c <fork+0xec>
801039fb:	8b 03                	mov    (%ebx),%eax
801039fd:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80103a00:	89 01                	mov    %eax,(%ecx)
80103a02:	8b 79 18             	mov    0x18(%ecx),%edi
80103a05:	89 c8                	mov    %ecx,%eax
80103a07:	89 59 14             	mov    %ebx,0x14(%ecx)
80103a0a:	b9 13 00 00 00       	mov    $0x13,%ecx
80103a0f:	8b 73 18             	mov    0x18(%ebx),%esi
80103a12:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
80103a14:	31 f6                	xor    %esi,%esi
80103a16:	8b 40 18             	mov    0x18(%eax),%eax
80103a19:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
80103a20:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
80103a24:	85 c0                	test   %eax,%eax
80103a26:	74 13                	je     80103a3b <fork+0x8b>
80103a28:	83 ec 0c             	sub    $0xc,%esp
80103a2b:	50                   	push   %eax
80103a2c:	e8 cf d3 ff ff       	call   80100e00 <filedup>
80103a31:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80103a34:	83 c4 10             	add    $0x10,%esp
80103a37:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
80103a3b:	83 c6 01             	add    $0x1,%esi
80103a3e:	83 fe 10             	cmp    $0x10,%esi
80103a41:	75 dd                	jne    80103a20 <fork+0x70>
80103a43:	83 ec 0c             	sub    $0xc,%esp
80103a46:	ff 73 68             	pushl  0x68(%ebx)
80103a49:	83 c3 6c             	add    $0x6c,%ebx
80103a4c:	e8 1f dc ff ff       	call   80101670 <idup>
80103a51:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103a54:	83 c4 0c             	add    $0xc,%esp
80103a57:	89 47 68             	mov    %eax,0x68(%edi)
80103a5a:	8d 47 6c             	lea    0x6c(%edi),%eax
80103a5d:	6a 10                	push   $0x10
80103a5f:	53                   	push   %ebx
80103a60:	50                   	push   %eax
80103a61:	e8 fa 0b 00 00       	call   80104660 <safestrcpy>
80103a66:	8b 5f 10             	mov    0x10(%edi),%ebx
80103a69:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103a70:	e8 bb 08 00 00       	call   80104330 <acquire>
80103a75:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)
80103a7c:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103a83:	e8 c8 09 00 00       	call   80104450 <release>
80103a88:	83 c4 10             	add    $0x10,%esp
80103a8b:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103a8e:	89 d8                	mov    %ebx,%eax
80103a90:	5b                   	pop    %ebx
80103a91:	5e                   	pop    %esi
80103a92:	5f                   	pop    %edi
80103a93:	5d                   	pop    %ebp
80103a94:	c3                   	ret    
80103a95:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103a9a:	eb ef                	jmp    80103a8b <fork+0xdb>
80103a9c:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80103a9f:	83 ec 0c             	sub    $0xc,%esp
80103aa2:	ff 73 08             	pushl  0x8(%ebx)
80103aa5:	e8 86 e8 ff ff       	call   80102330 <kfree>
80103aaa:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103ab1:	83 c4 10             	add    $0x10,%esp
80103ab4:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103abb:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103ac0:	eb c9                	jmp    80103a8b <fork+0xdb>
80103ac2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103ac9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103ad0 <scheduler>:
80103ad0:	55                   	push   %ebp
80103ad1:	89 e5                	mov    %esp,%ebp
80103ad3:	57                   	push   %edi
80103ad4:	56                   	push   %esi
80103ad5:	53                   	push   %ebx
80103ad6:	83 ec 0c             	sub    $0xc,%esp
80103ad9:	e8 a2 fc ff ff       	call   80103780 <mycpu>
80103ade:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103ae5:	00 00 00 
80103ae8:	89 c6                	mov    %eax,%esi
80103aea:	8d 78 04             	lea    0x4(%eax),%edi
80103aed:	8d 76 00             	lea    0x0(%esi),%esi
80103af0:	fb                   	sti    
80103af1:	83 ec 0c             	sub    $0xc,%esp
80103af4:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103af9:	68 20 2d 11 80       	push   $0x80112d20
80103afe:	e8 2d 08 00 00       	call   80104330 <acquire>
80103b03:	83 c4 10             	add    $0x10,%esp
80103b06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103b0d:	8d 76 00             	lea    0x0(%esi),%esi
80103b10:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103b14:	75 33                	jne    80103b49 <scheduler+0x79>
80103b16:	83 ec 0c             	sub    $0xc,%esp
80103b19:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
80103b1f:	53                   	push   %ebx
80103b20:	e8 bb 2c 00 00       	call   801067e0 <switchuvm>
80103b25:	58                   	pop    %eax
80103b26:	5a                   	pop    %edx
80103b27:	ff 73 1c             	pushl  0x1c(%ebx)
80103b2a:	57                   	push   %edi
80103b2b:	c7 43 0c 04 00 00 00 	movl   $0x4,0xc(%ebx)
80103b32:	e8 84 0b 00 00       	call   801046bb <swtch>
80103b37:	e8 94 2c 00 00       	call   801067d0 <switchkvm>
80103b3c:	83 c4 10             	add    $0x10,%esp
80103b3f:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
80103b46:	00 00 00 
80103b49:	83 eb 80             	sub    $0xffffff80,%ebx
80103b4c:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103b52:	75 bc                	jne    80103b10 <scheduler+0x40>
80103b54:	83 ec 0c             	sub    $0xc,%esp
80103b57:	68 20 2d 11 80       	push   $0x80112d20
80103b5c:	e8 ef 08 00 00       	call   80104450 <release>
80103b61:	83 c4 10             	add    $0x10,%esp
80103b64:	eb 8a                	jmp    80103af0 <scheduler+0x20>
80103b66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103b6d:	8d 76 00             	lea    0x0(%esi),%esi

80103b70 <sched>:
80103b70:	55                   	push   %ebp
80103b71:	89 e5                	mov    %esp,%ebp
80103b73:	56                   	push   %esi
80103b74:	53                   	push   %ebx
80103b75:	e8 66 07 00 00       	call   801042e0 <pushcli>
80103b7a:	e8 01 fc ff ff       	call   80103780 <mycpu>
80103b7f:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103b85:	e8 66 08 00 00       	call   801043f0 <popcli>
80103b8a:	83 ec 0c             	sub    $0xc,%esp
80103b8d:	68 20 2d 11 80       	push   $0x80112d20
80103b92:	e8 09 07 00 00       	call   801042a0 <holding>
80103b97:	83 c4 10             	add    $0x10,%esp
80103b9a:	85 c0                	test   %eax,%eax
80103b9c:	74 4f                	je     80103bed <sched+0x7d>
80103b9e:	e8 dd fb ff ff       	call   80103780 <mycpu>
80103ba3:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103baa:	75 68                	jne    80103c14 <sched+0xa4>
80103bac:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103bb0:	74 55                	je     80103c07 <sched+0x97>
80103bb2:	9c                   	pushf  
80103bb3:	58                   	pop    %eax
80103bb4:	f6 c4 02             	test   $0x2,%ah
80103bb7:	75 41                	jne    80103bfa <sched+0x8a>
80103bb9:	e8 c2 fb ff ff       	call   80103780 <mycpu>
80103bbe:	83 c3 1c             	add    $0x1c,%ebx
80103bc1:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
80103bc7:	e8 b4 fb ff ff       	call   80103780 <mycpu>
80103bcc:	83 ec 08             	sub    $0x8,%esp
80103bcf:	ff 70 04             	pushl  0x4(%eax)
80103bd2:	53                   	push   %ebx
80103bd3:	e8 e3 0a 00 00       	call   801046bb <swtch>
80103bd8:	e8 a3 fb ff ff       	call   80103780 <mycpu>
80103bdd:	83 c4 10             	add    $0x10,%esp
80103be0:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
80103be6:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103be9:	5b                   	pop    %ebx
80103bea:	5e                   	pop    %esi
80103beb:	5d                   	pop    %ebp
80103bec:	c3                   	ret    
80103bed:	83 ec 0c             	sub    $0xc,%esp
80103bf0:	68 30 74 10 80       	push   $0x80107430
80103bf5:	e8 a6 c7 ff ff       	call   801003a0 <panic>
80103bfa:	83 ec 0c             	sub    $0xc,%esp
80103bfd:	68 5c 74 10 80       	push   $0x8010745c
80103c02:	e8 99 c7 ff ff       	call   801003a0 <panic>
80103c07:	83 ec 0c             	sub    $0xc,%esp
80103c0a:	68 4e 74 10 80       	push   $0x8010744e
80103c0f:	e8 8c c7 ff ff       	call   801003a0 <panic>
80103c14:	83 ec 0c             	sub    $0xc,%esp
80103c17:	68 42 74 10 80       	push   $0x80107442
80103c1c:	e8 7f c7 ff ff       	call   801003a0 <panic>
80103c21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103c28:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103c2f:	90                   	nop

80103c30 <exit>:
80103c30:	55                   	push   %ebp
80103c31:	89 e5                	mov    %esp,%ebp
80103c33:	57                   	push   %edi
80103c34:	56                   	push   %esi
80103c35:	53                   	push   %ebx
80103c36:	83 ec 0c             	sub    $0xc,%esp
80103c39:	e8 a2 06 00 00       	call   801042e0 <pushcli>
80103c3e:	e8 3d fb ff ff       	call   80103780 <mycpu>
80103c43:	8b b0 ac 00 00 00    	mov    0xac(%eax),%esi
80103c49:	e8 a2 07 00 00       	call   801043f0 <popcli>
80103c4e:	8d 5e 28             	lea    0x28(%esi),%ebx
80103c51:	8d 7e 68             	lea    0x68(%esi),%edi
80103c54:	39 35 b8 a5 10 80    	cmp    %esi,0x8010a5b8
80103c5a:	0f 84 e7 00 00 00    	je     80103d47 <exit+0x117>
80103c60:	8b 03                	mov    (%ebx),%eax
80103c62:	85 c0                	test   %eax,%eax
80103c64:	74 12                	je     80103c78 <exit+0x48>
80103c66:	83 ec 0c             	sub    $0xc,%esp
80103c69:	50                   	push   %eax
80103c6a:	e8 e1 d1 ff ff       	call   80100e50 <fileclose>
80103c6f:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103c75:	83 c4 10             	add    $0x10,%esp
80103c78:	83 c3 04             	add    $0x4,%ebx
80103c7b:	39 df                	cmp    %ebx,%edi
80103c7d:	75 e1                	jne    80103c60 <exit+0x30>
80103c7f:	e8 4c ef ff ff       	call   80102bd0 <begin_op>
80103c84:	83 ec 0c             	sub    $0xc,%esp
80103c87:	ff 76 68             	pushl  0x68(%esi)
80103c8a:	e8 41 db ff ff       	call   801017d0 <iput>
80103c8f:	e8 ac ef ff ff       	call   80102c40 <end_op>
80103c94:	c7 46 68 00 00 00 00 	movl   $0x0,0x68(%esi)
80103c9b:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103ca2:	e8 89 06 00 00       	call   80104330 <acquire>
80103ca7:	8b 56 14             	mov    0x14(%esi),%edx
80103caa:	83 c4 10             	add    $0x10,%esp
80103cad:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103cb2:	eb 0e                	jmp    80103cc2 <exit+0x92>
80103cb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103cb8:	83 e8 80             	sub    $0xffffff80,%eax
80103cbb:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103cc0:	74 1c                	je     80103cde <exit+0xae>
80103cc2:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103cc6:	75 f0                	jne    80103cb8 <exit+0x88>
80103cc8:	3b 50 20             	cmp    0x20(%eax),%edx
80103ccb:	75 eb                	jne    80103cb8 <exit+0x88>
80103ccd:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103cd4:	83 e8 80             	sub    $0xffffff80,%eax
80103cd7:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103cdc:	75 e4                	jne    80103cc2 <exit+0x92>
80103cde:	8b 0d b8 a5 10 80    	mov    0x8010a5b8,%ecx
80103ce4:	ba 54 2d 11 80       	mov    $0x80112d54,%edx
80103ce9:	eb 10                	jmp    80103cfb <exit+0xcb>
80103ceb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103cef:	90                   	nop
80103cf0:	83 ea 80             	sub    $0xffffff80,%edx
80103cf3:	81 fa 54 4d 11 80    	cmp    $0x80114d54,%edx
80103cf9:	74 33                	je     80103d2e <exit+0xfe>
80103cfb:	39 72 14             	cmp    %esi,0x14(%edx)
80103cfe:	75 f0                	jne    80103cf0 <exit+0xc0>
80103d00:	83 7a 0c 05          	cmpl   $0x5,0xc(%edx)
80103d04:	89 4a 14             	mov    %ecx,0x14(%edx)
80103d07:	75 e7                	jne    80103cf0 <exit+0xc0>
80103d09:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103d0e:	eb 0a                	jmp    80103d1a <exit+0xea>
80103d10:	83 e8 80             	sub    $0xffffff80,%eax
80103d13:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103d18:	74 d6                	je     80103cf0 <exit+0xc0>
80103d1a:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103d1e:	75 f0                	jne    80103d10 <exit+0xe0>
80103d20:	3b 48 20             	cmp    0x20(%eax),%ecx
80103d23:	75 eb                	jne    80103d10 <exit+0xe0>
80103d25:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103d2c:	eb e2                	jmp    80103d10 <exit+0xe0>
80103d2e:	c7 46 0c 05 00 00 00 	movl   $0x5,0xc(%esi)
80103d35:	e8 36 fe ff ff       	call   80103b70 <sched>
80103d3a:	83 ec 0c             	sub    $0xc,%esp
80103d3d:	68 7d 74 10 80       	push   $0x8010747d
80103d42:	e8 59 c6 ff ff       	call   801003a0 <panic>
80103d47:	83 ec 0c             	sub    $0xc,%esp
80103d4a:	68 70 74 10 80       	push   $0x80107470
80103d4f:	e8 4c c6 ff ff       	call   801003a0 <panic>
80103d54:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103d5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103d5f:	90                   	nop

80103d60 <yield>:
80103d60:	55                   	push   %ebp
80103d61:	89 e5                	mov    %esp,%ebp
80103d63:	53                   	push   %ebx
80103d64:	83 ec 10             	sub    $0x10,%esp
80103d67:	68 20 2d 11 80       	push   $0x80112d20
80103d6c:	e8 bf 05 00 00       	call   80104330 <acquire>
80103d71:	e8 6a 05 00 00       	call   801042e0 <pushcli>
80103d76:	e8 05 fa ff ff       	call   80103780 <mycpu>
80103d7b:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103d81:	e8 6a 06 00 00       	call   801043f0 <popcli>
80103d86:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)
80103d8d:	e8 de fd ff ff       	call   80103b70 <sched>
80103d92:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103d99:	e8 b2 06 00 00       	call   80104450 <release>
80103d9e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103da1:	83 c4 10             	add    $0x10,%esp
80103da4:	c9                   	leave  
80103da5:	c3                   	ret    
80103da6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103dad:	8d 76 00             	lea    0x0(%esi),%esi

80103db0 <sleep>:
80103db0:	55                   	push   %ebp
80103db1:	89 e5                	mov    %esp,%ebp
80103db3:	57                   	push   %edi
80103db4:	56                   	push   %esi
80103db5:	53                   	push   %ebx
80103db6:	83 ec 0c             	sub    $0xc,%esp
80103db9:	8b 7d 08             	mov    0x8(%ebp),%edi
80103dbc:	8b 75 0c             	mov    0xc(%ebp),%esi
80103dbf:	e8 1c 05 00 00       	call   801042e0 <pushcli>
80103dc4:	e8 b7 f9 ff ff       	call   80103780 <mycpu>
80103dc9:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
80103dcf:	e8 1c 06 00 00       	call   801043f0 <popcli>
80103dd4:	85 db                	test   %ebx,%ebx
80103dd6:	0f 84 87 00 00 00    	je     80103e63 <sleep+0xb3>
80103ddc:	85 f6                	test   %esi,%esi
80103dde:	74 76                	je     80103e56 <sleep+0xa6>
80103de0:	81 fe 20 2d 11 80    	cmp    $0x80112d20,%esi
80103de6:	74 50                	je     80103e38 <sleep+0x88>
80103de8:	83 ec 0c             	sub    $0xc,%esp
80103deb:	68 20 2d 11 80       	push   $0x80112d20
80103df0:	e8 3b 05 00 00       	call   80104330 <acquire>
80103df5:	89 34 24             	mov    %esi,(%esp)
80103df8:	e8 53 06 00 00       	call   80104450 <release>
80103dfd:	89 7b 20             	mov    %edi,0x20(%ebx)
80103e00:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
80103e07:	e8 64 fd ff ff       	call   80103b70 <sched>
80103e0c:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
80103e13:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103e1a:	e8 31 06 00 00       	call   80104450 <release>
80103e1f:	89 75 08             	mov    %esi,0x8(%ebp)
80103e22:	83 c4 10             	add    $0x10,%esp
80103e25:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103e28:	5b                   	pop    %ebx
80103e29:	5e                   	pop    %esi
80103e2a:	5f                   	pop    %edi
80103e2b:	5d                   	pop    %ebp
80103e2c:	e9 ff 04 00 00       	jmp    80104330 <acquire>
80103e31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103e38:	89 7b 20             	mov    %edi,0x20(%ebx)
80103e3b:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)
80103e42:	e8 29 fd ff ff       	call   80103b70 <sched>
80103e47:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
80103e4e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80103e51:	5b                   	pop    %ebx
80103e52:	5e                   	pop    %esi
80103e53:	5f                   	pop    %edi
80103e54:	5d                   	pop    %ebp
80103e55:	c3                   	ret    
80103e56:	83 ec 0c             	sub    $0xc,%esp
80103e59:	68 8f 74 10 80       	push   $0x8010748f
80103e5e:	e8 3d c5 ff ff       	call   801003a0 <panic>
80103e63:	83 ec 0c             	sub    $0xc,%esp
80103e66:	68 89 74 10 80       	push   $0x80107489
80103e6b:	e8 30 c5 ff ff       	call   801003a0 <panic>

80103e70 <wait>:
80103e70:	55                   	push   %ebp
80103e71:	89 e5                	mov    %esp,%ebp
80103e73:	56                   	push   %esi
80103e74:	53                   	push   %ebx
80103e75:	e8 66 04 00 00       	call   801042e0 <pushcli>
80103e7a:	e8 01 f9 ff ff       	call   80103780 <mycpu>
80103e7f:	8b b0 ac 00 00 00    	mov    0xac(%eax),%esi
80103e85:	e8 66 05 00 00       	call   801043f0 <popcli>
80103e8a:	83 ec 0c             	sub    $0xc,%esp
80103e8d:	68 20 2d 11 80       	push   $0x80112d20
80103e92:	e8 99 04 00 00       	call   80104330 <acquire>
80103e97:	83 c4 10             	add    $0x10,%esp
80103e9a:	31 c0                	xor    %eax,%eax
80103e9c:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103ea1:	eb 10                	jmp    80103eb3 <wait+0x43>
80103ea3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103ea7:	90                   	nop
80103ea8:	83 eb 80             	sub    $0xffffff80,%ebx
80103eab:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103eb1:	74 1b                	je     80103ece <wait+0x5e>
80103eb3:	39 73 14             	cmp    %esi,0x14(%ebx)
80103eb6:	75 f0                	jne    80103ea8 <wait+0x38>
80103eb8:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80103ebc:	74 32                	je     80103ef0 <wait+0x80>
80103ebe:	83 eb 80             	sub    $0xffffff80,%ebx
80103ec1:	b8 01 00 00 00       	mov    $0x1,%eax
80103ec6:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103ecc:	75 e5                	jne    80103eb3 <wait+0x43>
80103ece:	85 c0                	test   %eax,%eax
80103ed0:	74 74                	je     80103f46 <wait+0xd6>
80103ed2:	8b 46 24             	mov    0x24(%esi),%eax
80103ed5:	85 c0                	test   %eax,%eax
80103ed7:	75 6d                	jne    80103f46 <wait+0xd6>
80103ed9:	83 ec 08             	sub    $0x8,%esp
80103edc:	68 20 2d 11 80       	push   $0x80112d20
80103ee1:	56                   	push   %esi
80103ee2:	e8 c9 fe ff ff       	call   80103db0 <sleep>
80103ee7:	83 c4 10             	add    $0x10,%esp
80103eea:	eb ae                	jmp    80103e9a <wait+0x2a>
80103eec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103ef0:	83 ec 0c             	sub    $0xc,%esp
80103ef3:	ff 73 08             	pushl  0x8(%ebx)
80103ef6:	8b 73 10             	mov    0x10(%ebx),%esi
80103ef9:	e8 32 e4 ff ff       	call   80102330 <kfree>
80103efe:	5a                   	pop    %edx
80103eff:	ff 73 04             	pushl  0x4(%ebx)
80103f02:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
80103f09:	e8 82 2c 00 00       	call   80106b90 <freevm>
80103f0e:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103f15:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
80103f1c:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
80103f23:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
80103f27:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
80103f2e:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80103f35:	e8 16 05 00 00       	call   80104450 <release>
80103f3a:	83 c4 10             	add    $0x10,%esp
80103f3d:	8d 65 f8             	lea    -0x8(%ebp),%esp
80103f40:	89 f0                	mov    %esi,%eax
80103f42:	5b                   	pop    %ebx
80103f43:	5e                   	pop    %esi
80103f44:	5d                   	pop    %ebp
80103f45:	c3                   	ret    
80103f46:	83 ec 0c             	sub    $0xc,%esp
80103f49:	be ff ff ff ff       	mov    $0xffffffff,%esi
80103f4e:	68 20 2d 11 80       	push   $0x80112d20
80103f53:	e8 f8 04 00 00       	call   80104450 <release>
80103f58:	83 c4 10             	add    $0x10,%esp
80103f5b:	eb e0                	jmp    80103f3d <wait+0xcd>
80103f5d:	8d 76 00             	lea    0x0(%esi),%esi

80103f60 <wakeup>:
80103f60:	55                   	push   %ebp
80103f61:	89 e5                	mov    %esp,%ebp
80103f63:	53                   	push   %ebx
80103f64:	83 ec 10             	sub    $0x10,%esp
80103f67:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f6a:	68 20 2d 11 80       	push   $0x80112d20
80103f6f:	e8 bc 03 00 00       	call   80104330 <acquire>
80103f74:	83 c4 10             	add    $0x10,%esp
80103f77:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103f7c:	eb 0c                	jmp    80103f8a <wakeup+0x2a>
80103f7e:	66 90                	xchg   %ax,%ax
80103f80:	83 e8 80             	sub    $0xffffff80,%eax
80103f83:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103f88:	74 1c                	je     80103fa6 <wakeup+0x46>
80103f8a:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103f8e:	75 f0                	jne    80103f80 <wakeup+0x20>
80103f90:	3b 58 20             	cmp    0x20(%eax),%ebx
80103f93:	75 eb                	jne    80103f80 <wakeup+0x20>
80103f95:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103f9c:	83 e8 80             	sub    $0xffffff80,%eax
80103f9f:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103fa4:	75 e4                	jne    80103f8a <wakeup+0x2a>
80103fa6:	c7 45 08 20 2d 11 80 	movl   $0x80112d20,0x8(%ebp)
80103fad:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80103fb0:	c9                   	leave  
80103fb1:	e9 9a 04 00 00       	jmp    80104450 <release>
80103fb6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103fbd:	8d 76 00             	lea    0x0(%esi),%esi

80103fc0 <kill>:
80103fc0:	55                   	push   %ebp
80103fc1:	89 e5                	mov    %esp,%ebp
80103fc3:	53                   	push   %ebx
80103fc4:	83 ec 10             	sub    $0x10,%esp
80103fc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103fca:	68 20 2d 11 80       	push   $0x80112d20
80103fcf:	e8 5c 03 00 00       	call   80104330 <acquire>
80103fd4:	83 c4 10             	add    $0x10,%esp
80103fd7:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103fdc:	eb 0c                	jmp    80103fea <kill+0x2a>
80103fde:	66 90                	xchg   %ax,%ax
80103fe0:	83 e8 80             	sub    $0xffffff80,%eax
80103fe3:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103fe8:	74 36                	je     80104020 <kill+0x60>
80103fea:	39 58 10             	cmp    %ebx,0x10(%eax)
80103fed:	75 f1                	jne    80103fe0 <kill+0x20>
80103fef:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103ff3:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
80103ffa:	75 07                	jne    80104003 <kill+0x43>
80103ffc:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80104003:	83 ec 0c             	sub    $0xc,%esp
80104006:	68 20 2d 11 80       	push   $0x80112d20
8010400b:	e8 40 04 00 00       	call   80104450 <release>
80104010:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104013:	83 c4 10             	add    $0x10,%esp
80104016:	31 c0                	xor    %eax,%eax
80104018:	c9                   	leave  
80104019:	c3                   	ret    
8010401a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104020:	83 ec 0c             	sub    $0xc,%esp
80104023:	68 20 2d 11 80       	push   $0x80112d20
80104028:	e8 23 04 00 00       	call   80104450 <release>
8010402d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104030:	83 c4 10             	add    $0x10,%esp
80104033:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104038:	c9                   	leave  
80104039:	c3                   	ret    
8010403a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104040 <procdump>:
80104040:	55                   	push   %ebp
80104041:	89 e5                	mov    %esp,%ebp
80104043:	57                   	push   %edi
80104044:	56                   	push   %esi
80104045:	8d 75 e8             	lea    -0x18(%ebp),%esi
80104048:	53                   	push   %ebx
80104049:	bb c0 2d 11 80       	mov    $0x80112dc0,%ebx
8010404e:	83 ec 48             	sub    $0x48,%esp
80104051:	68 08 75 10 80       	push   $0x80107508
80104056:	e8 15 c6 ff ff       	call   80100670 <cprintf>
8010405b:	83 c4 10             	add    $0x10,%esp
8010405e:	eb 1f                	jmp    8010407f <procdump+0x3f>
80104060:	83 ec 0c             	sub    $0xc,%esp
80104063:	68 5b 78 10 80       	push   $0x8010785b
80104068:	e8 03 c6 ff ff       	call   80100670 <cprintf>
8010406d:	83 c4 10             	add    $0x10,%esp
80104070:	83 eb 80             	sub    $0xffffff80,%ebx
80104073:	81 fb c0 4d 11 80    	cmp    $0x80114dc0,%ebx
80104079:	0f 84 91 00 00 00    	je     80104110 <procdump+0xd0>
8010407f:	8b 43 a0             	mov    -0x60(%ebx),%eax
80104082:	85 c0                	test   %eax,%eax
80104084:	74 ea                	je     80104070 <procdump+0x30>
80104086:	ba a0 74 10 80       	mov    $0x801074a0,%edx
8010408b:	83 f8 05             	cmp    $0x5,%eax
8010408e:	77 11                	ja     801040a1 <procdump+0x61>
80104090:	8b 14 85 4c 75 10 80 	mov    -0x7fef8ab4(,%eax,4),%edx
80104097:	b8 a0 74 10 80       	mov    $0x801074a0,%eax
8010409c:	85 d2                	test   %edx,%edx
8010409e:	0f 44 d0             	cmove  %eax,%edx
801040a1:	83 ec 08             	sub    $0x8,%esp
801040a4:	a1 a0 55 11 80       	mov    0x801155a0,%eax
801040a9:	2b 43 10             	sub    0x10(%ebx),%eax
801040ac:	ff 73 94             	pushl  -0x6c(%ebx)
801040af:	52                   	push   %edx
801040b0:	50                   	push   %eax
801040b1:	53                   	push   %ebx
801040b2:	ff 73 a4             	pushl  -0x5c(%ebx)
801040b5:	68 a4 74 10 80       	push   $0x801074a4
801040ba:	e8 b1 c5 ff ff       	call   80100670 <cprintf>
801040bf:	83 c4 20             	add    $0x20,%esp
801040c2:	83 7b a0 02          	cmpl   $0x2,-0x60(%ebx)
801040c6:	75 98                	jne    80104060 <procdump+0x20>
801040c8:	83 ec 08             	sub    $0x8,%esp
801040cb:	8d 45 c0             	lea    -0x40(%ebp),%eax
801040ce:	8d 7d c0             	lea    -0x40(%ebp),%edi
801040d1:	50                   	push   %eax
801040d2:	8b 43 b0             	mov    -0x50(%ebx),%eax
801040d5:	8b 40 0c             	mov    0xc(%eax),%eax
801040d8:	83 c0 08             	add    $0x8,%eax
801040db:	50                   	push   %eax
801040dc:	e8 6f 01 00 00       	call   80104250 <getcallerpcs>
801040e1:	83 c4 10             	add    $0x10,%esp
801040e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801040e8:	8b 17                	mov    (%edi),%edx
801040ea:	85 d2                	test   %edx,%edx
801040ec:	0f 84 6e ff ff ff    	je     80104060 <procdump+0x20>
801040f2:	83 ec 08             	sub    $0x8,%esp
801040f5:	83 c7 04             	add    $0x4,%edi
801040f8:	52                   	push   %edx
801040f9:	68 e1 6e 10 80       	push   $0x80106ee1
801040fe:	e8 6d c5 ff ff       	call   80100670 <cprintf>
80104103:	83 c4 10             	add    $0x10,%esp
80104106:	39 fe                	cmp    %edi,%esi
80104108:	75 de                	jne    801040e8 <procdump+0xa8>
8010410a:	e9 51 ff ff ff       	jmp    80104060 <procdump+0x20>
8010410f:	90                   	nop
80104110:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104113:	5b                   	pop    %ebx
80104114:	5e                   	pop    %esi
80104115:	5f                   	pop    %edi
80104116:	5d                   	pop    %ebp
80104117:	c3                   	ret    
80104118:	66 90                	xchg   %ax,%ax
8010411a:	66 90                	xchg   %ax,%ax
8010411c:	66 90                	xchg   %ax,%ax
8010411e:	66 90                	xchg   %ax,%ax

80104120 <initsleeplock>:
80104120:	55                   	push   %ebp
80104121:	89 e5                	mov    %esp,%ebp
80104123:	53                   	push   %ebx
80104124:	83 ec 0c             	sub    $0xc,%esp
80104127:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010412a:	68 64 75 10 80       	push   $0x80107564
8010412f:	8d 43 04             	lea    0x4(%ebx),%eax
80104132:	50                   	push   %eax
80104133:	e8 f8 00 00 00       	call   80104230 <initlock>
80104138:	8b 45 0c             	mov    0xc(%ebp),%eax
8010413b:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80104141:	83 c4 10             	add    $0x10,%esp
80104144:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
8010414b:	89 43 38             	mov    %eax,0x38(%ebx)
8010414e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104151:	c9                   	leave  
80104152:	c3                   	ret    
80104153:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010415a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104160 <acquiresleep>:
80104160:	55                   	push   %ebp
80104161:	89 e5                	mov    %esp,%ebp
80104163:	56                   	push   %esi
80104164:	53                   	push   %ebx
80104165:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104168:	8d 73 04             	lea    0x4(%ebx),%esi
8010416b:	83 ec 0c             	sub    $0xc,%esp
8010416e:	56                   	push   %esi
8010416f:	e8 bc 01 00 00       	call   80104330 <acquire>
80104174:	8b 13                	mov    (%ebx),%edx
80104176:	83 c4 10             	add    $0x10,%esp
80104179:	85 d2                	test   %edx,%edx
8010417b:	74 16                	je     80104193 <acquiresleep+0x33>
8010417d:	8d 76 00             	lea    0x0(%esi),%esi
80104180:	83 ec 08             	sub    $0x8,%esp
80104183:	56                   	push   %esi
80104184:	53                   	push   %ebx
80104185:	e8 26 fc ff ff       	call   80103db0 <sleep>
8010418a:	8b 03                	mov    (%ebx),%eax
8010418c:	83 c4 10             	add    $0x10,%esp
8010418f:	85 c0                	test   %eax,%eax
80104191:	75 ed                	jne    80104180 <acquiresleep+0x20>
80104193:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80104199:	e8 72 f6 ff ff       	call   80103810 <myproc>
8010419e:	8b 40 10             	mov    0x10(%eax),%eax
801041a1:	89 43 3c             	mov    %eax,0x3c(%ebx)
801041a4:	89 75 08             	mov    %esi,0x8(%ebp)
801041a7:	8d 65 f8             	lea    -0x8(%ebp),%esp
801041aa:	5b                   	pop    %ebx
801041ab:	5e                   	pop    %esi
801041ac:	5d                   	pop    %ebp
801041ad:	e9 9e 02 00 00       	jmp    80104450 <release>
801041b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801041b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801041c0 <releasesleep>:
801041c0:	55                   	push   %ebp
801041c1:	89 e5                	mov    %esp,%ebp
801041c3:	56                   	push   %esi
801041c4:	53                   	push   %ebx
801041c5:	8b 5d 08             	mov    0x8(%ebp),%ebx
801041c8:	8d 73 04             	lea    0x4(%ebx),%esi
801041cb:	83 ec 0c             	sub    $0xc,%esp
801041ce:	56                   	push   %esi
801041cf:	e8 5c 01 00 00       	call   80104330 <acquire>
801041d4:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
801041da:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
801041e1:	89 1c 24             	mov    %ebx,(%esp)
801041e4:	e8 77 fd ff ff       	call   80103f60 <wakeup>
801041e9:	89 75 08             	mov    %esi,0x8(%ebp)
801041ec:	83 c4 10             	add    $0x10,%esp
801041ef:	8d 65 f8             	lea    -0x8(%ebp),%esp
801041f2:	5b                   	pop    %ebx
801041f3:	5e                   	pop    %esi
801041f4:	5d                   	pop    %ebp
801041f5:	e9 56 02 00 00       	jmp    80104450 <release>
801041fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104200 <holdingsleep>:
80104200:	55                   	push   %ebp
80104201:	89 e5                	mov    %esp,%ebp
80104203:	56                   	push   %esi
80104204:	53                   	push   %ebx
80104205:	8b 75 08             	mov    0x8(%ebp),%esi
80104208:	8d 5e 04             	lea    0x4(%esi),%ebx
8010420b:	83 ec 0c             	sub    $0xc,%esp
8010420e:	53                   	push   %ebx
8010420f:	e8 1c 01 00 00       	call   80104330 <acquire>
80104214:	8b 36                	mov    (%esi),%esi
80104216:	89 1c 24             	mov    %ebx,(%esp)
80104219:	e8 32 02 00 00       	call   80104450 <release>
8010421e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104221:	89 f0                	mov    %esi,%eax
80104223:	5b                   	pop    %ebx
80104224:	5e                   	pop    %esi
80104225:	5d                   	pop    %ebp
80104226:	c3                   	ret    
80104227:	66 90                	xchg   %ax,%ax
80104229:	66 90                	xchg   %ax,%ax
8010422b:	66 90                	xchg   %ax,%ax
8010422d:	66 90                	xchg   %ax,%ax
8010422f:	90                   	nop

80104230 <initlock>:
80104230:	55                   	push   %ebp
80104231:	89 e5                	mov    %esp,%ebp
80104233:	8b 45 08             	mov    0x8(%ebp),%eax
80104236:	8b 55 0c             	mov    0xc(%ebp),%edx
80104239:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
8010423f:	89 50 04             	mov    %edx,0x4(%eax)
80104242:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
80104249:	5d                   	pop    %ebp
8010424a:	c3                   	ret    
8010424b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010424f:	90                   	nop

80104250 <getcallerpcs>:
80104250:	55                   	push   %ebp
80104251:	31 d2                	xor    %edx,%edx
80104253:	89 e5                	mov    %esp,%ebp
80104255:	53                   	push   %ebx
80104256:	8b 45 08             	mov    0x8(%ebp),%eax
80104259:	8b 4d 0c             	mov    0xc(%ebp),%ecx
8010425c:	83 e8 08             	sub    $0x8,%eax
8010425f:	90                   	nop
80104260:	8d 98 00 00 00 80    	lea    -0x80000000(%eax),%ebx
80104266:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
8010426c:	77 1a                	ja     80104288 <getcallerpcs+0x38>
8010426e:	8b 58 04             	mov    0x4(%eax),%ebx
80104271:	89 1c 91             	mov    %ebx,(%ecx,%edx,4)
80104274:	83 c2 01             	add    $0x1,%edx
80104277:	8b 00                	mov    (%eax),%eax
80104279:	83 fa 0a             	cmp    $0xa,%edx
8010427c:	75 e2                	jne    80104260 <getcallerpcs+0x10>
8010427e:	5b                   	pop    %ebx
8010427f:	5d                   	pop    %ebp
80104280:	c3                   	ret    
80104281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104288:	8d 04 91             	lea    (%ecx,%edx,4),%eax
8010428b:	8d 51 28             	lea    0x28(%ecx),%edx
8010428e:	66 90                	xchg   %ax,%ax
80104290:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80104296:	83 c0 04             	add    $0x4,%eax
80104299:	39 d0                	cmp    %edx,%eax
8010429b:	75 f3                	jne    80104290 <getcallerpcs+0x40>
8010429d:	5b                   	pop    %ebx
8010429e:	5d                   	pop    %ebp
8010429f:	c3                   	ret    

801042a0 <holding>:
801042a0:	55                   	push   %ebp
801042a1:	89 e5                	mov    %esp,%ebp
801042a3:	53                   	push   %ebx
801042a4:	83 ec 04             	sub    $0x4,%esp
801042a7:	8b 55 08             	mov    0x8(%ebp),%edx
801042aa:	8b 02                	mov    (%edx),%eax
801042ac:	85 c0                	test   %eax,%eax
801042ae:	75 10                	jne    801042c0 <holding+0x20>
801042b0:	83 c4 04             	add    $0x4,%esp
801042b3:	31 c0                	xor    %eax,%eax
801042b5:	5b                   	pop    %ebx
801042b6:	5d                   	pop    %ebp
801042b7:	c3                   	ret    
801042b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801042bf:	90                   	nop
801042c0:	8b 5a 08             	mov    0x8(%edx),%ebx
801042c3:	e8 b8 f4 ff ff       	call   80103780 <mycpu>
801042c8:	39 c3                	cmp    %eax,%ebx
801042ca:	0f 94 c0             	sete   %al
801042cd:	83 c4 04             	add    $0x4,%esp
801042d0:	0f b6 c0             	movzbl %al,%eax
801042d3:	5b                   	pop    %ebx
801042d4:	5d                   	pop    %ebp
801042d5:	c3                   	ret    
801042d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801042dd:	8d 76 00             	lea    0x0(%esi),%esi

801042e0 <pushcli>:
801042e0:	55                   	push   %ebp
801042e1:	89 e5                	mov    %esp,%ebp
801042e3:	53                   	push   %ebx
801042e4:	83 ec 04             	sub    $0x4,%esp
801042e7:	9c                   	pushf  
801042e8:	5b                   	pop    %ebx
801042e9:	fa                   	cli    
801042ea:	e8 91 f4 ff ff       	call   80103780 <mycpu>
801042ef:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
801042f5:	85 c0                	test   %eax,%eax
801042f7:	74 17                	je     80104310 <pushcli+0x30>
801042f9:	e8 82 f4 ff ff       	call   80103780 <mycpu>
801042fe:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
80104305:	83 c4 04             	add    $0x4,%esp
80104308:	5b                   	pop    %ebx
80104309:	5d                   	pop    %ebp
8010430a:	c3                   	ret    
8010430b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010430f:	90                   	nop
80104310:	e8 6b f4 ff ff       	call   80103780 <mycpu>
80104315:	81 e3 00 02 00 00    	and    $0x200,%ebx
8010431b:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
80104321:	eb d6                	jmp    801042f9 <pushcli+0x19>
80104323:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010432a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104330 <acquire>:
80104330:	55                   	push   %ebp
80104331:	89 e5                	mov    %esp,%ebp
80104333:	56                   	push   %esi
80104334:	53                   	push   %ebx
80104335:	e8 a6 ff ff ff       	call   801042e0 <pushcli>
8010433a:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010433d:	8b 03                	mov    (%ebx),%eax
8010433f:	85 c0                	test   %eax,%eax
80104341:	0f 85 81 00 00 00    	jne    801043c8 <acquire+0x98>
80104347:	ba 01 00 00 00       	mov    $0x1,%edx
8010434c:	eb 05                	jmp    80104353 <acquire+0x23>
8010434e:	66 90                	xchg   %ax,%ax
80104350:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104353:	89 d0                	mov    %edx,%eax
80104355:	f0 87 03             	lock xchg %eax,(%ebx)
80104358:	85 c0                	test   %eax,%eax
8010435a:	75 f4                	jne    80104350 <acquire+0x20>
8010435c:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
80104361:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104364:	e8 17 f4 ff ff       	call   80103780 <mycpu>
80104369:	89 ea                	mov    %ebp,%edx
8010436b:	89 43 08             	mov    %eax,0x8(%ebx)
8010436e:	31 c0                	xor    %eax,%eax
80104370:	8d 8a 00 00 00 80    	lea    -0x80000000(%edx),%ecx
80104376:	81 f9 fe ff ff 7f    	cmp    $0x7ffffffe,%ecx
8010437c:	77 22                	ja     801043a0 <acquire+0x70>
8010437e:	8b 4a 04             	mov    0x4(%edx),%ecx
80104381:	89 4c 83 0c          	mov    %ecx,0xc(%ebx,%eax,4)
80104385:	83 c0 01             	add    $0x1,%eax
80104388:	8b 12                	mov    (%edx),%edx
8010438a:	83 f8 0a             	cmp    $0xa,%eax
8010438d:	75 e1                	jne    80104370 <acquire+0x40>
8010438f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104392:	5b                   	pop    %ebx
80104393:	5e                   	pop    %esi
80104394:	5d                   	pop    %ebp
80104395:	c3                   	ret    
80104396:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010439d:	8d 76 00             	lea    0x0(%esi),%esi
801043a0:	8d 44 83 0c          	lea    0xc(%ebx,%eax,4),%eax
801043a4:	83 c3 34             	add    $0x34,%ebx
801043a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801043ae:	66 90                	xchg   %ax,%ax
801043b0:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
801043b6:	83 c0 04             	add    $0x4,%eax
801043b9:	39 d8                	cmp    %ebx,%eax
801043bb:	75 f3                	jne    801043b0 <acquire+0x80>
801043bd:	8d 65 f8             	lea    -0x8(%ebp),%esp
801043c0:	5b                   	pop    %ebx
801043c1:	5e                   	pop    %esi
801043c2:	5d                   	pop    %ebp
801043c3:	c3                   	ret    
801043c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801043c8:	8b 73 08             	mov    0x8(%ebx),%esi
801043cb:	e8 b0 f3 ff ff       	call   80103780 <mycpu>
801043d0:	39 c6                	cmp    %eax,%esi
801043d2:	0f 85 6f ff ff ff    	jne    80104347 <acquire+0x17>
801043d8:	83 ec 0c             	sub    $0xc,%esp
801043db:	68 6f 75 10 80       	push   $0x8010756f
801043e0:	e8 bb bf ff ff       	call   801003a0 <panic>
801043e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801043ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801043f0 <popcli>:
801043f0:	55                   	push   %ebp
801043f1:	89 e5                	mov    %esp,%ebp
801043f3:	83 ec 08             	sub    $0x8,%esp
801043f6:	9c                   	pushf  
801043f7:	58                   	pop    %eax
801043f8:	f6 c4 02             	test   $0x2,%ah
801043fb:	75 35                	jne    80104432 <popcli+0x42>
801043fd:	e8 7e f3 ff ff       	call   80103780 <mycpu>
80104402:	83 a8 a4 00 00 00 01 	subl   $0x1,0xa4(%eax)
80104409:	78 34                	js     8010443f <popcli+0x4f>
8010440b:	e8 70 f3 ff ff       	call   80103780 <mycpu>
80104410:	8b 90 a4 00 00 00    	mov    0xa4(%eax),%edx
80104416:	85 d2                	test   %edx,%edx
80104418:	74 06                	je     80104420 <popcli+0x30>
8010441a:	c9                   	leave  
8010441b:	c3                   	ret    
8010441c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104420:	e8 5b f3 ff ff       	call   80103780 <mycpu>
80104425:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
8010442b:	85 c0                	test   %eax,%eax
8010442d:	74 eb                	je     8010441a <popcli+0x2a>
8010442f:	fb                   	sti    
80104430:	c9                   	leave  
80104431:	c3                   	ret    
80104432:	83 ec 0c             	sub    $0xc,%esp
80104435:	68 77 75 10 80       	push   $0x80107577
8010443a:	e8 61 bf ff ff       	call   801003a0 <panic>
8010443f:	83 ec 0c             	sub    $0xc,%esp
80104442:	68 8e 75 10 80       	push   $0x8010758e
80104447:	e8 54 bf ff ff       	call   801003a0 <panic>
8010444c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104450 <release>:
80104450:	55                   	push   %ebp
80104451:	89 e5                	mov    %esp,%ebp
80104453:	56                   	push   %esi
80104454:	53                   	push   %ebx
80104455:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104458:	8b 03                	mov    (%ebx),%eax
8010445a:	85 c0                	test   %eax,%eax
8010445c:	75 12                	jne    80104470 <release+0x20>
8010445e:	83 ec 0c             	sub    $0xc,%esp
80104461:	68 95 75 10 80       	push   $0x80107595
80104466:	e8 35 bf ff ff       	call   801003a0 <panic>
8010446b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010446f:	90                   	nop
80104470:	8b 73 08             	mov    0x8(%ebx),%esi
80104473:	e8 08 f3 ff ff       	call   80103780 <mycpu>
80104478:	39 c6                	cmp    %eax,%esi
8010447a:	75 e2                	jne    8010445e <release+0xe>
8010447c:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80104483:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
8010448a:	f0 83 0c 24 00       	lock orl $0x0,(%esp)
8010448f:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80104495:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104498:	5b                   	pop    %ebx
80104499:	5e                   	pop    %esi
8010449a:	5d                   	pop    %ebp
8010449b:	e9 50 ff ff ff       	jmp    801043f0 <popcli>

801044a0 <memset>:
801044a0:	55                   	push   %ebp
801044a1:	89 e5                	mov    %esp,%ebp
801044a3:	57                   	push   %edi
801044a4:	8b 55 08             	mov    0x8(%ebp),%edx
801044a7:	8b 4d 10             	mov    0x10(%ebp),%ecx
801044aa:	53                   	push   %ebx
801044ab:	8b 45 0c             	mov    0xc(%ebp),%eax
801044ae:	89 d7                	mov    %edx,%edi
801044b0:	09 cf                	or     %ecx,%edi
801044b2:	83 e7 03             	and    $0x3,%edi
801044b5:	75 29                	jne    801044e0 <memset+0x40>
801044b7:	0f b6 f8             	movzbl %al,%edi
801044ba:	c1 e0 18             	shl    $0x18,%eax
801044bd:	89 fb                	mov    %edi,%ebx
801044bf:	c1 e9 02             	shr    $0x2,%ecx
801044c2:	c1 e3 10             	shl    $0x10,%ebx
801044c5:	09 d8                	or     %ebx,%eax
801044c7:	09 f8                	or     %edi,%eax
801044c9:	c1 e7 08             	shl    $0x8,%edi
801044cc:	09 f8                	or     %edi,%eax
801044ce:	89 d7                	mov    %edx,%edi
801044d0:	fc                   	cld    
801044d1:	f3 ab                	rep stos %eax,%es:(%edi)
801044d3:	5b                   	pop    %ebx
801044d4:	89 d0                	mov    %edx,%eax
801044d6:	5f                   	pop    %edi
801044d7:	5d                   	pop    %ebp
801044d8:	c3                   	ret    
801044d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801044e0:	89 d7                	mov    %edx,%edi
801044e2:	fc                   	cld    
801044e3:	f3 aa                	rep stos %al,%es:(%edi)
801044e5:	5b                   	pop    %ebx
801044e6:	89 d0                	mov    %edx,%eax
801044e8:	5f                   	pop    %edi
801044e9:	5d                   	pop    %ebp
801044ea:	c3                   	ret    
801044eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801044ef:	90                   	nop

801044f0 <memcmp>:
801044f0:	55                   	push   %ebp
801044f1:	89 e5                	mov    %esp,%ebp
801044f3:	56                   	push   %esi
801044f4:	8b 75 10             	mov    0x10(%ebp),%esi
801044f7:	8b 55 08             	mov    0x8(%ebp),%edx
801044fa:	53                   	push   %ebx
801044fb:	8b 45 0c             	mov    0xc(%ebp),%eax
801044fe:	85 f6                	test   %esi,%esi
80104500:	74 2e                	je     80104530 <memcmp+0x40>
80104502:	01 c6                	add    %eax,%esi
80104504:	eb 14                	jmp    8010451a <memcmp+0x2a>
80104506:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010450d:	8d 76 00             	lea    0x0(%esi),%esi
80104510:	83 c0 01             	add    $0x1,%eax
80104513:	83 c2 01             	add    $0x1,%edx
80104516:	39 f0                	cmp    %esi,%eax
80104518:	74 16                	je     80104530 <memcmp+0x40>
8010451a:	0f b6 0a             	movzbl (%edx),%ecx
8010451d:	0f b6 18             	movzbl (%eax),%ebx
80104520:	38 d9                	cmp    %bl,%cl
80104522:	74 ec                	je     80104510 <memcmp+0x20>
80104524:	0f b6 c1             	movzbl %cl,%eax
80104527:	29 d8                	sub    %ebx,%eax
80104529:	5b                   	pop    %ebx
8010452a:	5e                   	pop    %esi
8010452b:	5d                   	pop    %ebp
8010452c:	c3                   	ret    
8010452d:	8d 76 00             	lea    0x0(%esi),%esi
80104530:	5b                   	pop    %ebx
80104531:	31 c0                	xor    %eax,%eax
80104533:	5e                   	pop    %esi
80104534:	5d                   	pop    %ebp
80104535:	c3                   	ret    
80104536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010453d:	8d 76 00             	lea    0x0(%esi),%esi

80104540 <memmove>:
80104540:	55                   	push   %ebp
80104541:	89 e5                	mov    %esp,%ebp
80104543:	57                   	push   %edi
80104544:	8b 55 08             	mov    0x8(%ebp),%edx
80104547:	8b 4d 10             	mov    0x10(%ebp),%ecx
8010454a:	56                   	push   %esi
8010454b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010454e:	39 d6                	cmp    %edx,%esi
80104550:	73 26                	jae    80104578 <memmove+0x38>
80104552:	8d 3c 0e             	lea    (%esi,%ecx,1),%edi
80104555:	39 fa                	cmp    %edi,%edx
80104557:	73 1f                	jae    80104578 <memmove+0x38>
80104559:	8d 41 ff             	lea    -0x1(%ecx),%eax
8010455c:	85 c9                	test   %ecx,%ecx
8010455e:	74 0f                	je     8010456f <memmove+0x2f>
80104560:	0f b6 0c 06          	movzbl (%esi,%eax,1),%ecx
80104564:	88 0c 02             	mov    %cl,(%edx,%eax,1)
80104567:	83 e8 01             	sub    $0x1,%eax
8010456a:	83 f8 ff             	cmp    $0xffffffff,%eax
8010456d:	75 f1                	jne    80104560 <memmove+0x20>
8010456f:	5e                   	pop    %esi
80104570:	89 d0                	mov    %edx,%eax
80104572:	5f                   	pop    %edi
80104573:	5d                   	pop    %ebp
80104574:	c3                   	ret    
80104575:	8d 76 00             	lea    0x0(%esi),%esi
80104578:	8d 04 0e             	lea    (%esi,%ecx,1),%eax
8010457b:	89 d7                	mov    %edx,%edi
8010457d:	85 c9                	test   %ecx,%ecx
8010457f:	74 ee                	je     8010456f <memmove+0x2f>
80104581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104588:	a4                   	movsb  %ds:(%esi),%es:(%edi)
80104589:	39 f0                	cmp    %esi,%eax
8010458b:	75 fb                	jne    80104588 <memmove+0x48>
8010458d:	5e                   	pop    %esi
8010458e:	89 d0                	mov    %edx,%eax
80104590:	5f                   	pop    %edi
80104591:	5d                   	pop    %ebp
80104592:	c3                   	ret    
80104593:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010459a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801045a0 <memcpy>:
801045a0:	eb 9e                	jmp    80104540 <memmove>
801045a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801045a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801045b0 <strncmp>:
801045b0:	55                   	push   %ebp
801045b1:	89 e5                	mov    %esp,%ebp
801045b3:	56                   	push   %esi
801045b4:	8b 75 10             	mov    0x10(%ebp),%esi
801045b7:	8b 4d 08             	mov    0x8(%ebp),%ecx
801045ba:	53                   	push   %ebx
801045bb:	8b 45 0c             	mov    0xc(%ebp),%eax
801045be:	85 f6                	test   %esi,%esi
801045c0:	74 36                	je     801045f8 <strncmp+0x48>
801045c2:	01 c6                	add    %eax,%esi
801045c4:	eb 18                	jmp    801045de <strncmp+0x2e>
801045c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801045cd:	8d 76 00             	lea    0x0(%esi),%esi
801045d0:	38 da                	cmp    %bl,%dl
801045d2:	75 14                	jne    801045e8 <strncmp+0x38>
801045d4:	83 c0 01             	add    $0x1,%eax
801045d7:	83 c1 01             	add    $0x1,%ecx
801045da:	39 f0                	cmp    %esi,%eax
801045dc:	74 1a                	je     801045f8 <strncmp+0x48>
801045de:	0f b6 11             	movzbl (%ecx),%edx
801045e1:	0f b6 18             	movzbl (%eax),%ebx
801045e4:	84 d2                	test   %dl,%dl
801045e6:	75 e8                	jne    801045d0 <strncmp+0x20>
801045e8:	0f b6 c2             	movzbl %dl,%eax
801045eb:	29 d8                	sub    %ebx,%eax
801045ed:	5b                   	pop    %ebx
801045ee:	5e                   	pop    %esi
801045ef:	5d                   	pop    %ebp
801045f0:	c3                   	ret    
801045f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801045f8:	5b                   	pop    %ebx
801045f9:	31 c0                	xor    %eax,%eax
801045fb:	5e                   	pop    %esi
801045fc:	5d                   	pop    %ebp
801045fd:	c3                   	ret    
801045fe:	66 90                	xchg   %ax,%ax

80104600 <strncpy>:
80104600:	55                   	push   %ebp
80104601:	89 e5                	mov    %esp,%ebp
80104603:	57                   	push   %edi
80104604:	56                   	push   %esi
80104605:	8b 75 08             	mov    0x8(%ebp),%esi
80104608:	53                   	push   %ebx
80104609:	8b 45 10             	mov    0x10(%ebp),%eax
8010460c:	89 f2                	mov    %esi,%edx
8010460e:	eb 17                	jmp    80104627 <strncpy+0x27>
80104610:	83 45 0c 01          	addl   $0x1,0xc(%ebp)
80104614:	8b 7d 0c             	mov    0xc(%ebp),%edi
80104617:	83 c2 01             	add    $0x1,%edx
8010461a:	0f b6 7f ff          	movzbl -0x1(%edi),%edi
8010461e:	89 f9                	mov    %edi,%ecx
80104620:	88 4a ff             	mov    %cl,-0x1(%edx)
80104623:	84 c9                	test   %cl,%cl
80104625:	74 09                	je     80104630 <strncpy+0x30>
80104627:	89 c3                	mov    %eax,%ebx
80104629:	83 e8 01             	sub    $0x1,%eax
8010462c:	85 db                	test   %ebx,%ebx
8010462e:	7f e0                	jg     80104610 <strncpy+0x10>
80104630:	89 d1                	mov    %edx,%ecx
80104632:	85 c0                	test   %eax,%eax
80104634:	7e 1d                	jle    80104653 <strncpy+0x53>
80104636:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010463d:	8d 76 00             	lea    0x0(%esi),%esi
80104640:	83 c1 01             	add    $0x1,%ecx
80104643:	c6 41 ff 00          	movb   $0x0,-0x1(%ecx)
80104647:	89 c8                	mov    %ecx,%eax
80104649:	f7 d0                	not    %eax
8010464b:	01 d0                	add    %edx,%eax
8010464d:	01 d8                	add    %ebx,%eax
8010464f:	85 c0                	test   %eax,%eax
80104651:	7f ed                	jg     80104640 <strncpy+0x40>
80104653:	5b                   	pop    %ebx
80104654:	89 f0                	mov    %esi,%eax
80104656:	5e                   	pop    %esi
80104657:	5f                   	pop    %edi
80104658:	5d                   	pop    %ebp
80104659:	c3                   	ret    
8010465a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104660 <safestrcpy>:
80104660:	55                   	push   %ebp
80104661:	89 e5                	mov    %esp,%ebp
80104663:	56                   	push   %esi
80104664:	8b 55 10             	mov    0x10(%ebp),%edx
80104667:	8b 75 08             	mov    0x8(%ebp),%esi
8010466a:	53                   	push   %ebx
8010466b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010466e:	85 d2                	test   %edx,%edx
80104670:	7e 25                	jle    80104697 <safestrcpy+0x37>
80104672:	8d 5c 10 ff          	lea    -0x1(%eax,%edx,1),%ebx
80104676:	89 f2                	mov    %esi,%edx
80104678:	eb 16                	jmp    80104690 <safestrcpy+0x30>
8010467a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104680:	0f b6 08             	movzbl (%eax),%ecx
80104683:	83 c0 01             	add    $0x1,%eax
80104686:	83 c2 01             	add    $0x1,%edx
80104689:	88 4a ff             	mov    %cl,-0x1(%edx)
8010468c:	84 c9                	test   %cl,%cl
8010468e:	74 04                	je     80104694 <safestrcpy+0x34>
80104690:	39 d8                	cmp    %ebx,%eax
80104692:	75 ec                	jne    80104680 <safestrcpy+0x20>
80104694:	c6 02 00             	movb   $0x0,(%edx)
80104697:	89 f0                	mov    %esi,%eax
80104699:	5b                   	pop    %ebx
8010469a:	5e                   	pop    %esi
8010469b:	5d                   	pop    %ebp
8010469c:	c3                   	ret    
8010469d:	8d 76 00             	lea    0x0(%esi),%esi

801046a0 <strlen>:
801046a0:	55                   	push   %ebp
801046a1:	31 c0                	xor    %eax,%eax
801046a3:	89 e5                	mov    %esp,%ebp
801046a5:	8b 55 08             	mov    0x8(%ebp),%edx
801046a8:	80 3a 00             	cmpb   $0x0,(%edx)
801046ab:	74 0c                	je     801046b9 <strlen+0x19>
801046ad:	8d 76 00             	lea    0x0(%esi),%esi
801046b0:	83 c0 01             	add    $0x1,%eax
801046b3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
801046b7:	75 f7                	jne    801046b0 <strlen+0x10>
801046b9:	5d                   	pop    %ebp
801046ba:	c3                   	ret    

801046bb <swtch>:
801046bb:	8b 44 24 04          	mov    0x4(%esp),%eax
801046bf:	8b 54 24 08          	mov    0x8(%esp),%edx
801046c3:	55                   	push   %ebp
801046c4:	53                   	push   %ebx
801046c5:	56                   	push   %esi
801046c6:	57                   	push   %edi
801046c7:	89 20                	mov    %esp,(%eax)
801046c9:	89 d4                	mov    %edx,%esp
801046cb:	5f                   	pop    %edi
801046cc:	5e                   	pop    %esi
801046cd:	5b                   	pop    %ebx
801046ce:	5d                   	pop    %ebp
801046cf:	c3                   	ret    

801046d0 <fetchint>:
801046d0:	55                   	push   %ebp
801046d1:	89 e5                	mov    %esp,%ebp
801046d3:	53                   	push   %ebx
801046d4:	83 ec 04             	sub    $0x4,%esp
801046d7:	8b 5d 08             	mov    0x8(%ebp),%ebx
801046da:	e8 31 f1 ff ff       	call   80103810 <myproc>
801046df:	8b 00                	mov    (%eax),%eax
801046e1:	39 d8                	cmp    %ebx,%eax
801046e3:	76 1b                	jbe    80104700 <fetchint+0x30>
801046e5:	8d 53 04             	lea    0x4(%ebx),%edx
801046e8:	39 d0                	cmp    %edx,%eax
801046ea:	72 14                	jb     80104700 <fetchint+0x30>
801046ec:	8b 45 0c             	mov    0xc(%ebp),%eax
801046ef:	8b 13                	mov    (%ebx),%edx
801046f1:	89 10                	mov    %edx,(%eax)
801046f3:	31 c0                	xor    %eax,%eax
801046f5:	83 c4 04             	add    $0x4,%esp
801046f8:	5b                   	pop    %ebx
801046f9:	5d                   	pop    %ebp
801046fa:	c3                   	ret    
801046fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801046ff:	90                   	nop
80104700:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104705:	eb ee                	jmp    801046f5 <fetchint+0x25>
80104707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010470e:	66 90                	xchg   %ax,%ax

80104710 <fetchstr>:
80104710:	55                   	push   %ebp
80104711:	89 e5                	mov    %esp,%ebp
80104713:	53                   	push   %ebx
80104714:	83 ec 04             	sub    $0x4,%esp
80104717:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010471a:	e8 f1 f0 ff ff       	call   80103810 <myproc>
8010471f:	39 18                	cmp    %ebx,(%eax)
80104721:	76 2d                	jbe    80104750 <fetchstr+0x40>
80104723:	8b 55 0c             	mov    0xc(%ebp),%edx
80104726:	89 1a                	mov    %ebx,(%edx)
80104728:	8b 10                	mov    (%eax),%edx
8010472a:	39 d3                	cmp    %edx,%ebx
8010472c:	73 22                	jae    80104750 <fetchstr+0x40>
8010472e:	89 d8                	mov    %ebx,%eax
80104730:	eb 0d                	jmp    8010473f <fetchstr+0x2f>
80104732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104738:	83 c0 01             	add    $0x1,%eax
8010473b:	39 c2                	cmp    %eax,%edx
8010473d:	76 11                	jbe    80104750 <fetchstr+0x40>
8010473f:	80 38 00             	cmpb   $0x0,(%eax)
80104742:	75 f4                	jne    80104738 <fetchstr+0x28>
80104744:	83 c4 04             	add    $0x4,%esp
80104747:	29 d8                	sub    %ebx,%eax
80104749:	5b                   	pop    %ebx
8010474a:	5d                   	pop    %ebp
8010474b:	c3                   	ret    
8010474c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104750:	83 c4 04             	add    $0x4,%esp
80104753:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104758:	5b                   	pop    %ebx
80104759:	5d                   	pop    %ebp
8010475a:	c3                   	ret    
8010475b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010475f:	90                   	nop

80104760 <argint>:
80104760:	55                   	push   %ebp
80104761:	89 e5                	mov    %esp,%ebp
80104763:	56                   	push   %esi
80104764:	53                   	push   %ebx
80104765:	e8 a6 f0 ff ff       	call   80103810 <myproc>
8010476a:	8b 55 08             	mov    0x8(%ebp),%edx
8010476d:	8b 40 18             	mov    0x18(%eax),%eax
80104770:	8b 40 44             	mov    0x44(%eax),%eax
80104773:	8d 1c 90             	lea    (%eax,%edx,4),%ebx
80104776:	e8 95 f0 ff ff       	call   80103810 <myproc>
8010477b:	8d 73 04             	lea    0x4(%ebx),%esi
8010477e:	8b 00                	mov    (%eax),%eax
80104780:	39 c6                	cmp    %eax,%esi
80104782:	73 1c                	jae    801047a0 <argint+0x40>
80104784:	8d 53 08             	lea    0x8(%ebx),%edx
80104787:	39 d0                	cmp    %edx,%eax
80104789:	72 15                	jb     801047a0 <argint+0x40>
8010478b:	8b 45 0c             	mov    0xc(%ebp),%eax
8010478e:	8b 53 04             	mov    0x4(%ebx),%edx
80104791:	89 10                	mov    %edx,(%eax)
80104793:	31 c0                	xor    %eax,%eax
80104795:	5b                   	pop    %ebx
80104796:	5e                   	pop    %esi
80104797:	5d                   	pop    %ebp
80104798:	c3                   	ret    
80104799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801047a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801047a5:	eb ee                	jmp    80104795 <argint+0x35>
801047a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801047ae:	66 90                	xchg   %ax,%ax

801047b0 <argptr>:
801047b0:	55                   	push   %ebp
801047b1:	89 e5                	mov    %esp,%ebp
801047b3:	56                   	push   %esi
801047b4:	53                   	push   %ebx
801047b5:	83 ec 10             	sub    $0x10,%esp
801047b8:	8b 5d 10             	mov    0x10(%ebp),%ebx
801047bb:	e8 50 f0 ff ff       	call   80103810 <myproc>
801047c0:	83 ec 08             	sub    $0x8,%esp
801047c3:	89 c6                	mov    %eax,%esi
801047c5:	8d 45 f4             	lea    -0xc(%ebp),%eax
801047c8:	50                   	push   %eax
801047c9:	ff 75 08             	pushl  0x8(%ebp)
801047cc:	e8 8f ff ff ff       	call   80104760 <argint>
801047d1:	83 c4 10             	add    $0x10,%esp
801047d4:	85 c0                	test   %eax,%eax
801047d6:	78 28                	js     80104800 <argptr+0x50>
801047d8:	85 db                	test   %ebx,%ebx
801047da:	78 24                	js     80104800 <argptr+0x50>
801047dc:	8b 16                	mov    (%esi),%edx
801047de:	8b 45 f4             	mov    -0xc(%ebp),%eax
801047e1:	39 c2                	cmp    %eax,%edx
801047e3:	76 1b                	jbe    80104800 <argptr+0x50>
801047e5:	01 c3                	add    %eax,%ebx
801047e7:	39 da                	cmp    %ebx,%edx
801047e9:	72 15                	jb     80104800 <argptr+0x50>
801047eb:	8b 55 0c             	mov    0xc(%ebp),%edx
801047ee:	89 02                	mov    %eax,(%edx)
801047f0:	31 c0                	xor    %eax,%eax
801047f2:	8d 65 f8             	lea    -0x8(%ebp),%esp
801047f5:	5b                   	pop    %ebx
801047f6:	5e                   	pop    %esi
801047f7:	5d                   	pop    %ebp
801047f8:	c3                   	ret    
801047f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104800:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104805:	eb eb                	jmp    801047f2 <argptr+0x42>
80104807:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010480e:	66 90                	xchg   %ax,%ax

80104810 <argstr>:
80104810:	55                   	push   %ebp
80104811:	89 e5                	mov    %esp,%ebp
80104813:	83 ec 20             	sub    $0x20,%esp
80104816:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104819:	50                   	push   %eax
8010481a:	ff 75 08             	pushl  0x8(%ebp)
8010481d:	e8 3e ff ff ff       	call   80104760 <argint>
80104822:	83 c4 10             	add    $0x10,%esp
80104825:	85 c0                	test   %eax,%eax
80104827:	78 17                	js     80104840 <argstr+0x30>
80104829:	83 ec 08             	sub    $0x8,%esp
8010482c:	ff 75 0c             	pushl  0xc(%ebp)
8010482f:	ff 75 f4             	pushl  -0xc(%ebp)
80104832:	e8 d9 fe ff ff       	call   80104710 <fetchstr>
80104837:	83 c4 10             	add    $0x10,%esp
8010483a:	c9                   	leave  
8010483b:	c3                   	ret    
8010483c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104840:	c9                   	leave  
80104841:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104846:	c3                   	ret    
80104847:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010484e:	66 90                	xchg   %ax,%ax

80104850 <syscall>:
80104850:	55                   	push   %ebp
80104851:	89 e5                	mov    %esp,%ebp
80104853:	53                   	push   %ebx
80104854:	83 ec 04             	sub    $0x4,%esp
80104857:	e8 b4 ef ff ff       	call   80103810 <myproc>
8010485c:	89 c3                	mov    %eax,%ebx
8010485e:	8b 40 18             	mov    0x18(%eax),%eax
80104861:	8b 40 1c             	mov    0x1c(%eax),%eax
80104864:	8d 50 ff             	lea    -0x1(%eax),%edx
80104867:	83 fa 15             	cmp    $0x15,%edx
8010486a:	77 24                	ja     80104890 <syscall+0x40>
8010486c:	8b 14 85 c0 75 10 80 	mov    -0x7fef8a40(,%eax,4),%edx
80104873:	85 d2                	test   %edx,%edx
80104875:	74 19                	je     80104890 <syscall+0x40>
80104877:	ff d2                	call   *%edx
80104879:	89 c2                	mov    %eax,%edx
8010487b:	8b 43 18             	mov    0x18(%ebx),%eax
8010487e:	89 50 1c             	mov    %edx,0x1c(%eax)
80104881:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80104884:	c9                   	leave  
80104885:	c3                   	ret    
80104886:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010488d:	8d 76 00             	lea    0x0(%esi),%esi
80104890:	50                   	push   %eax
80104891:	8d 43 6c             	lea    0x6c(%ebx),%eax
80104894:	50                   	push   %eax
80104895:	ff 73 10             	pushl  0x10(%ebx)
80104898:	68 9d 75 10 80       	push   $0x8010759d
8010489d:	e8 ce bd ff ff       	call   80100670 <cprintf>
801048a2:	8b 43 18             	mov    0x18(%ebx),%eax
801048a5:	83 c4 10             	add    $0x10,%esp
801048a8:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
801048af:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801048b2:	c9                   	leave  
801048b3:	c3                   	ret    
801048b4:	66 90                	xchg   %ax,%ax
801048b6:	66 90                	xchg   %ax,%ax
801048b8:	66 90                	xchg   %ax,%ax
801048ba:	66 90                	xchg   %ax,%ax
801048bc:	66 90                	xchg   %ax,%ax
801048be:	66 90                	xchg   %ax,%ax

801048c0 <create>:
801048c0:	55                   	push   %ebp
801048c1:	89 e5                	mov    %esp,%ebp
801048c3:	57                   	push   %edi
801048c4:	56                   	push   %esi
801048c5:	8d 7d da             	lea    -0x26(%ebp),%edi
801048c8:	53                   	push   %ebx
801048c9:	83 ec 44             	sub    $0x44,%esp
801048cc:	89 4d c0             	mov    %ecx,-0x40(%ebp)
801048cf:	8b 4d 08             	mov    0x8(%ebp),%ecx
801048d2:	57                   	push   %edi
801048d3:	50                   	push   %eax
801048d4:	89 55 c4             	mov    %edx,-0x3c(%ebp)
801048d7:	89 4d bc             	mov    %ecx,-0x44(%ebp)
801048da:	e8 41 d6 ff ff       	call   80101f20 <nameiparent>
801048df:	83 c4 10             	add    $0x10,%esp
801048e2:	85 c0                	test   %eax,%eax
801048e4:	0f 84 46 01 00 00    	je     80104a30 <create+0x170>
801048ea:	83 ec 0c             	sub    $0xc,%esp
801048ed:	89 c3                	mov    %eax,%ebx
801048ef:	50                   	push   %eax
801048f0:	e8 ab cd ff ff       	call   801016a0 <ilock>
801048f5:	83 c4 0c             	add    $0xc,%esp
801048f8:	8d 45 d4             	lea    -0x2c(%ebp),%eax
801048fb:	50                   	push   %eax
801048fc:	57                   	push   %edi
801048fd:	53                   	push   %ebx
801048fe:	e8 cd d2 ff ff       	call   80101bd0 <dirlookup>
80104903:	83 c4 10             	add    $0x10,%esp
80104906:	89 c6                	mov    %eax,%esi
80104908:	85 c0                	test   %eax,%eax
8010490a:	74 54                	je     80104960 <create+0xa0>
8010490c:	83 ec 0c             	sub    $0xc,%esp
8010490f:	53                   	push   %ebx
80104910:	e8 1b d0 ff ff       	call   80101930 <iunlockput>
80104915:	89 34 24             	mov    %esi,(%esp)
80104918:	e8 83 cd ff ff       	call   801016a0 <ilock>
8010491d:	83 c4 10             	add    $0x10,%esp
80104920:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
80104925:	75 19                	jne    80104940 <create+0x80>
80104927:	66 83 7e 50 02       	cmpw   $0x2,0x50(%esi)
8010492c:	75 12                	jne    80104940 <create+0x80>
8010492e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104931:	89 f0                	mov    %esi,%eax
80104933:	5b                   	pop    %ebx
80104934:	5e                   	pop    %esi
80104935:	5f                   	pop    %edi
80104936:	5d                   	pop    %ebp
80104937:	c3                   	ret    
80104938:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010493f:	90                   	nop
80104940:	83 ec 0c             	sub    $0xc,%esp
80104943:	56                   	push   %esi
80104944:	31 f6                	xor    %esi,%esi
80104946:	e8 e5 cf ff ff       	call   80101930 <iunlockput>
8010494b:	83 c4 10             	add    $0x10,%esp
8010494e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104951:	89 f0                	mov    %esi,%eax
80104953:	5b                   	pop    %ebx
80104954:	5e                   	pop    %esi
80104955:	5f                   	pop    %edi
80104956:	5d                   	pop    %ebp
80104957:	c3                   	ret    
80104958:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010495f:	90                   	nop
80104960:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
80104964:	83 ec 08             	sub    $0x8,%esp
80104967:	50                   	push   %eax
80104968:	ff 33                	pushl  (%ebx)
8010496a:	e8 c1 cb ff ff       	call   80101530 <ialloc>
8010496f:	83 c4 10             	add    $0x10,%esp
80104972:	89 c6                	mov    %eax,%esi
80104974:	85 c0                	test   %eax,%eax
80104976:	0f 84 cd 00 00 00    	je     80104a49 <create+0x189>
8010497c:	83 ec 0c             	sub    $0xc,%esp
8010497f:	50                   	push   %eax
80104980:	e8 1b cd ff ff       	call   801016a0 <ilock>
80104985:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
80104989:	66 89 46 52          	mov    %ax,0x52(%esi)
8010498d:	0f b7 45 bc          	movzwl -0x44(%ebp),%eax
80104991:	66 89 46 54          	mov    %ax,0x54(%esi)
80104995:	b8 01 00 00 00       	mov    $0x1,%eax
8010499a:	66 89 46 56          	mov    %ax,0x56(%esi)
8010499e:	89 34 24             	mov    %esi,(%esp)
801049a1:	e8 4a cc ff ff       	call   801015f0 <iupdate>
801049a6:	83 c4 10             	add    $0x10,%esp
801049a9:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
801049ae:	74 30                	je     801049e0 <create+0x120>
801049b0:	83 ec 04             	sub    $0x4,%esp
801049b3:	ff 76 04             	pushl  0x4(%esi)
801049b6:	57                   	push   %edi
801049b7:	53                   	push   %ebx
801049b8:	e8 83 d4 ff ff       	call   80101e40 <dirlink>
801049bd:	83 c4 10             	add    $0x10,%esp
801049c0:	85 c0                	test   %eax,%eax
801049c2:	78 78                	js     80104a3c <create+0x17c>
801049c4:	83 ec 0c             	sub    $0xc,%esp
801049c7:	53                   	push   %ebx
801049c8:	e8 63 cf ff ff       	call   80101930 <iunlockput>
801049cd:	83 c4 10             	add    $0x10,%esp
801049d0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801049d3:	89 f0                	mov    %esi,%eax
801049d5:	5b                   	pop    %ebx
801049d6:	5e                   	pop    %esi
801049d7:	5f                   	pop    %edi
801049d8:	5d                   	pop    %ebp
801049d9:	c3                   	ret    
801049da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801049e0:	83 ec 0c             	sub    $0xc,%esp
801049e3:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
801049e8:	53                   	push   %ebx
801049e9:	e8 02 cc ff ff       	call   801015f0 <iupdate>
801049ee:	83 c4 0c             	add    $0xc,%esp
801049f1:	ff 76 04             	pushl  0x4(%esi)
801049f4:	68 38 76 10 80       	push   $0x80107638
801049f9:	56                   	push   %esi
801049fa:	e8 41 d4 ff ff       	call   80101e40 <dirlink>
801049ff:	83 c4 10             	add    $0x10,%esp
80104a02:	85 c0                	test   %eax,%eax
80104a04:	78 18                	js     80104a1e <create+0x15e>
80104a06:	83 ec 04             	sub    $0x4,%esp
80104a09:	ff 73 04             	pushl  0x4(%ebx)
80104a0c:	68 37 76 10 80       	push   $0x80107637
80104a11:	56                   	push   %esi
80104a12:	e8 29 d4 ff ff       	call   80101e40 <dirlink>
80104a17:	83 c4 10             	add    $0x10,%esp
80104a1a:	85 c0                	test   %eax,%eax
80104a1c:	79 92                	jns    801049b0 <create+0xf0>
80104a1e:	83 ec 0c             	sub    $0xc,%esp
80104a21:	68 2b 76 10 80       	push   $0x8010762b
80104a26:	e8 75 b9 ff ff       	call   801003a0 <panic>
80104a2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104a2f:	90                   	nop
80104a30:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104a33:	31 f6                	xor    %esi,%esi
80104a35:	5b                   	pop    %ebx
80104a36:	89 f0                	mov    %esi,%eax
80104a38:	5e                   	pop    %esi
80104a39:	5f                   	pop    %edi
80104a3a:	5d                   	pop    %ebp
80104a3b:	c3                   	ret    
80104a3c:	83 ec 0c             	sub    $0xc,%esp
80104a3f:	68 3a 76 10 80       	push   $0x8010763a
80104a44:	e8 57 b9 ff ff       	call   801003a0 <panic>
80104a49:	83 ec 0c             	sub    $0xc,%esp
80104a4c:	68 1c 76 10 80       	push   $0x8010761c
80104a51:	e8 4a b9 ff ff       	call   801003a0 <panic>
80104a56:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104a5d:	8d 76 00             	lea    0x0(%esi),%esi

80104a60 <argfd.constprop.0>:
80104a60:	55                   	push   %ebp
80104a61:	89 e5                	mov    %esp,%ebp
80104a63:	56                   	push   %esi
80104a64:	89 d6                	mov    %edx,%esi
80104a66:	53                   	push   %ebx
80104a67:	89 c3                	mov    %eax,%ebx
80104a69:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104a6c:	83 ec 18             	sub    $0x18,%esp
80104a6f:	50                   	push   %eax
80104a70:	6a 00                	push   $0x0
80104a72:	e8 e9 fc ff ff       	call   80104760 <argint>
80104a77:	83 c4 10             	add    $0x10,%esp
80104a7a:	85 c0                	test   %eax,%eax
80104a7c:	78 2a                	js     80104aa8 <argfd.constprop.0+0x48>
80104a7e:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104a82:	77 24                	ja     80104aa8 <argfd.constprop.0+0x48>
80104a84:	e8 87 ed ff ff       	call   80103810 <myproc>
80104a89:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104a8c:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80104a90:	85 c0                	test   %eax,%eax
80104a92:	74 14                	je     80104aa8 <argfd.constprop.0+0x48>
80104a94:	85 db                	test   %ebx,%ebx
80104a96:	74 02                	je     80104a9a <argfd.constprop.0+0x3a>
80104a98:	89 13                	mov    %edx,(%ebx)
80104a9a:	89 06                	mov    %eax,(%esi)
80104a9c:	31 c0                	xor    %eax,%eax
80104a9e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104aa1:	5b                   	pop    %ebx
80104aa2:	5e                   	pop    %esi
80104aa3:	5d                   	pop    %ebp
80104aa4:	c3                   	ret    
80104aa5:	8d 76 00             	lea    0x0(%esi),%esi
80104aa8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104aad:	eb ef                	jmp    80104a9e <argfd.constprop.0+0x3e>
80104aaf:	90                   	nop

80104ab0 <sys_dup>:
80104ab0:	55                   	push   %ebp
80104ab1:	31 c0                	xor    %eax,%eax
80104ab3:	89 e5                	mov    %esp,%ebp
80104ab5:	56                   	push   %esi
80104ab6:	53                   	push   %ebx
80104ab7:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104aba:	83 ec 10             	sub    $0x10,%esp
80104abd:	e8 9e ff ff ff       	call   80104a60 <argfd.constprop.0>
80104ac2:	85 c0                	test   %eax,%eax
80104ac4:	78 1a                	js     80104ae0 <sys_dup+0x30>
80104ac6:	8b 75 f4             	mov    -0xc(%ebp),%esi
80104ac9:	31 db                	xor    %ebx,%ebx
80104acb:	e8 40 ed ff ff       	call   80103810 <myproc>
80104ad0:	8b 54 98 28          	mov    0x28(%eax,%ebx,4),%edx
80104ad4:	85 d2                	test   %edx,%edx
80104ad6:	74 18                	je     80104af0 <sys_dup+0x40>
80104ad8:	83 c3 01             	add    $0x1,%ebx
80104adb:	83 fb 10             	cmp    $0x10,%ebx
80104ade:	75 f0                	jne    80104ad0 <sys_dup+0x20>
80104ae0:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104ae3:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80104ae8:	89 d8                	mov    %ebx,%eax
80104aea:	5b                   	pop    %ebx
80104aeb:	5e                   	pop    %esi
80104aec:	5d                   	pop    %ebp
80104aed:	c3                   	ret    
80104aee:	66 90                	xchg   %ax,%ax
80104af0:	89 74 98 28          	mov    %esi,0x28(%eax,%ebx,4)
80104af4:	83 ec 0c             	sub    $0xc,%esp
80104af7:	ff 75 f4             	pushl  -0xc(%ebp)
80104afa:	e8 01 c3 ff ff       	call   80100e00 <filedup>
80104aff:	83 c4 10             	add    $0x10,%esp
80104b02:	8d 65 f8             	lea    -0x8(%ebp),%esp
80104b05:	89 d8                	mov    %ebx,%eax
80104b07:	5b                   	pop    %ebx
80104b08:	5e                   	pop    %esi
80104b09:	5d                   	pop    %ebp
80104b0a:	c3                   	ret    
80104b0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104b0f:	90                   	nop

80104b10 <sys_read>:
80104b10:	55                   	push   %ebp
80104b11:	31 c0                	xor    %eax,%eax
80104b13:	89 e5                	mov    %esp,%ebp
80104b15:	83 ec 18             	sub    $0x18,%esp
80104b18:	8d 55 ec             	lea    -0x14(%ebp),%edx
80104b1b:	e8 40 ff ff ff       	call   80104a60 <argfd.constprop.0>
80104b20:	85 c0                	test   %eax,%eax
80104b22:	78 4c                	js     80104b70 <sys_read+0x60>
80104b24:	83 ec 08             	sub    $0x8,%esp
80104b27:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104b2a:	50                   	push   %eax
80104b2b:	6a 02                	push   $0x2
80104b2d:	e8 2e fc ff ff       	call   80104760 <argint>
80104b32:	83 c4 10             	add    $0x10,%esp
80104b35:	85 c0                	test   %eax,%eax
80104b37:	78 37                	js     80104b70 <sys_read+0x60>
80104b39:	83 ec 04             	sub    $0x4,%esp
80104b3c:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104b3f:	ff 75 f0             	pushl  -0x10(%ebp)
80104b42:	50                   	push   %eax
80104b43:	6a 01                	push   $0x1
80104b45:	e8 66 fc ff ff       	call   801047b0 <argptr>
80104b4a:	83 c4 10             	add    $0x10,%esp
80104b4d:	85 c0                	test   %eax,%eax
80104b4f:	78 1f                	js     80104b70 <sys_read+0x60>
80104b51:	83 ec 04             	sub    $0x4,%esp
80104b54:	ff 75 f0             	pushl  -0x10(%ebp)
80104b57:	ff 75 f4             	pushl  -0xc(%ebp)
80104b5a:	ff 75 ec             	pushl  -0x14(%ebp)
80104b5d:	e8 1e c4 ff ff       	call   80100f80 <fileread>
80104b62:	83 c4 10             	add    $0x10,%esp
80104b65:	c9                   	leave  
80104b66:	c3                   	ret    
80104b67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104b6e:	66 90                	xchg   %ax,%ax
80104b70:	c9                   	leave  
80104b71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b76:	c3                   	ret    
80104b77:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104b7e:	66 90                	xchg   %ax,%ax

80104b80 <sys_write>:
80104b80:	55                   	push   %ebp
80104b81:	31 c0                	xor    %eax,%eax
80104b83:	89 e5                	mov    %esp,%ebp
80104b85:	83 ec 18             	sub    $0x18,%esp
80104b88:	8d 55 ec             	lea    -0x14(%ebp),%edx
80104b8b:	e8 d0 fe ff ff       	call   80104a60 <argfd.constprop.0>
80104b90:	85 c0                	test   %eax,%eax
80104b92:	78 4c                	js     80104be0 <sys_write+0x60>
80104b94:	83 ec 08             	sub    $0x8,%esp
80104b97:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104b9a:	50                   	push   %eax
80104b9b:	6a 02                	push   $0x2
80104b9d:	e8 be fb ff ff       	call   80104760 <argint>
80104ba2:	83 c4 10             	add    $0x10,%esp
80104ba5:	85 c0                	test   %eax,%eax
80104ba7:	78 37                	js     80104be0 <sys_write+0x60>
80104ba9:	83 ec 04             	sub    $0x4,%esp
80104bac:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104baf:	ff 75 f0             	pushl  -0x10(%ebp)
80104bb2:	50                   	push   %eax
80104bb3:	6a 01                	push   $0x1
80104bb5:	e8 f6 fb ff ff       	call   801047b0 <argptr>
80104bba:	83 c4 10             	add    $0x10,%esp
80104bbd:	85 c0                	test   %eax,%eax
80104bbf:	78 1f                	js     80104be0 <sys_write+0x60>
80104bc1:	83 ec 04             	sub    $0x4,%esp
80104bc4:	ff 75 f0             	pushl  -0x10(%ebp)
80104bc7:	ff 75 f4             	pushl  -0xc(%ebp)
80104bca:	ff 75 ec             	pushl  -0x14(%ebp)
80104bcd:	e8 3e c4 ff ff       	call   80101010 <filewrite>
80104bd2:	83 c4 10             	add    $0x10,%esp
80104bd5:	c9                   	leave  
80104bd6:	c3                   	ret    
80104bd7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104bde:	66 90                	xchg   %ax,%ax
80104be0:	c9                   	leave  
80104be1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104be6:	c3                   	ret    
80104be7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104bee:	66 90                	xchg   %ax,%ax

80104bf0 <sys_close>:
80104bf0:	55                   	push   %ebp
80104bf1:	89 e5                	mov    %esp,%ebp
80104bf3:	83 ec 18             	sub    $0x18,%esp
80104bf6:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104bf9:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104bfc:	e8 5f fe ff ff       	call   80104a60 <argfd.constprop.0>
80104c01:	85 c0                	test   %eax,%eax
80104c03:	78 2b                	js     80104c30 <sys_close+0x40>
80104c05:	e8 06 ec ff ff       	call   80103810 <myproc>
80104c0a:	8b 55 f0             	mov    -0x10(%ebp),%edx
80104c0d:	83 ec 0c             	sub    $0xc,%esp
80104c10:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
80104c17:	00 
80104c18:	ff 75 f4             	pushl  -0xc(%ebp)
80104c1b:	e8 30 c2 ff ff       	call   80100e50 <fileclose>
80104c20:	83 c4 10             	add    $0x10,%esp
80104c23:	31 c0                	xor    %eax,%eax
80104c25:	c9                   	leave  
80104c26:	c3                   	ret    
80104c27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104c2e:	66 90                	xchg   %ax,%ax
80104c30:	c9                   	leave  
80104c31:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c36:	c3                   	ret    
80104c37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104c3e:	66 90                	xchg   %ax,%ax

80104c40 <sys_fstat>:
80104c40:	55                   	push   %ebp
80104c41:	31 c0                	xor    %eax,%eax
80104c43:	89 e5                	mov    %esp,%ebp
80104c45:	83 ec 18             	sub    $0x18,%esp
80104c48:	8d 55 f0             	lea    -0x10(%ebp),%edx
80104c4b:	e8 10 fe ff ff       	call   80104a60 <argfd.constprop.0>
80104c50:	85 c0                	test   %eax,%eax
80104c52:	78 2c                	js     80104c80 <sys_fstat+0x40>
80104c54:	83 ec 04             	sub    $0x4,%esp
80104c57:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104c5a:	6a 14                	push   $0x14
80104c5c:	50                   	push   %eax
80104c5d:	6a 01                	push   $0x1
80104c5f:	e8 4c fb ff ff       	call   801047b0 <argptr>
80104c64:	83 c4 10             	add    $0x10,%esp
80104c67:	85 c0                	test   %eax,%eax
80104c69:	78 15                	js     80104c80 <sys_fstat+0x40>
80104c6b:	83 ec 08             	sub    $0x8,%esp
80104c6e:	ff 75 f4             	pushl  -0xc(%ebp)
80104c71:	ff 75 f0             	pushl  -0x10(%ebp)
80104c74:	e8 b7 c2 ff ff       	call   80100f30 <filestat>
80104c79:	83 c4 10             	add    $0x10,%esp
80104c7c:	c9                   	leave  
80104c7d:	c3                   	ret    
80104c7e:	66 90                	xchg   %ax,%ax
80104c80:	c9                   	leave  
80104c81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104c86:	c3                   	ret    
80104c87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104c8e:	66 90                	xchg   %ax,%ax

80104c90 <sys_link>:
80104c90:	55                   	push   %ebp
80104c91:	89 e5                	mov    %esp,%ebp
80104c93:	57                   	push   %edi
80104c94:	56                   	push   %esi
80104c95:	8d 45 d4             	lea    -0x2c(%ebp),%eax
80104c98:	53                   	push   %ebx
80104c99:	83 ec 34             	sub    $0x34,%esp
80104c9c:	50                   	push   %eax
80104c9d:	6a 00                	push   $0x0
80104c9f:	e8 6c fb ff ff       	call   80104810 <argstr>
80104ca4:	83 c4 10             	add    $0x10,%esp
80104ca7:	85 c0                	test   %eax,%eax
80104ca9:	0f 88 fb 00 00 00    	js     80104daa <sys_link+0x11a>
80104caf:	83 ec 08             	sub    $0x8,%esp
80104cb2:	8d 45 d0             	lea    -0x30(%ebp),%eax
80104cb5:	50                   	push   %eax
80104cb6:	6a 01                	push   $0x1
80104cb8:	e8 53 fb ff ff       	call   80104810 <argstr>
80104cbd:	83 c4 10             	add    $0x10,%esp
80104cc0:	85 c0                	test   %eax,%eax
80104cc2:	0f 88 e2 00 00 00    	js     80104daa <sys_link+0x11a>
80104cc8:	e8 03 df ff ff       	call   80102bd0 <begin_op>
80104ccd:	83 ec 0c             	sub    $0xc,%esp
80104cd0:	ff 75 d4             	pushl  -0x2c(%ebp)
80104cd3:	e8 28 d2 ff ff       	call   80101f00 <namei>
80104cd8:	83 c4 10             	add    $0x10,%esp
80104cdb:	89 c3                	mov    %eax,%ebx
80104cdd:	85 c0                	test   %eax,%eax
80104cdf:	0f 84 e4 00 00 00    	je     80104dc9 <sys_link+0x139>
80104ce5:	83 ec 0c             	sub    $0xc,%esp
80104ce8:	50                   	push   %eax
80104ce9:	e8 b2 c9 ff ff       	call   801016a0 <ilock>
80104cee:	83 c4 10             	add    $0x10,%esp
80104cf1:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104cf6:	0f 84 b5 00 00 00    	je     80104db1 <sys_link+0x121>
80104cfc:	83 ec 0c             	sub    $0xc,%esp
80104cff:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
80104d04:	8d 7d da             	lea    -0x26(%ebp),%edi
80104d07:	53                   	push   %ebx
80104d08:	e8 e3 c8 ff ff       	call   801015f0 <iupdate>
80104d0d:	89 1c 24             	mov    %ebx,(%esp)
80104d10:	e8 6b ca ff ff       	call   80101780 <iunlock>
80104d15:	58                   	pop    %eax
80104d16:	5a                   	pop    %edx
80104d17:	57                   	push   %edi
80104d18:	ff 75 d0             	pushl  -0x30(%ebp)
80104d1b:	e8 00 d2 ff ff       	call   80101f20 <nameiparent>
80104d20:	83 c4 10             	add    $0x10,%esp
80104d23:	89 c6                	mov    %eax,%esi
80104d25:	85 c0                	test   %eax,%eax
80104d27:	74 5b                	je     80104d84 <sys_link+0xf4>
80104d29:	83 ec 0c             	sub    $0xc,%esp
80104d2c:	50                   	push   %eax
80104d2d:	e8 6e c9 ff ff       	call   801016a0 <ilock>
80104d32:	8b 03                	mov    (%ebx),%eax
80104d34:	83 c4 10             	add    $0x10,%esp
80104d37:	39 06                	cmp    %eax,(%esi)
80104d39:	75 3d                	jne    80104d78 <sys_link+0xe8>
80104d3b:	83 ec 04             	sub    $0x4,%esp
80104d3e:	ff 73 04             	pushl  0x4(%ebx)
80104d41:	57                   	push   %edi
80104d42:	56                   	push   %esi
80104d43:	e8 f8 d0 ff ff       	call   80101e40 <dirlink>
80104d48:	83 c4 10             	add    $0x10,%esp
80104d4b:	85 c0                	test   %eax,%eax
80104d4d:	78 29                	js     80104d78 <sys_link+0xe8>
80104d4f:	83 ec 0c             	sub    $0xc,%esp
80104d52:	56                   	push   %esi
80104d53:	e8 d8 cb ff ff       	call   80101930 <iunlockput>
80104d58:	89 1c 24             	mov    %ebx,(%esp)
80104d5b:	e8 70 ca ff ff       	call   801017d0 <iput>
80104d60:	e8 db de ff ff       	call   80102c40 <end_op>
80104d65:	83 c4 10             	add    $0x10,%esp
80104d68:	31 c0                	xor    %eax,%eax
80104d6a:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104d6d:	5b                   	pop    %ebx
80104d6e:	5e                   	pop    %esi
80104d6f:	5f                   	pop    %edi
80104d70:	5d                   	pop    %ebp
80104d71:	c3                   	ret    
80104d72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104d78:	83 ec 0c             	sub    $0xc,%esp
80104d7b:	56                   	push   %esi
80104d7c:	e8 af cb ff ff       	call   80101930 <iunlockput>
80104d81:	83 c4 10             	add    $0x10,%esp
80104d84:	83 ec 0c             	sub    $0xc,%esp
80104d87:	53                   	push   %ebx
80104d88:	e8 13 c9 ff ff       	call   801016a0 <ilock>
80104d8d:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104d92:	89 1c 24             	mov    %ebx,(%esp)
80104d95:	e8 56 c8 ff ff       	call   801015f0 <iupdate>
80104d9a:	89 1c 24             	mov    %ebx,(%esp)
80104d9d:	e8 8e cb ff ff       	call   80101930 <iunlockput>
80104da2:	e8 99 de ff ff       	call   80102c40 <end_op>
80104da7:	83 c4 10             	add    $0x10,%esp
80104daa:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104daf:	eb b9                	jmp    80104d6a <sys_link+0xda>
80104db1:	83 ec 0c             	sub    $0xc,%esp
80104db4:	53                   	push   %ebx
80104db5:	e8 76 cb ff ff       	call   80101930 <iunlockput>
80104dba:	e8 81 de ff ff       	call   80102c40 <end_op>
80104dbf:	83 c4 10             	add    $0x10,%esp
80104dc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104dc7:	eb a1                	jmp    80104d6a <sys_link+0xda>
80104dc9:	e8 72 de ff ff       	call   80102c40 <end_op>
80104dce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104dd3:	eb 95                	jmp    80104d6a <sys_link+0xda>
80104dd5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104de0 <sys_unlink>:
80104de0:	55                   	push   %ebp
80104de1:	89 e5                	mov    %esp,%ebp
80104de3:	57                   	push   %edi
80104de4:	56                   	push   %esi
80104de5:	8d 45 c0             	lea    -0x40(%ebp),%eax
80104de8:	53                   	push   %ebx
80104de9:	83 ec 54             	sub    $0x54,%esp
80104dec:	50                   	push   %eax
80104ded:	6a 00                	push   $0x0
80104def:	e8 1c fa ff ff       	call   80104810 <argstr>
80104df4:	83 c4 10             	add    $0x10,%esp
80104df7:	85 c0                	test   %eax,%eax
80104df9:	0f 88 91 01 00 00    	js     80104f90 <sys_unlink+0x1b0>
80104dff:	e8 cc dd ff ff       	call   80102bd0 <begin_op>
80104e04:	8d 5d ca             	lea    -0x36(%ebp),%ebx
80104e07:	83 ec 08             	sub    $0x8,%esp
80104e0a:	53                   	push   %ebx
80104e0b:	ff 75 c0             	pushl  -0x40(%ebp)
80104e0e:	e8 0d d1 ff ff       	call   80101f20 <nameiparent>
80104e13:	83 c4 10             	add    $0x10,%esp
80104e16:	89 c6                	mov    %eax,%esi
80104e18:	85 c0                	test   %eax,%eax
80104e1a:	0f 84 7a 01 00 00    	je     80104f9a <sys_unlink+0x1ba>
80104e20:	83 ec 0c             	sub    $0xc,%esp
80104e23:	50                   	push   %eax
80104e24:	e8 77 c8 ff ff       	call   801016a0 <ilock>
80104e29:	58                   	pop    %eax
80104e2a:	5a                   	pop    %edx
80104e2b:	68 38 76 10 80       	push   $0x80107638
80104e30:	53                   	push   %ebx
80104e31:	e8 7a cd ff ff       	call   80101bb0 <namecmp>
80104e36:	83 c4 10             	add    $0x10,%esp
80104e39:	85 c0                	test   %eax,%eax
80104e3b:	0f 84 0f 01 00 00    	je     80104f50 <sys_unlink+0x170>
80104e41:	83 ec 08             	sub    $0x8,%esp
80104e44:	68 37 76 10 80       	push   $0x80107637
80104e49:	53                   	push   %ebx
80104e4a:	e8 61 cd ff ff       	call   80101bb0 <namecmp>
80104e4f:	83 c4 10             	add    $0x10,%esp
80104e52:	85 c0                	test   %eax,%eax
80104e54:	0f 84 f6 00 00 00    	je     80104f50 <sys_unlink+0x170>
80104e5a:	83 ec 04             	sub    $0x4,%esp
80104e5d:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80104e60:	50                   	push   %eax
80104e61:	53                   	push   %ebx
80104e62:	56                   	push   %esi
80104e63:	e8 68 cd ff ff       	call   80101bd0 <dirlookup>
80104e68:	83 c4 10             	add    $0x10,%esp
80104e6b:	89 c3                	mov    %eax,%ebx
80104e6d:	85 c0                	test   %eax,%eax
80104e6f:	0f 84 db 00 00 00    	je     80104f50 <sys_unlink+0x170>
80104e75:	83 ec 0c             	sub    $0xc,%esp
80104e78:	50                   	push   %eax
80104e79:	e8 22 c8 ff ff       	call   801016a0 <ilock>
80104e7e:	83 c4 10             	add    $0x10,%esp
80104e81:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104e86:	0f 8e 37 01 00 00    	jle    80104fc3 <sys_unlink+0x1e3>
80104e8c:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104e91:	8d 7d d8             	lea    -0x28(%ebp),%edi
80104e94:	74 6a                	je     80104f00 <sys_unlink+0x120>
80104e96:	83 ec 04             	sub    $0x4,%esp
80104e99:	6a 10                	push   $0x10
80104e9b:	6a 00                	push   $0x0
80104e9d:	57                   	push   %edi
80104e9e:	e8 fd f5 ff ff       	call   801044a0 <memset>
80104ea3:	6a 10                	push   $0x10
80104ea5:	ff 75 c4             	pushl  -0x3c(%ebp)
80104ea8:	57                   	push   %edi
80104ea9:	56                   	push   %esi
80104eaa:	e8 d1 cb ff ff       	call   80101a80 <writei>
80104eaf:	83 c4 20             	add    $0x20,%esp
80104eb2:	83 f8 10             	cmp    $0x10,%eax
80104eb5:	0f 85 fb 00 00 00    	jne    80104fb6 <sys_unlink+0x1d6>
80104ebb:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104ec0:	0f 84 aa 00 00 00    	je     80104f70 <sys_unlink+0x190>
80104ec6:	83 ec 0c             	sub    $0xc,%esp
80104ec9:	56                   	push   %esi
80104eca:	e8 61 ca ff ff       	call   80101930 <iunlockput>
80104ecf:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104ed4:	89 1c 24             	mov    %ebx,(%esp)
80104ed7:	e8 14 c7 ff ff       	call   801015f0 <iupdate>
80104edc:	89 1c 24             	mov    %ebx,(%esp)
80104edf:	e8 4c ca ff ff       	call   80101930 <iunlockput>
80104ee4:	e8 57 dd ff ff       	call   80102c40 <end_op>
80104ee9:	83 c4 10             	add    $0x10,%esp
80104eec:	31 c0                	xor    %eax,%eax
80104eee:	8d 65 f4             	lea    -0xc(%ebp),%esp
80104ef1:	5b                   	pop    %ebx
80104ef2:	5e                   	pop    %esi
80104ef3:	5f                   	pop    %edi
80104ef4:	5d                   	pop    %ebp
80104ef5:	c3                   	ret    
80104ef6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104efd:	8d 76 00             	lea    0x0(%esi),%esi
80104f00:	83 7b 58 20          	cmpl   $0x20,0x58(%ebx)
80104f04:	76 90                	jbe    80104e96 <sys_unlink+0xb6>
80104f06:	ba 20 00 00 00       	mov    $0x20,%edx
80104f0b:	eb 0f                	jmp    80104f1c <sys_unlink+0x13c>
80104f0d:	8d 76 00             	lea    0x0(%esi),%esi
80104f10:	83 c2 10             	add    $0x10,%edx
80104f13:	39 53 58             	cmp    %edx,0x58(%ebx)
80104f16:	0f 86 7a ff ff ff    	jbe    80104e96 <sys_unlink+0xb6>
80104f1c:	6a 10                	push   $0x10
80104f1e:	52                   	push   %edx
80104f1f:	57                   	push   %edi
80104f20:	53                   	push   %ebx
80104f21:	89 55 b4             	mov    %edx,-0x4c(%ebp)
80104f24:	e8 57 ca ff ff       	call   80101980 <readi>
80104f29:	83 c4 10             	add    $0x10,%esp
80104f2c:	8b 55 b4             	mov    -0x4c(%ebp),%edx
80104f2f:	83 f8 10             	cmp    $0x10,%eax
80104f32:	75 75                	jne    80104fa9 <sys_unlink+0x1c9>
80104f34:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80104f39:	74 d5                	je     80104f10 <sys_unlink+0x130>
80104f3b:	83 ec 0c             	sub    $0xc,%esp
80104f3e:	53                   	push   %ebx
80104f3f:	e8 ec c9 ff ff       	call   80101930 <iunlockput>
80104f44:	83 c4 10             	add    $0x10,%esp
80104f47:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104f4e:	66 90                	xchg   %ax,%ax
80104f50:	83 ec 0c             	sub    $0xc,%esp
80104f53:	56                   	push   %esi
80104f54:	e8 d7 c9 ff ff       	call   80101930 <iunlockput>
80104f59:	e8 e2 dc ff ff       	call   80102c40 <end_op>
80104f5e:	83 c4 10             	add    $0x10,%esp
80104f61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f66:	eb 86                	jmp    80104eee <sys_unlink+0x10e>
80104f68:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104f6f:	90                   	nop
80104f70:	83 ec 0c             	sub    $0xc,%esp
80104f73:	66 83 6e 56 01       	subw   $0x1,0x56(%esi)
80104f78:	56                   	push   %esi
80104f79:	e8 72 c6 ff ff       	call   801015f0 <iupdate>
80104f7e:	83 c4 10             	add    $0x10,%esp
80104f81:	e9 40 ff ff ff       	jmp    80104ec6 <sys_unlink+0xe6>
80104f86:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104f8d:	8d 76 00             	lea    0x0(%esi),%esi
80104f90:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f95:	e9 54 ff ff ff       	jmp    80104eee <sys_unlink+0x10e>
80104f9a:	e8 a1 dc ff ff       	call   80102c40 <end_op>
80104f9f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104fa4:	e9 45 ff ff ff       	jmp    80104eee <sys_unlink+0x10e>
80104fa9:	83 ec 0c             	sub    $0xc,%esp
80104fac:	68 5c 76 10 80       	push   $0x8010765c
80104fb1:	e8 ea b3 ff ff       	call   801003a0 <panic>
80104fb6:	83 ec 0c             	sub    $0xc,%esp
80104fb9:	68 6e 76 10 80       	push   $0x8010766e
80104fbe:	e8 dd b3 ff ff       	call   801003a0 <panic>
80104fc3:	83 ec 0c             	sub    $0xc,%esp
80104fc6:	68 4a 76 10 80       	push   $0x8010764a
80104fcb:	e8 d0 b3 ff ff       	call   801003a0 <panic>

80104fd0 <sys_open>:
80104fd0:	55                   	push   %ebp
80104fd1:	89 e5                	mov    %esp,%ebp
80104fd3:	57                   	push   %edi
80104fd4:	56                   	push   %esi
80104fd5:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104fd8:	53                   	push   %ebx
80104fd9:	83 ec 24             	sub    $0x24,%esp
80104fdc:	50                   	push   %eax
80104fdd:	6a 00                	push   $0x0
80104fdf:	e8 2c f8 ff ff       	call   80104810 <argstr>
80104fe4:	83 c4 10             	add    $0x10,%esp
80104fe7:	85 c0                	test   %eax,%eax
80104fe9:	0f 88 8e 00 00 00    	js     8010507d <sys_open+0xad>
80104fef:	83 ec 08             	sub    $0x8,%esp
80104ff2:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104ff5:	50                   	push   %eax
80104ff6:	6a 01                	push   $0x1
80104ff8:	e8 63 f7 ff ff       	call   80104760 <argint>
80104ffd:	83 c4 10             	add    $0x10,%esp
80105000:	85 c0                	test   %eax,%eax
80105002:	78 79                	js     8010507d <sys_open+0xad>
80105004:	e8 c7 db ff ff       	call   80102bd0 <begin_op>
80105009:	f6 45 e5 02          	testb  $0x2,-0x1b(%ebp)
8010500d:	75 79                	jne    80105088 <sys_open+0xb8>
8010500f:	83 ec 0c             	sub    $0xc,%esp
80105012:	ff 75 e0             	pushl  -0x20(%ebp)
80105015:	e8 e6 ce ff ff       	call   80101f00 <namei>
8010501a:	83 c4 10             	add    $0x10,%esp
8010501d:	89 c6                	mov    %eax,%esi
8010501f:	85 c0                	test   %eax,%eax
80105021:	0f 84 7e 00 00 00    	je     801050a5 <sys_open+0xd5>
80105027:	83 ec 0c             	sub    $0xc,%esp
8010502a:	50                   	push   %eax
8010502b:	e8 70 c6 ff ff       	call   801016a0 <ilock>
80105030:	83 c4 10             	add    $0x10,%esp
80105033:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80105038:	0f 84 c2 00 00 00    	je     80105100 <sys_open+0x130>
8010503e:	e8 4d bd ff ff       	call   80100d90 <filealloc>
80105043:	89 c7                	mov    %eax,%edi
80105045:	85 c0                	test   %eax,%eax
80105047:	74 23                	je     8010506c <sys_open+0x9c>
80105049:	e8 c2 e7 ff ff       	call   80103810 <myproc>
8010504e:	31 db                	xor    %ebx,%ebx
80105050:	8b 54 98 28          	mov    0x28(%eax,%ebx,4),%edx
80105054:	85 d2                	test   %edx,%edx
80105056:	74 60                	je     801050b8 <sys_open+0xe8>
80105058:	83 c3 01             	add    $0x1,%ebx
8010505b:	83 fb 10             	cmp    $0x10,%ebx
8010505e:	75 f0                	jne    80105050 <sys_open+0x80>
80105060:	83 ec 0c             	sub    $0xc,%esp
80105063:	57                   	push   %edi
80105064:	e8 e7 bd ff ff       	call   80100e50 <fileclose>
80105069:	83 c4 10             	add    $0x10,%esp
8010506c:	83 ec 0c             	sub    $0xc,%esp
8010506f:	56                   	push   %esi
80105070:	e8 bb c8 ff ff       	call   80101930 <iunlockput>
80105075:	e8 c6 db ff ff       	call   80102c40 <end_op>
8010507a:	83 c4 10             	add    $0x10,%esp
8010507d:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80105082:	eb 6d                	jmp    801050f1 <sys_open+0x121>
80105084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105088:	83 ec 0c             	sub    $0xc,%esp
8010508b:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010508e:	31 c9                	xor    %ecx,%ecx
80105090:	ba 02 00 00 00       	mov    $0x2,%edx
80105095:	6a 00                	push   $0x0
80105097:	e8 24 f8 ff ff       	call   801048c0 <create>
8010509c:	83 c4 10             	add    $0x10,%esp
8010509f:	89 c6                	mov    %eax,%esi
801050a1:	85 c0                	test   %eax,%eax
801050a3:	75 99                	jne    8010503e <sys_open+0x6e>
801050a5:	e8 96 db ff ff       	call   80102c40 <end_op>
801050aa:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
801050af:	eb 40                	jmp    801050f1 <sys_open+0x121>
801050b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801050b8:	83 ec 0c             	sub    $0xc,%esp
801050bb:	89 7c 98 28          	mov    %edi,0x28(%eax,%ebx,4)
801050bf:	56                   	push   %esi
801050c0:	e8 bb c6 ff ff       	call   80101780 <iunlock>
801050c5:	e8 76 db ff ff       	call   80102c40 <end_op>
801050ca:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
801050d0:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801050d3:	83 c4 10             	add    $0x10,%esp
801050d6:	89 77 10             	mov    %esi,0x10(%edi)
801050d9:	89 d0                	mov    %edx,%eax
801050db:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
801050e2:	f7 d0                	not    %eax
801050e4:	83 e0 01             	and    $0x1,%eax
801050e7:	83 e2 03             	and    $0x3,%edx
801050ea:	88 47 08             	mov    %al,0x8(%edi)
801050ed:	0f 95 47 09          	setne  0x9(%edi)
801050f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801050f4:	89 d8                	mov    %ebx,%eax
801050f6:	5b                   	pop    %ebx
801050f7:	5e                   	pop    %esi
801050f8:	5f                   	pop    %edi
801050f9:	5d                   	pop    %ebp
801050fa:	c3                   	ret    
801050fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801050ff:	90                   	nop
80105100:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80105103:	85 c9                	test   %ecx,%ecx
80105105:	0f 84 33 ff ff ff    	je     8010503e <sys_open+0x6e>
8010510b:	e9 5c ff ff ff       	jmp    8010506c <sys_open+0x9c>

80105110 <sys_mkdir>:
80105110:	55                   	push   %ebp
80105111:	89 e5                	mov    %esp,%ebp
80105113:	83 ec 18             	sub    $0x18,%esp
80105116:	e8 b5 da ff ff       	call   80102bd0 <begin_op>
8010511b:	83 ec 08             	sub    $0x8,%esp
8010511e:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105121:	50                   	push   %eax
80105122:	6a 00                	push   $0x0
80105124:	e8 e7 f6 ff ff       	call   80104810 <argstr>
80105129:	83 c4 10             	add    $0x10,%esp
8010512c:	85 c0                	test   %eax,%eax
8010512e:	78 30                	js     80105160 <sys_mkdir+0x50>
80105130:	83 ec 0c             	sub    $0xc,%esp
80105133:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105136:	31 c9                	xor    %ecx,%ecx
80105138:	ba 01 00 00 00       	mov    $0x1,%edx
8010513d:	6a 00                	push   $0x0
8010513f:	e8 7c f7 ff ff       	call   801048c0 <create>
80105144:	83 c4 10             	add    $0x10,%esp
80105147:	85 c0                	test   %eax,%eax
80105149:	74 15                	je     80105160 <sys_mkdir+0x50>
8010514b:	83 ec 0c             	sub    $0xc,%esp
8010514e:	50                   	push   %eax
8010514f:	e8 dc c7 ff ff       	call   80101930 <iunlockput>
80105154:	e8 e7 da ff ff       	call   80102c40 <end_op>
80105159:	83 c4 10             	add    $0x10,%esp
8010515c:	31 c0                	xor    %eax,%eax
8010515e:	c9                   	leave  
8010515f:	c3                   	ret    
80105160:	e8 db da ff ff       	call   80102c40 <end_op>
80105165:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010516a:	c9                   	leave  
8010516b:	c3                   	ret    
8010516c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80105170 <sys_mknod>:
80105170:	55                   	push   %ebp
80105171:	89 e5                	mov    %esp,%ebp
80105173:	83 ec 18             	sub    $0x18,%esp
80105176:	e8 55 da ff ff       	call   80102bd0 <begin_op>
8010517b:	83 ec 08             	sub    $0x8,%esp
8010517e:	8d 45 ec             	lea    -0x14(%ebp),%eax
80105181:	50                   	push   %eax
80105182:	6a 00                	push   $0x0
80105184:	e8 87 f6 ff ff       	call   80104810 <argstr>
80105189:	83 c4 10             	add    $0x10,%esp
8010518c:	85 c0                	test   %eax,%eax
8010518e:	78 60                	js     801051f0 <sys_mknod+0x80>
80105190:	83 ec 08             	sub    $0x8,%esp
80105193:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105196:	50                   	push   %eax
80105197:	6a 01                	push   $0x1
80105199:	e8 c2 f5 ff ff       	call   80104760 <argint>
8010519e:	83 c4 10             	add    $0x10,%esp
801051a1:	85 c0                	test   %eax,%eax
801051a3:	78 4b                	js     801051f0 <sys_mknod+0x80>
801051a5:	83 ec 08             	sub    $0x8,%esp
801051a8:	8d 45 f4             	lea    -0xc(%ebp),%eax
801051ab:	50                   	push   %eax
801051ac:	6a 02                	push   $0x2
801051ae:	e8 ad f5 ff ff       	call   80104760 <argint>
801051b3:	83 c4 10             	add    $0x10,%esp
801051b6:	85 c0                	test   %eax,%eax
801051b8:	78 36                	js     801051f0 <sys_mknod+0x80>
801051ba:	0f bf 45 f4          	movswl -0xc(%ebp),%eax
801051be:	83 ec 0c             	sub    $0xc,%esp
801051c1:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
801051c5:	ba 03 00 00 00       	mov    $0x3,%edx
801051ca:	50                   	push   %eax
801051cb:	8b 45 ec             	mov    -0x14(%ebp),%eax
801051ce:	e8 ed f6 ff ff       	call   801048c0 <create>
801051d3:	83 c4 10             	add    $0x10,%esp
801051d6:	85 c0                	test   %eax,%eax
801051d8:	74 16                	je     801051f0 <sys_mknod+0x80>
801051da:	83 ec 0c             	sub    $0xc,%esp
801051dd:	50                   	push   %eax
801051de:	e8 4d c7 ff ff       	call   80101930 <iunlockput>
801051e3:	e8 58 da ff ff       	call   80102c40 <end_op>
801051e8:	83 c4 10             	add    $0x10,%esp
801051eb:	31 c0                	xor    %eax,%eax
801051ed:	c9                   	leave  
801051ee:	c3                   	ret    
801051ef:	90                   	nop
801051f0:	e8 4b da ff ff       	call   80102c40 <end_op>
801051f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801051fa:	c9                   	leave  
801051fb:	c3                   	ret    
801051fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80105200 <sys_chdir>:
80105200:	55                   	push   %ebp
80105201:	89 e5                	mov    %esp,%ebp
80105203:	56                   	push   %esi
80105204:	53                   	push   %ebx
80105205:	83 ec 10             	sub    $0x10,%esp
80105208:	e8 03 e6 ff ff       	call   80103810 <myproc>
8010520d:	89 c6                	mov    %eax,%esi
8010520f:	e8 bc d9 ff ff       	call   80102bd0 <begin_op>
80105214:	83 ec 08             	sub    $0x8,%esp
80105217:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010521a:	50                   	push   %eax
8010521b:	6a 00                	push   $0x0
8010521d:	e8 ee f5 ff ff       	call   80104810 <argstr>
80105222:	83 c4 10             	add    $0x10,%esp
80105225:	85 c0                	test   %eax,%eax
80105227:	78 77                	js     801052a0 <sys_chdir+0xa0>
80105229:	83 ec 0c             	sub    $0xc,%esp
8010522c:	ff 75 f4             	pushl  -0xc(%ebp)
8010522f:	e8 cc cc ff ff       	call   80101f00 <namei>
80105234:	83 c4 10             	add    $0x10,%esp
80105237:	89 c3                	mov    %eax,%ebx
80105239:	85 c0                	test   %eax,%eax
8010523b:	74 63                	je     801052a0 <sys_chdir+0xa0>
8010523d:	83 ec 0c             	sub    $0xc,%esp
80105240:	50                   	push   %eax
80105241:	e8 5a c4 ff ff       	call   801016a0 <ilock>
80105246:	83 c4 10             	add    $0x10,%esp
80105249:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
8010524e:	75 30                	jne    80105280 <sys_chdir+0x80>
80105250:	83 ec 0c             	sub    $0xc,%esp
80105253:	53                   	push   %ebx
80105254:	e8 27 c5 ff ff       	call   80101780 <iunlock>
80105259:	58                   	pop    %eax
8010525a:	ff 76 68             	pushl  0x68(%esi)
8010525d:	e8 6e c5 ff ff       	call   801017d0 <iput>
80105262:	e8 d9 d9 ff ff       	call   80102c40 <end_op>
80105267:	89 5e 68             	mov    %ebx,0x68(%esi)
8010526a:	83 c4 10             	add    $0x10,%esp
8010526d:	31 c0                	xor    %eax,%eax
8010526f:	8d 65 f8             	lea    -0x8(%ebp),%esp
80105272:	5b                   	pop    %ebx
80105273:	5e                   	pop    %esi
80105274:	5d                   	pop    %ebp
80105275:	c3                   	ret    
80105276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010527d:	8d 76 00             	lea    0x0(%esi),%esi
80105280:	83 ec 0c             	sub    $0xc,%esp
80105283:	53                   	push   %ebx
80105284:	e8 a7 c6 ff ff       	call   80101930 <iunlockput>
80105289:	e8 b2 d9 ff ff       	call   80102c40 <end_op>
8010528e:	83 c4 10             	add    $0x10,%esp
80105291:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105296:	eb d7                	jmp    8010526f <sys_chdir+0x6f>
80105298:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010529f:	90                   	nop
801052a0:	e8 9b d9 ff ff       	call   80102c40 <end_op>
801052a5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801052aa:	eb c3                	jmp    8010526f <sys_chdir+0x6f>
801052ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801052b0 <sys_exec>:
801052b0:	55                   	push   %ebp
801052b1:	89 e5                	mov    %esp,%ebp
801052b3:	57                   	push   %edi
801052b4:	56                   	push   %esi
801052b5:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
801052bb:	53                   	push   %ebx
801052bc:	81 ec a4 00 00 00    	sub    $0xa4,%esp
801052c2:	50                   	push   %eax
801052c3:	6a 00                	push   $0x0
801052c5:	e8 46 f5 ff ff       	call   80104810 <argstr>
801052ca:	83 c4 10             	add    $0x10,%esp
801052cd:	85 c0                	test   %eax,%eax
801052cf:	0f 88 87 00 00 00    	js     8010535c <sys_exec+0xac>
801052d5:	83 ec 08             	sub    $0x8,%esp
801052d8:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
801052de:	50                   	push   %eax
801052df:	6a 01                	push   $0x1
801052e1:	e8 7a f4 ff ff       	call   80104760 <argint>
801052e6:	83 c4 10             	add    $0x10,%esp
801052e9:	85 c0                	test   %eax,%eax
801052eb:	78 6f                	js     8010535c <sys_exec+0xac>
801052ed:	83 ec 04             	sub    $0x4,%esp
801052f0:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
801052f6:	31 db                	xor    %ebx,%ebx
801052f8:	68 80 00 00 00       	push   $0x80
801052fd:	8d bd 64 ff ff ff    	lea    -0x9c(%ebp),%edi
80105303:	6a 00                	push   $0x0
80105305:	50                   	push   %eax
80105306:	e8 95 f1 ff ff       	call   801044a0 <memset>
8010530b:	83 c4 10             	add    $0x10,%esp
8010530e:	66 90                	xchg   %ax,%ax
80105310:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
80105316:	8d 34 9d 00 00 00 00 	lea    0x0(,%ebx,4),%esi
8010531d:	83 ec 08             	sub    $0x8,%esp
80105320:	57                   	push   %edi
80105321:	01 f0                	add    %esi,%eax
80105323:	50                   	push   %eax
80105324:	e8 a7 f3 ff ff       	call   801046d0 <fetchint>
80105329:	83 c4 10             	add    $0x10,%esp
8010532c:	85 c0                	test   %eax,%eax
8010532e:	78 2c                	js     8010535c <sys_exec+0xac>
80105330:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
80105336:	85 c0                	test   %eax,%eax
80105338:	74 36                	je     80105370 <sys_exec+0xc0>
8010533a:	8d 8d 68 ff ff ff    	lea    -0x98(%ebp),%ecx
80105340:	83 ec 08             	sub    $0x8,%esp
80105343:	8d 14 31             	lea    (%ecx,%esi,1),%edx
80105346:	52                   	push   %edx
80105347:	50                   	push   %eax
80105348:	e8 c3 f3 ff ff       	call   80104710 <fetchstr>
8010534d:	83 c4 10             	add    $0x10,%esp
80105350:	85 c0                	test   %eax,%eax
80105352:	78 08                	js     8010535c <sys_exec+0xac>
80105354:	83 c3 01             	add    $0x1,%ebx
80105357:	83 fb 20             	cmp    $0x20,%ebx
8010535a:	75 b4                	jne    80105310 <sys_exec+0x60>
8010535c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010535f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105364:	5b                   	pop    %ebx
80105365:	5e                   	pop    %esi
80105366:	5f                   	pop    %edi
80105367:	5d                   	pop    %ebp
80105368:	c3                   	ret    
80105369:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105370:	83 ec 08             	sub    $0x8,%esp
80105373:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
80105379:	c7 84 9d 68 ff ff ff 	movl   $0x0,-0x98(%ebp,%ebx,4)
80105380:	00 00 00 00 
80105384:	50                   	push   %eax
80105385:	ff b5 5c ff ff ff    	pushl  -0xa4(%ebp)
8010538b:	e8 90 b6 ff ff       	call   80100a20 <exec>
80105390:	83 c4 10             	add    $0x10,%esp
80105393:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105396:	5b                   	pop    %ebx
80105397:	5e                   	pop    %esi
80105398:	5f                   	pop    %edi
80105399:	5d                   	pop    %ebp
8010539a:	c3                   	ret    
8010539b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
8010539f:	90                   	nop

801053a0 <sys_pipe>:
801053a0:	55                   	push   %ebp
801053a1:	89 e5                	mov    %esp,%ebp
801053a3:	57                   	push   %edi
801053a4:	56                   	push   %esi
801053a5:	8d 45 dc             	lea    -0x24(%ebp),%eax
801053a8:	53                   	push   %ebx
801053a9:	83 ec 20             	sub    $0x20,%esp
801053ac:	6a 08                	push   $0x8
801053ae:	50                   	push   %eax
801053af:	6a 00                	push   $0x0
801053b1:	e8 fa f3 ff ff       	call   801047b0 <argptr>
801053b6:	83 c4 10             	add    $0x10,%esp
801053b9:	85 c0                	test   %eax,%eax
801053bb:	78 4a                	js     80105407 <sys_pipe+0x67>
801053bd:	83 ec 08             	sub    $0x8,%esp
801053c0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
801053c3:	50                   	push   %eax
801053c4:	8d 45 e0             	lea    -0x20(%ebp),%eax
801053c7:	50                   	push   %eax
801053c8:	e8 a3 de ff ff       	call   80103270 <pipealloc>
801053cd:	83 c4 10             	add    $0x10,%esp
801053d0:	85 c0                	test   %eax,%eax
801053d2:	78 33                	js     80105407 <sys_pipe+0x67>
801053d4:	8b 7d e0             	mov    -0x20(%ebp),%edi
801053d7:	31 db                	xor    %ebx,%ebx
801053d9:	e8 32 e4 ff ff       	call   80103810 <myproc>
801053de:	66 90                	xchg   %ax,%ax
801053e0:	8b 74 98 28          	mov    0x28(%eax,%ebx,4),%esi
801053e4:	85 f6                	test   %esi,%esi
801053e6:	74 28                	je     80105410 <sys_pipe+0x70>
801053e8:	83 c3 01             	add    $0x1,%ebx
801053eb:	83 fb 10             	cmp    $0x10,%ebx
801053ee:	75 f0                	jne    801053e0 <sys_pipe+0x40>
801053f0:	83 ec 0c             	sub    $0xc,%esp
801053f3:	ff 75 e0             	pushl  -0x20(%ebp)
801053f6:	e8 55 ba ff ff       	call   80100e50 <fileclose>
801053fb:	58                   	pop    %eax
801053fc:	ff 75 e4             	pushl  -0x1c(%ebp)
801053ff:	e8 4c ba ff ff       	call   80100e50 <fileclose>
80105404:	83 c4 10             	add    $0x10,%esp
80105407:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010540c:	eb 53                	jmp    80105461 <sys_pipe+0xc1>
8010540e:	66 90                	xchg   %ax,%ax
80105410:	8d 73 08             	lea    0x8(%ebx),%esi
80105413:	89 7c b0 08          	mov    %edi,0x8(%eax,%esi,4)
80105417:	8b 7d e4             	mov    -0x1c(%ebp),%edi
8010541a:	e8 f1 e3 ff ff       	call   80103810 <myproc>
8010541f:	31 d2                	xor    %edx,%edx
80105421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105428:	8b 4c 90 28          	mov    0x28(%eax,%edx,4),%ecx
8010542c:	85 c9                	test   %ecx,%ecx
8010542e:	74 20                	je     80105450 <sys_pipe+0xb0>
80105430:	83 c2 01             	add    $0x1,%edx
80105433:	83 fa 10             	cmp    $0x10,%edx
80105436:	75 f0                	jne    80105428 <sys_pipe+0x88>
80105438:	e8 d3 e3 ff ff       	call   80103810 <myproc>
8010543d:	c7 44 b0 08 00 00 00 	movl   $0x0,0x8(%eax,%esi,4)
80105444:	00 
80105445:	eb a9                	jmp    801053f0 <sys_pipe+0x50>
80105447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010544e:	66 90                	xchg   %ax,%ax
80105450:	89 7c 90 28          	mov    %edi,0x28(%eax,%edx,4)
80105454:	8b 45 dc             	mov    -0x24(%ebp),%eax
80105457:	89 18                	mov    %ebx,(%eax)
80105459:	8b 45 dc             	mov    -0x24(%ebp),%eax
8010545c:	89 50 04             	mov    %edx,0x4(%eax)
8010545f:	31 c0                	xor    %eax,%eax
80105461:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105464:	5b                   	pop    %ebx
80105465:	5e                   	pop    %esi
80105466:	5f                   	pop    %edi
80105467:	5d                   	pop    %ebp
80105468:	c3                   	ret    
80105469:	66 90                	xchg   %ax,%ax
8010546b:	66 90                	xchg   %ax,%ax
8010546d:	66 90                	xchg   %ax,%ax
8010546f:	90                   	nop

80105470 <sys_fork>:
80105470:	e9 3b e5 ff ff       	jmp    801039b0 <fork>
80105475:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010547c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80105480 <sys_exit>:
80105480:	55                   	push   %ebp
80105481:	89 e5                	mov    %esp,%ebp
80105483:	83 ec 08             	sub    $0x8,%esp
80105486:	e8 a5 e7 ff ff       	call   80103c30 <exit>
8010548b:	31 c0                	xor    %eax,%eax
8010548d:	c9                   	leave  
8010548e:	c3                   	ret    
8010548f:	90                   	nop

80105490 <sys_wait>:
80105490:	e9 db e9 ff ff       	jmp    80103e70 <wait>
80105495:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010549c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801054a0 <sys_kill>:
801054a0:	55                   	push   %ebp
801054a1:	89 e5                	mov    %esp,%ebp
801054a3:	83 ec 20             	sub    $0x20,%esp
801054a6:	8d 45 f4             	lea    -0xc(%ebp),%eax
801054a9:	50                   	push   %eax
801054aa:	6a 00                	push   $0x0
801054ac:	e8 af f2 ff ff       	call   80104760 <argint>
801054b1:	83 c4 10             	add    $0x10,%esp
801054b4:	85 c0                	test   %eax,%eax
801054b6:	78 18                	js     801054d0 <sys_kill+0x30>
801054b8:	83 ec 0c             	sub    $0xc,%esp
801054bb:	ff 75 f4             	pushl  -0xc(%ebp)
801054be:	e8 fd ea ff ff       	call   80103fc0 <kill>
801054c3:	83 c4 10             	add    $0x10,%esp
801054c6:	c9                   	leave  
801054c7:	c3                   	ret    
801054c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801054cf:	90                   	nop
801054d0:	c9                   	leave  
801054d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801054d6:	c3                   	ret    
801054d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801054de:	66 90                	xchg   %ax,%ax

801054e0 <sys_getpid>:
801054e0:	55                   	push   %ebp
801054e1:	89 e5                	mov    %esp,%ebp
801054e3:	83 ec 08             	sub    $0x8,%esp
801054e6:	e8 25 e3 ff ff       	call   80103810 <myproc>
801054eb:	8b 40 10             	mov    0x10(%eax),%eax
801054ee:	c9                   	leave  
801054ef:	c3                   	ret    

801054f0 <sys_sbrk>:
801054f0:	55                   	push   %ebp
801054f1:	89 e5                	mov    %esp,%ebp
801054f3:	53                   	push   %ebx
801054f4:	8d 45 f4             	lea    -0xc(%ebp),%eax
801054f7:	83 ec 1c             	sub    $0x1c,%esp
801054fa:	50                   	push   %eax
801054fb:	6a 00                	push   $0x0
801054fd:	e8 5e f2 ff ff       	call   80104760 <argint>
80105502:	83 c4 10             	add    $0x10,%esp
80105505:	85 c0                	test   %eax,%eax
80105507:	78 27                	js     80105530 <sys_sbrk+0x40>
80105509:	e8 02 e3 ff ff       	call   80103810 <myproc>
8010550e:	83 ec 0c             	sub    $0xc,%esp
80105511:	8b 18                	mov    (%eax),%ebx
80105513:	ff 75 f4             	pushl  -0xc(%ebp)
80105516:	e8 15 e4 ff ff       	call   80103930 <growproc>
8010551b:	83 c4 10             	add    $0x10,%esp
8010551e:	85 c0                	test   %eax,%eax
80105520:	78 0e                	js     80105530 <sys_sbrk+0x40>
80105522:	89 d8                	mov    %ebx,%eax
80105524:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105527:	c9                   	leave  
80105528:	c3                   	ret    
80105529:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105530:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80105535:	eb eb                	jmp    80105522 <sys_sbrk+0x32>
80105537:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010553e:	66 90                	xchg   %ax,%ax

80105540 <sys_sleep>:
80105540:	55                   	push   %ebp
80105541:	89 e5                	mov    %esp,%ebp
80105543:	53                   	push   %ebx
80105544:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105547:	83 ec 1c             	sub    $0x1c,%esp
8010554a:	50                   	push   %eax
8010554b:	6a 00                	push   $0x0
8010554d:	e8 0e f2 ff ff       	call   80104760 <argint>
80105552:	83 c4 10             	add    $0x10,%esp
80105555:	85 c0                	test   %eax,%eax
80105557:	0f 88 8a 00 00 00    	js     801055e7 <sys_sleep+0xa7>
8010555d:	83 ec 0c             	sub    $0xc,%esp
80105560:	68 60 4d 11 80       	push   $0x80114d60
80105565:	e8 c6 ed ff ff       	call   80104330 <acquire>
8010556a:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010556d:	8b 1d a0 55 11 80    	mov    0x801155a0,%ebx
80105573:	83 c4 10             	add    $0x10,%esp
80105576:	85 d2                	test   %edx,%edx
80105578:	75 27                	jne    801055a1 <sys_sleep+0x61>
8010557a:	eb 54                	jmp    801055d0 <sys_sleep+0x90>
8010557c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105580:	83 ec 08             	sub    $0x8,%esp
80105583:	68 60 4d 11 80       	push   $0x80114d60
80105588:	68 a0 55 11 80       	push   $0x801155a0
8010558d:	e8 1e e8 ff ff       	call   80103db0 <sleep>
80105592:	a1 a0 55 11 80       	mov    0x801155a0,%eax
80105597:	83 c4 10             	add    $0x10,%esp
8010559a:	29 d8                	sub    %ebx,%eax
8010559c:	3b 45 f4             	cmp    -0xc(%ebp),%eax
8010559f:	73 2f                	jae    801055d0 <sys_sleep+0x90>
801055a1:	e8 6a e2 ff ff       	call   80103810 <myproc>
801055a6:	8b 40 24             	mov    0x24(%eax),%eax
801055a9:	85 c0                	test   %eax,%eax
801055ab:	74 d3                	je     80105580 <sys_sleep+0x40>
801055ad:	83 ec 0c             	sub    $0xc,%esp
801055b0:	68 60 4d 11 80       	push   $0x80114d60
801055b5:	e8 96 ee ff ff       	call   80104450 <release>
801055ba:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801055bd:	83 c4 10             	add    $0x10,%esp
801055c0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801055c5:	c9                   	leave  
801055c6:	c3                   	ret    
801055c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801055ce:	66 90                	xchg   %ax,%ax
801055d0:	83 ec 0c             	sub    $0xc,%esp
801055d3:	68 60 4d 11 80       	push   $0x80114d60
801055d8:	e8 73 ee ff ff       	call   80104450 <release>
801055dd:	83 c4 10             	add    $0x10,%esp
801055e0:	31 c0                	xor    %eax,%eax
801055e2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
801055e5:	c9                   	leave  
801055e6:	c3                   	ret    
801055e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801055ec:	eb f4                	jmp    801055e2 <sys_sleep+0xa2>
801055ee:	66 90                	xchg   %ax,%ax

801055f0 <sys_uptime>:
801055f0:	55                   	push   %ebp
801055f1:	89 e5                	mov    %esp,%ebp
801055f3:	53                   	push   %ebx
801055f4:	83 ec 10             	sub    $0x10,%esp
801055f7:	68 60 4d 11 80       	push   $0x80114d60
801055fc:	e8 2f ed ff ff       	call   80104330 <acquire>
80105601:	8b 1d a0 55 11 80    	mov    0x801155a0,%ebx
80105607:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
8010560e:	e8 3d ee ff ff       	call   80104450 <release>
80105613:	89 d8                	mov    %ebx,%eax
80105615:	8b 5d fc             	mov    -0x4(%ebp),%ebx
80105618:	c9                   	leave  
80105619:	c3                   	ret    
8010561a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80105620 <sys_date>:
80105620:	55                   	push   %ebp
80105621:	89 e5                	mov    %esp,%ebp
80105623:	83 ec 1c             	sub    $0x1c,%esp
80105626:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105629:	6a 18                	push   $0x18
8010562b:	50                   	push   %eax
8010562c:	6a 00                	push   $0x0
8010562e:	e8 7d f1 ff ff       	call   801047b0 <argptr>
80105633:	83 c4 10             	add    $0x10,%esp
80105636:	85 c0                	test   %eax,%eax
80105638:	78 16                	js     80105650 <sys_date+0x30>
8010563a:	83 ec 0c             	sub    $0xc,%esp
8010563d:	ff 75 f4             	pushl  -0xc(%ebp)
80105640:	e8 fb d1 ff ff       	call   80102840 <cmostime>
80105645:	83 c4 10             	add    $0x10,%esp
80105648:	31 c0                	xor    %eax,%eax
8010564a:	c9                   	leave  
8010564b:	c3                   	ret    
8010564c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105650:	c9                   	leave  
80105651:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105656:	c3                   	ret    

80105657 <alltraps>:
80105657:	1e                   	push   %ds
80105658:	06                   	push   %es
80105659:	0f a0                	push   %fs
8010565b:	0f a8                	push   %gs
8010565d:	60                   	pusha  
8010565e:	66 b8 10 00          	mov    $0x10,%ax
80105662:	8e d8                	mov    %eax,%ds
80105664:	8e c0                	mov    %eax,%es
80105666:	54                   	push   %esp
80105667:	e8 c4 00 00 00       	call   80105730 <trap>
8010566c:	83 c4 04             	add    $0x4,%esp

8010566f <trapret>:
8010566f:	61                   	popa   
80105670:	0f a9                	pop    %gs
80105672:	0f a1                	pop    %fs
80105674:	07                   	pop    %es
80105675:	1f                   	pop    %ds
80105676:	83 c4 08             	add    $0x8,%esp
80105679:	cf                   	iret   
8010567a:	66 90                	xchg   %ax,%ax
8010567c:	66 90                	xchg   %ax,%ax
8010567e:	66 90                	xchg   %ax,%ax

80105680 <tvinit>:
80105680:	55                   	push   %ebp
80105681:	31 c0                	xor    %eax,%eax
80105683:	89 e5                	mov    %esp,%ebp
80105685:	83 ec 08             	sub    $0x8,%esp
80105688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010568f:	90                   	nop
80105690:	8b 14 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%edx
80105697:	c7 04 c5 a2 4d 11 80 	movl   $0x8e000008,-0x7feeb25e(,%eax,8)
8010569e:	08 00 00 8e 
801056a2:	66 89 14 c5 a0 4d 11 	mov    %dx,-0x7feeb260(,%eax,8)
801056a9:	80 
801056aa:	c1 ea 10             	shr    $0x10,%edx
801056ad:	66 89 14 c5 a6 4d 11 	mov    %dx,-0x7feeb25a(,%eax,8)
801056b4:	80 
801056b5:	83 c0 01             	add    $0x1,%eax
801056b8:	3d 00 01 00 00       	cmp    $0x100,%eax
801056bd:	75 d1                	jne    80105690 <tvinit+0x10>
801056bf:	83 ec 08             	sub    $0x8,%esp
801056c2:	a1 08 a1 10 80       	mov    0x8010a108,%eax
801056c7:	c7 05 a2 4f 11 80 08 	movl   $0xef000008,0x80114fa2
801056ce:	00 00 ef 
801056d1:	68 7d 76 10 80       	push   $0x8010767d
801056d6:	68 60 4d 11 80       	push   $0x80114d60
801056db:	66 a3 a0 4f 11 80    	mov    %ax,0x80114fa0
801056e1:	c1 e8 10             	shr    $0x10,%eax
801056e4:	66 a3 a6 4f 11 80    	mov    %ax,0x80114fa6
801056ea:	e8 41 eb ff ff       	call   80104230 <initlock>
801056ef:	83 c4 10             	add    $0x10,%esp
801056f2:	c9                   	leave  
801056f3:	c3                   	ret    
801056f4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801056fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801056ff:	90                   	nop

80105700 <idtinit>:
80105700:	55                   	push   %ebp
80105701:	b8 ff 07 00 00       	mov    $0x7ff,%eax
80105706:	89 e5                	mov    %esp,%ebp
80105708:	83 ec 10             	sub    $0x10,%esp
8010570b:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
8010570f:	b8 a0 4d 11 80       	mov    $0x80114da0,%eax
80105714:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
80105718:	c1 e8 10             	shr    $0x10,%eax
8010571b:	66 89 45 fe          	mov    %ax,-0x2(%ebp)
8010571f:	8d 45 fa             	lea    -0x6(%ebp),%eax
80105722:	0f 01 18             	lidtl  (%eax)
80105725:	c9                   	leave  
80105726:	c3                   	ret    
80105727:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010572e:	66 90                	xchg   %ax,%ax

80105730 <trap>:
80105730:	55                   	push   %ebp
80105731:	89 e5                	mov    %esp,%ebp
80105733:	57                   	push   %edi
80105734:	56                   	push   %esi
80105735:	53                   	push   %ebx
80105736:	83 ec 1c             	sub    $0x1c,%esp
80105739:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010573c:	8b 43 30             	mov    0x30(%ebx),%eax
8010573f:	83 f8 40             	cmp    $0x40,%eax
80105742:	0f 84 c0 01 00 00    	je     80105908 <trap+0x1d8>
80105748:	83 e8 20             	sub    $0x20,%eax
8010574b:	83 f8 1f             	cmp    $0x1f,%eax
8010574e:	77 07                	ja     80105757 <trap+0x27>
80105750:	ff 24 85 24 77 10 80 	jmp    *-0x7fef88dc(,%eax,4)
80105757:	e8 b4 e0 ff ff       	call   80103810 <myproc>
8010575c:	8b 7b 38             	mov    0x38(%ebx),%edi
8010575f:	85 c0                	test   %eax,%eax
80105761:	0f 84 f0 01 00 00    	je     80105957 <trap+0x227>
80105767:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
8010576b:	0f 84 e6 01 00 00    	je     80105957 <trap+0x227>
80105771:	0f 20 d1             	mov    %cr2,%ecx
80105774:	89 4d d8             	mov    %ecx,-0x28(%ebp)
80105777:	e8 74 e0 ff ff       	call   801037f0 <cpuid>
8010577c:	8b 73 30             	mov    0x30(%ebx),%esi
8010577f:	89 45 dc             	mov    %eax,-0x24(%ebp)
80105782:	8b 43 34             	mov    0x34(%ebx),%eax
80105785:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105788:	e8 83 e0 ff ff       	call   80103810 <myproc>
8010578d:	89 45 e0             	mov    %eax,-0x20(%ebp)
80105790:	e8 7b e0 ff ff       	call   80103810 <myproc>
80105795:	8b 4d d8             	mov    -0x28(%ebp),%ecx
80105798:	8b 55 dc             	mov    -0x24(%ebp),%edx
8010579b:	51                   	push   %ecx
8010579c:	57                   	push   %edi
8010579d:	52                   	push   %edx
8010579e:	ff 75 e4             	pushl  -0x1c(%ebp)
801057a1:	56                   	push   %esi
801057a2:	8b 75 e0             	mov    -0x20(%ebp),%esi
801057a5:	83 c6 6c             	add    $0x6c,%esi
801057a8:	56                   	push   %esi
801057a9:	ff 70 10             	pushl  0x10(%eax)
801057ac:	68 e0 76 10 80       	push   $0x801076e0
801057b1:	e8 ba ae ff ff       	call   80100670 <cprintf>
801057b6:	83 c4 20             	add    $0x20,%esp
801057b9:	e8 52 e0 ff ff       	call   80103810 <myproc>
801057be:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
801057c5:	e8 46 e0 ff ff       	call   80103810 <myproc>
801057ca:	85 c0                	test   %eax,%eax
801057cc:	74 1d                	je     801057eb <trap+0xbb>
801057ce:	e8 3d e0 ff ff       	call   80103810 <myproc>
801057d3:	8b 50 24             	mov    0x24(%eax),%edx
801057d6:	85 d2                	test   %edx,%edx
801057d8:	74 11                	je     801057eb <trap+0xbb>
801057da:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
801057de:	83 e0 03             	and    $0x3,%eax
801057e1:	66 83 f8 03          	cmp    $0x3,%ax
801057e5:	0f 84 55 01 00 00    	je     80105940 <trap+0x210>
801057eb:	e8 20 e0 ff ff       	call   80103810 <myproc>
801057f0:	85 c0                	test   %eax,%eax
801057f2:	74 0f                	je     80105803 <trap+0xd3>
801057f4:	e8 17 e0 ff ff       	call   80103810 <myproc>
801057f9:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
801057fd:	0f 84 ed 00 00 00    	je     801058f0 <trap+0x1c0>
80105803:	e8 08 e0 ff ff       	call   80103810 <myproc>
80105808:	85 c0                	test   %eax,%eax
8010580a:	74 1d                	je     80105829 <trap+0xf9>
8010580c:	e8 ff df ff ff       	call   80103810 <myproc>
80105811:	8b 40 24             	mov    0x24(%eax),%eax
80105814:	85 c0                	test   %eax,%eax
80105816:	74 11                	je     80105829 <trap+0xf9>
80105818:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
8010581c:	83 e0 03             	and    $0x3,%eax
8010581f:	66 83 f8 03          	cmp    $0x3,%ax
80105823:	0f 84 08 01 00 00    	je     80105931 <trap+0x201>
80105829:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010582c:	5b                   	pop    %ebx
8010582d:	5e                   	pop    %esi
8010582e:	5f                   	pop    %edi
8010582f:	5d                   	pop    %ebp
80105830:	c3                   	ret    
80105831:	e8 6a c8 ff ff       	call   801020a0 <ideintr>
80105836:	e8 45 cf ff ff       	call   80102780 <lapiceoi>
8010583b:	e8 d0 df ff ff       	call   80103810 <myproc>
80105840:	85 c0                	test   %eax,%eax
80105842:	75 8a                	jne    801057ce <trap+0x9e>
80105844:	eb a5                	jmp    801057eb <trap+0xbb>
80105846:	e8 a5 df ff ff       	call   801037f0 <cpuid>
8010584b:	85 c0                	test   %eax,%eax
8010584d:	75 e7                	jne    80105836 <trap+0x106>
8010584f:	83 ec 0c             	sub    $0xc,%esp
80105852:	68 60 4d 11 80       	push   $0x80114d60
80105857:	e8 d4 ea ff ff       	call   80104330 <acquire>
8010585c:	c7 04 24 a0 55 11 80 	movl   $0x801155a0,(%esp)
80105863:	83 05 a0 55 11 80 01 	addl   $0x1,0x801155a0
8010586a:	e8 f1 e6 ff ff       	call   80103f60 <wakeup>
8010586f:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
80105876:	e8 d5 eb ff ff       	call   80104450 <release>
8010587b:	83 c4 10             	add    $0x10,%esp
8010587e:	eb b6                	jmp    80105836 <trap+0x106>
80105880:	e8 bb cd ff ff       	call   80102640 <kbdintr>
80105885:	e8 f6 ce ff ff       	call   80102780 <lapiceoi>
8010588a:	e8 81 df ff ff       	call   80103810 <myproc>
8010588f:	85 c0                	test   %eax,%eax
80105891:	0f 85 37 ff ff ff    	jne    801057ce <trap+0x9e>
80105897:	e9 4f ff ff ff       	jmp    801057eb <trap+0xbb>
8010589c:	e8 4f 02 00 00       	call   80105af0 <uartintr>
801058a1:	e8 da ce ff ff       	call   80102780 <lapiceoi>
801058a6:	e8 65 df ff ff       	call   80103810 <myproc>
801058ab:	85 c0                	test   %eax,%eax
801058ad:	0f 85 1b ff ff ff    	jne    801057ce <trap+0x9e>
801058b3:	e9 33 ff ff ff       	jmp    801057eb <trap+0xbb>
801058b8:	8b 7b 38             	mov    0x38(%ebx),%edi
801058bb:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
801058bf:	e8 2c df ff ff       	call   801037f0 <cpuid>
801058c4:	57                   	push   %edi
801058c5:	56                   	push   %esi
801058c6:	50                   	push   %eax
801058c7:	68 88 76 10 80       	push   $0x80107688
801058cc:	e8 9f ad ff ff       	call   80100670 <cprintf>
801058d1:	e8 aa ce ff ff       	call   80102780 <lapiceoi>
801058d6:	83 c4 10             	add    $0x10,%esp
801058d9:	e8 32 df ff ff       	call   80103810 <myproc>
801058de:	85 c0                	test   %eax,%eax
801058e0:	0f 85 e8 fe ff ff    	jne    801057ce <trap+0x9e>
801058e6:	e9 00 ff ff ff       	jmp    801057eb <trap+0xbb>
801058eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801058ef:	90                   	nop
801058f0:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
801058f4:	0f 85 09 ff ff ff    	jne    80105803 <trap+0xd3>
801058fa:	e8 61 e4 ff ff       	call   80103d60 <yield>
801058ff:	e9 ff fe ff ff       	jmp    80105803 <trap+0xd3>
80105904:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105908:	e8 03 df ff ff       	call   80103810 <myproc>
8010590d:	8b 70 24             	mov    0x24(%eax),%esi
80105910:	85 f6                	test   %esi,%esi
80105912:	75 3c                	jne    80105950 <trap+0x220>
80105914:	e8 f7 de ff ff       	call   80103810 <myproc>
80105919:	89 58 18             	mov    %ebx,0x18(%eax)
8010591c:	e8 2f ef ff ff       	call   80104850 <syscall>
80105921:	e8 ea de ff ff       	call   80103810 <myproc>
80105926:	8b 48 24             	mov    0x24(%eax),%ecx
80105929:	85 c9                	test   %ecx,%ecx
8010592b:	0f 84 f8 fe ff ff    	je     80105829 <trap+0xf9>
80105931:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105934:	5b                   	pop    %ebx
80105935:	5e                   	pop    %esi
80105936:	5f                   	pop    %edi
80105937:	5d                   	pop    %ebp
80105938:	e9 f3 e2 ff ff       	jmp    80103c30 <exit>
8010593d:	8d 76 00             	lea    0x0(%esi),%esi
80105940:	e8 eb e2 ff ff       	call   80103c30 <exit>
80105945:	e9 a1 fe ff ff       	jmp    801057eb <trap+0xbb>
8010594a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105950:	e8 db e2 ff ff       	call   80103c30 <exit>
80105955:	eb bd                	jmp    80105914 <trap+0x1e4>
80105957:	0f 20 d6             	mov    %cr2,%esi
8010595a:	e8 91 de ff ff       	call   801037f0 <cpuid>
8010595f:	83 ec 0c             	sub    $0xc,%esp
80105962:	56                   	push   %esi
80105963:	57                   	push   %edi
80105964:	50                   	push   %eax
80105965:	ff 73 30             	pushl  0x30(%ebx)
80105968:	68 ac 76 10 80       	push   $0x801076ac
8010596d:	e8 fe ac ff ff       	call   80100670 <cprintf>
80105972:	83 c4 14             	add    $0x14,%esp
80105975:	68 82 76 10 80       	push   $0x80107682
8010597a:	e8 21 aa ff ff       	call   801003a0 <panic>
8010597f:	90                   	nop

80105980 <uartgetc>:
80105980:	a1 bc a5 10 80       	mov    0x8010a5bc,%eax
80105985:	85 c0                	test   %eax,%eax
80105987:	74 17                	je     801059a0 <uartgetc+0x20>
80105989:	ba fd 03 00 00       	mov    $0x3fd,%edx
8010598e:	ec                   	in     (%dx),%al
8010598f:	a8 01                	test   $0x1,%al
80105991:	74 0d                	je     801059a0 <uartgetc+0x20>
80105993:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105998:	ec                   	in     (%dx),%al
80105999:	0f b6 c0             	movzbl %al,%eax
8010599c:	c3                   	ret    
8010599d:	8d 76 00             	lea    0x0(%esi),%esi
801059a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801059a5:	c3                   	ret    
801059a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801059ad:	8d 76 00             	lea    0x0(%esi),%esi

801059b0 <uartputc.part.0>:
801059b0:	55                   	push   %ebp
801059b1:	89 e5                	mov    %esp,%ebp
801059b3:	57                   	push   %edi
801059b4:	89 c7                	mov    %eax,%edi
801059b6:	56                   	push   %esi
801059b7:	be fd 03 00 00       	mov    $0x3fd,%esi
801059bc:	53                   	push   %ebx
801059bd:	bb 80 00 00 00       	mov    $0x80,%ebx
801059c2:	83 ec 0c             	sub    $0xc,%esp
801059c5:	eb 1b                	jmp    801059e2 <uartputc.part.0+0x32>
801059c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801059ce:	66 90                	xchg   %ax,%ax
801059d0:	83 ec 0c             	sub    $0xc,%esp
801059d3:	6a 0a                	push   $0xa
801059d5:	e8 c6 cd ff ff       	call   801027a0 <microdelay>
801059da:	83 c4 10             	add    $0x10,%esp
801059dd:	83 eb 01             	sub    $0x1,%ebx
801059e0:	74 07                	je     801059e9 <uartputc.part.0+0x39>
801059e2:	89 f2                	mov    %esi,%edx
801059e4:	ec                   	in     (%dx),%al
801059e5:	a8 20                	test   $0x20,%al
801059e7:	74 e7                	je     801059d0 <uartputc.part.0+0x20>
801059e9:	ba f8 03 00 00       	mov    $0x3f8,%edx
801059ee:	89 f8                	mov    %edi,%eax
801059f0:	ee                   	out    %al,(%dx)
801059f1:	8d 65 f4             	lea    -0xc(%ebp),%esp
801059f4:	5b                   	pop    %ebx
801059f5:	5e                   	pop    %esi
801059f6:	5f                   	pop    %edi
801059f7:	5d                   	pop    %ebp
801059f8:	c3                   	ret    
801059f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105a00 <uartinit>:
80105a00:	55                   	push   %ebp
80105a01:	31 c9                	xor    %ecx,%ecx
80105a03:	89 c8                	mov    %ecx,%eax
80105a05:	89 e5                	mov    %esp,%ebp
80105a07:	57                   	push   %edi
80105a08:	56                   	push   %esi
80105a09:	53                   	push   %ebx
80105a0a:	bb fa 03 00 00       	mov    $0x3fa,%ebx
80105a0f:	89 da                	mov    %ebx,%edx
80105a11:	83 ec 0c             	sub    $0xc,%esp
80105a14:	ee                   	out    %al,(%dx)
80105a15:	bf fb 03 00 00       	mov    $0x3fb,%edi
80105a1a:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
80105a1f:	89 fa                	mov    %edi,%edx
80105a21:	ee                   	out    %al,(%dx)
80105a22:	b8 0c 00 00 00       	mov    $0xc,%eax
80105a27:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105a2c:	ee                   	out    %al,(%dx)
80105a2d:	be f9 03 00 00       	mov    $0x3f9,%esi
80105a32:	89 c8                	mov    %ecx,%eax
80105a34:	89 f2                	mov    %esi,%edx
80105a36:	ee                   	out    %al,(%dx)
80105a37:	b8 03 00 00 00       	mov    $0x3,%eax
80105a3c:	89 fa                	mov    %edi,%edx
80105a3e:	ee                   	out    %al,(%dx)
80105a3f:	ba fc 03 00 00       	mov    $0x3fc,%edx
80105a44:	89 c8                	mov    %ecx,%eax
80105a46:	ee                   	out    %al,(%dx)
80105a47:	b8 01 00 00 00       	mov    $0x1,%eax
80105a4c:	89 f2                	mov    %esi,%edx
80105a4e:	ee                   	out    %al,(%dx)
80105a4f:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105a54:	ec                   	in     (%dx),%al
80105a55:	3c ff                	cmp    $0xff,%al
80105a57:	74 56                	je     80105aaf <uartinit+0xaf>
80105a59:	c7 05 bc a5 10 80 01 	movl   $0x1,0x8010a5bc
80105a60:	00 00 00 
80105a63:	89 da                	mov    %ebx,%edx
80105a65:	ec                   	in     (%dx),%al
80105a66:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105a6b:	ec                   	in     (%dx),%al
80105a6c:	83 ec 08             	sub    $0x8,%esp
80105a6f:	be 76 00 00 00       	mov    $0x76,%esi
80105a74:	bb a4 77 10 80       	mov    $0x801077a4,%ebx
80105a79:	6a 00                	push   $0x0
80105a7b:	6a 04                	push   $0x4
80105a7d:	e8 6e c8 ff ff       	call   801022f0 <ioapicenable>
80105a82:	83 c4 10             	add    $0x10,%esp
80105a85:	b8 78 00 00 00       	mov    $0x78,%eax
80105a8a:	eb 08                	jmp    80105a94 <uartinit+0x94>
80105a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105a90:	0f b6 73 01          	movzbl 0x1(%ebx),%esi
80105a94:	8b 15 bc a5 10 80    	mov    0x8010a5bc,%edx
80105a9a:	85 d2                	test   %edx,%edx
80105a9c:	74 08                	je     80105aa6 <uartinit+0xa6>
80105a9e:	0f be c0             	movsbl %al,%eax
80105aa1:	e8 0a ff ff ff       	call   801059b0 <uartputc.part.0>
80105aa6:	89 f0                	mov    %esi,%eax
80105aa8:	83 c3 01             	add    $0x1,%ebx
80105aab:	84 c0                	test   %al,%al
80105aad:	75 e1                	jne    80105a90 <uartinit+0x90>
80105aaf:	8d 65 f4             	lea    -0xc(%ebp),%esp
80105ab2:	5b                   	pop    %ebx
80105ab3:	5e                   	pop    %esi
80105ab4:	5f                   	pop    %edi
80105ab5:	5d                   	pop    %ebp
80105ab6:	c3                   	ret    
80105ab7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105abe:	66 90                	xchg   %ax,%ax

80105ac0 <uartputc>:
80105ac0:	55                   	push   %ebp
80105ac1:	8b 15 bc a5 10 80    	mov    0x8010a5bc,%edx
80105ac7:	89 e5                	mov    %esp,%ebp
80105ac9:	8b 45 08             	mov    0x8(%ebp),%eax
80105acc:	85 d2                	test   %edx,%edx
80105ace:	74 10                	je     80105ae0 <uartputc+0x20>
80105ad0:	5d                   	pop    %ebp
80105ad1:	e9 da fe ff ff       	jmp    801059b0 <uartputc.part.0>
80105ad6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105add:	8d 76 00             	lea    0x0(%esi),%esi
80105ae0:	5d                   	pop    %ebp
80105ae1:	c3                   	ret    
80105ae2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105ae9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105af0 <uartintr>:
80105af0:	55                   	push   %ebp
80105af1:	89 e5                	mov    %esp,%ebp
80105af3:	83 ec 14             	sub    $0x14,%esp
80105af6:	68 80 59 10 80       	push   $0x80105980
80105afb:	e8 20 ad ff ff       	call   80100820 <consoleintr>
80105b00:	83 c4 10             	add    $0x10,%esp
80105b03:	c9                   	leave  
80105b04:	c3                   	ret    

80105b05 <vector0>:
80105b05:	6a 00                	push   $0x0
80105b07:	6a 00                	push   $0x0
80105b09:	e9 49 fb ff ff       	jmp    80105657 <alltraps>

80105b0e <vector1>:
80105b0e:	6a 00                	push   $0x0
80105b10:	6a 01                	push   $0x1
80105b12:	e9 40 fb ff ff       	jmp    80105657 <alltraps>

80105b17 <vector2>:
80105b17:	6a 00                	push   $0x0
80105b19:	6a 02                	push   $0x2
80105b1b:	e9 37 fb ff ff       	jmp    80105657 <alltraps>

80105b20 <vector3>:
80105b20:	6a 00                	push   $0x0
80105b22:	6a 03                	push   $0x3
80105b24:	e9 2e fb ff ff       	jmp    80105657 <alltraps>

80105b29 <vector4>:
80105b29:	6a 00                	push   $0x0
80105b2b:	6a 04                	push   $0x4
80105b2d:	e9 25 fb ff ff       	jmp    80105657 <alltraps>

80105b32 <vector5>:
80105b32:	6a 00                	push   $0x0
80105b34:	6a 05                	push   $0x5
80105b36:	e9 1c fb ff ff       	jmp    80105657 <alltraps>

80105b3b <vector6>:
80105b3b:	6a 00                	push   $0x0
80105b3d:	6a 06                	push   $0x6
80105b3f:	e9 13 fb ff ff       	jmp    80105657 <alltraps>

80105b44 <vector7>:
80105b44:	6a 00                	push   $0x0
80105b46:	6a 07                	push   $0x7
80105b48:	e9 0a fb ff ff       	jmp    80105657 <alltraps>

80105b4d <vector8>:
80105b4d:	6a 08                	push   $0x8
80105b4f:	e9 03 fb ff ff       	jmp    80105657 <alltraps>

80105b54 <vector9>:
80105b54:	6a 00                	push   $0x0
80105b56:	6a 09                	push   $0x9
80105b58:	e9 fa fa ff ff       	jmp    80105657 <alltraps>

80105b5d <vector10>:
80105b5d:	6a 0a                	push   $0xa
80105b5f:	e9 f3 fa ff ff       	jmp    80105657 <alltraps>

80105b64 <vector11>:
80105b64:	6a 0b                	push   $0xb
80105b66:	e9 ec fa ff ff       	jmp    80105657 <alltraps>

80105b6b <vector12>:
80105b6b:	6a 0c                	push   $0xc
80105b6d:	e9 e5 fa ff ff       	jmp    80105657 <alltraps>

80105b72 <vector13>:
80105b72:	6a 0d                	push   $0xd
80105b74:	e9 de fa ff ff       	jmp    80105657 <alltraps>

80105b79 <vector14>:
80105b79:	6a 0e                	push   $0xe
80105b7b:	e9 d7 fa ff ff       	jmp    80105657 <alltraps>

80105b80 <vector15>:
80105b80:	6a 00                	push   $0x0
80105b82:	6a 0f                	push   $0xf
80105b84:	e9 ce fa ff ff       	jmp    80105657 <alltraps>

80105b89 <vector16>:
80105b89:	6a 00                	push   $0x0
80105b8b:	6a 10                	push   $0x10
80105b8d:	e9 c5 fa ff ff       	jmp    80105657 <alltraps>

80105b92 <vector17>:
80105b92:	6a 11                	push   $0x11
80105b94:	e9 be fa ff ff       	jmp    80105657 <alltraps>

80105b99 <vector18>:
80105b99:	6a 00                	push   $0x0
80105b9b:	6a 12                	push   $0x12
80105b9d:	e9 b5 fa ff ff       	jmp    80105657 <alltraps>

80105ba2 <vector19>:
80105ba2:	6a 00                	push   $0x0
80105ba4:	6a 13                	push   $0x13
80105ba6:	e9 ac fa ff ff       	jmp    80105657 <alltraps>

80105bab <vector20>:
80105bab:	6a 00                	push   $0x0
80105bad:	6a 14                	push   $0x14
80105baf:	e9 a3 fa ff ff       	jmp    80105657 <alltraps>

80105bb4 <vector21>:
80105bb4:	6a 00                	push   $0x0
80105bb6:	6a 15                	push   $0x15
80105bb8:	e9 9a fa ff ff       	jmp    80105657 <alltraps>

80105bbd <vector22>:
80105bbd:	6a 00                	push   $0x0
80105bbf:	6a 16                	push   $0x16
80105bc1:	e9 91 fa ff ff       	jmp    80105657 <alltraps>

80105bc6 <vector23>:
80105bc6:	6a 00                	push   $0x0
80105bc8:	6a 17                	push   $0x17
80105bca:	e9 88 fa ff ff       	jmp    80105657 <alltraps>

80105bcf <vector24>:
80105bcf:	6a 00                	push   $0x0
80105bd1:	6a 18                	push   $0x18
80105bd3:	e9 7f fa ff ff       	jmp    80105657 <alltraps>

80105bd8 <vector25>:
80105bd8:	6a 00                	push   $0x0
80105bda:	6a 19                	push   $0x19
80105bdc:	e9 76 fa ff ff       	jmp    80105657 <alltraps>

80105be1 <vector26>:
80105be1:	6a 00                	push   $0x0
80105be3:	6a 1a                	push   $0x1a
80105be5:	e9 6d fa ff ff       	jmp    80105657 <alltraps>

80105bea <vector27>:
80105bea:	6a 00                	push   $0x0
80105bec:	6a 1b                	push   $0x1b
80105bee:	e9 64 fa ff ff       	jmp    80105657 <alltraps>

80105bf3 <vector28>:
80105bf3:	6a 00                	push   $0x0
80105bf5:	6a 1c                	push   $0x1c
80105bf7:	e9 5b fa ff ff       	jmp    80105657 <alltraps>

80105bfc <vector29>:
80105bfc:	6a 00                	push   $0x0
80105bfe:	6a 1d                	push   $0x1d
80105c00:	e9 52 fa ff ff       	jmp    80105657 <alltraps>

80105c05 <vector30>:
80105c05:	6a 00                	push   $0x0
80105c07:	6a 1e                	push   $0x1e
80105c09:	e9 49 fa ff ff       	jmp    80105657 <alltraps>

80105c0e <vector31>:
80105c0e:	6a 00                	push   $0x0
80105c10:	6a 1f                	push   $0x1f
80105c12:	e9 40 fa ff ff       	jmp    80105657 <alltraps>

80105c17 <vector32>:
80105c17:	6a 00                	push   $0x0
80105c19:	6a 20                	push   $0x20
80105c1b:	e9 37 fa ff ff       	jmp    80105657 <alltraps>

80105c20 <vector33>:
80105c20:	6a 00                	push   $0x0
80105c22:	6a 21                	push   $0x21
80105c24:	e9 2e fa ff ff       	jmp    80105657 <alltraps>

80105c29 <vector34>:
80105c29:	6a 00                	push   $0x0
80105c2b:	6a 22                	push   $0x22
80105c2d:	e9 25 fa ff ff       	jmp    80105657 <alltraps>

80105c32 <vector35>:
80105c32:	6a 00                	push   $0x0
80105c34:	6a 23                	push   $0x23
80105c36:	e9 1c fa ff ff       	jmp    80105657 <alltraps>

80105c3b <vector36>:
80105c3b:	6a 00                	push   $0x0
80105c3d:	6a 24                	push   $0x24
80105c3f:	e9 13 fa ff ff       	jmp    80105657 <alltraps>

80105c44 <vector37>:
80105c44:	6a 00                	push   $0x0
80105c46:	6a 25                	push   $0x25
80105c48:	e9 0a fa ff ff       	jmp    80105657 <alltraps>

80105c4d <vector38>:
80105c4d:	6a 00                	push   $0x0
80105c4f:	6a 26                	push   $0x26
80105c51:	e9 01 fa ff ff       	jmp    80105657 <alltraps>

80105c56 <vector39>:
80105c56:	6a 00                	push   $0x0
80105c58:	6a 27                	push   $0x27
80105c5a:	e9 f8 f9 ff ff       	jmp    80105657 <alltraps>

80105c5f <vector40>:
80105c5f:	6a 00                	push   $0x0
80105c61:	6a 28                	push   $0x28
80105c63:	e9 ef f9 ff ff       	jmp    80105657 <alltraps>

80105c68 <vector41>:
80105c68:	6a 00                	push   $0x0
80105c6a:	6a 29                	push   $0x29
80105c6c:	e9 e6 f9 ff ff       	jmp    80105657 <alltraps>

80105c71 <vector42>:
80105c71:	6a 00                	push   $0x0
80105c73:	6a 2a                	push   $0x2a
80105c75:	e9 dd f9 ff ff       	jmp    80105657 <alltraps>

80105c7a <vector43>:
80105c7a:	6a 00                	push   $0x0
80105c7c:	6a 2b                	push   $0x2b
80105c7e:	e9 d4 f9 ff ff       	jmp    80105657 <alltraps>

80105c83 <vector44>:
80105c83:	6a 00                	push   $0x0
80105c85:	6a 2c                	push   $0x2c
80105c87:	e9 cb f9 ff ff       	jmp    80105657 <alltraps>

80105c8c <vector45>:
80105c8c:	6a 00                	push   $0x0
80105c8e:	6a 2d                	push   $0x2d
80105c90:	e9 c2 f9 ff ff       	jmp    80105657 <alltraps>

80105c95 <vector46>:
80105c95:	6a 00                	push   $0x0
80105c97:	6a 2e                	push   $0x2e
80105c99:	e9 b9 f9 ff ff       	jmp    80105657 <alltraps>

80105c9e <vector47>:
80105c9e:	6a 00                	push   $0x0
80105ca0:	6a 2f                	push   $0x2f
80105ca2:	e9 b0 f9 ff ff       	jmp    80105657 <alltraps>

80105ca7 <vector48>:
80105ca7:	6a 00                	push   $0x0
80105ca9:	6a 30                	push   $0x30
80105cab:	e9 a7 f9 ff ff       	jmp    80105657 <alltraps>

80105cb0 <vector49>:
80105cb0:	6a 00                	push   $0x0
80105cb2:	6a 31                	push   $0x31
80105cb4:	e9 9e f9 ff ff       	jmp    80105657 <alltraps>

80105cb9 <vector50>:
80105cb9:	6a 00                	push   $0x0
80105cbb:	6a 32                	push   $0x32
80105cbd:	e9 95 f9 ff ff       	jmp    80105657 <alltraps>

80105cc2 <vector51>:
80105cc2:	6a 00                	push   $0x0
80105cc4:	6a 33                	push   $0x33
80105cc6:	e9 8c f9 ff ff       	jmp    80105657 <alltraps>

80105ccb <vector52>:
80105ccb:	6a 00                	push   $0x0
80105ccd:	6a 34                	push   $0x34
80105ccf:	e9 83 f9 ff ff       	jmp    80105657 <alltraps>

80105cd4 <vector53>:
80105cd4:	6a 00                	push   $0x0
80105cd6:	6a 35                	push   $0x35
80105cd8:	e9 7a f9 ff ff       	jmp    80105657 <alltraps>

80105cdd <vector54>:
80105cdd:	6a 00                	push   $0x0
80105cdf:	6a 36                	push   $0x36
80105ce1:	e9 71 f9 ff ff       	jmp    80105657 <alltraps>

80105ce6 <vector55>:
80105ce6:	6a 00                	push   $0x0
80105ce8:	6a 37                	push   $0x37
80105cea:	e9 68 f9 ff ff       	jmp    80105657 <alltraps>

80105cef <vector56>:
80105cef:	6a 00                	push   $0x0
80105cf1:	6a 38                	push   $0x38
80105cf3:	e9 5f f9 ff ff       	jmp    80105657 <alltraps>

80105cf8 <vector57>:
80105cf8:	6a 00                	push   $0x0
80105cfa:	6a 39                	push   $0x39
80105cfc:	e9 56 f9 ff ff       	jmp    80105657 <alltraps>

80105d01 <vector58>:
80105d01:	6a 00                	push   $0x0
80105d03:	6a 3a                	push   $0x3a
80105d05:	e9 4d f9 ff ff       	jmp    80105657 <alltraps>

80105d0a <vector59>:
80105d0a:	6a 00                	push   $0x0
80105d0c:	6a 3b                	push   $0x3b
80105d0e:	e9 44 f9 ff ff       	jmp    80105657 <alltraps>

80105d13 <vector60>:
80105d13:	6a 00                	push   $0x0
80105d15:	6a 3c                	push   $0x3c
80105d17:	e9 3b f9 ff ff       	jmp    80105657 <alltraps>

80105d1c <vector61>:
80105d1c:	6a 00                	push   $0x0
80105d1e:	6a 3d                	push   $0x3d
80105d20:	e9 32 f9 ff ff       	jmp    80105657 <alltraps>

80105d25 <vector62>:
80105d25:	6a 00                	push   $0x0
80105d27:	6a 3e                	push   $0x3e
80105d29:	e9 29 f9 ff ff       	jmp    80105657 <alltraps>

80105d2e <vector63>:
80105d2e:	6a 00                	push   $0x0
80105d30:	6a 3f                	push   $0x3f
80105d32:	e9 20 f9 ff ff       	jmp    80105657 <alltraps>

80105d37 <vector64>:
80105d37:	6a 00                	push   $0x0
80105d39:	6a 40                	push   $0x40
80105d3b:	e9 17 f9 ff ff       	jmp    80105657 <alltraps>

80105d40 <vector65>:
80105d40:	6a 00                	push   $0x0
80105d42:	6a 41                	push   $0x41
80105d44:	e9 0e f9 ff ff       	jmp    80105657 <alltraps>

80105d49 <vector66>:
80105d49:	6a 00                	push   $0x0
80105d4b:	6a 42                	push   $0x42
80105d4d:	e9 05 f9 ff ff       	jmp    80105657 <alltraps>

80105d52 <vector67>:
80105d52:	6a 00                	push   $0x0
80105d54:	6a 43                	push   $0x43
80105d56:	e9 fc f8 ff ff       	jmp    80105657 <alltraps>

80105d5b <vector68>:
80105d5b:	6a 00                	push   $0x0
80105d5d:	6a 44                	push   $0x44
80105d5f:	e9 f3 f8 ff ff       	jmp    80105657 <alltraps>

80105d64 <vector69>:
80105d64:	6a 00                	push   $0x0
80105d66:	6a 45                	push   $0x45
80105d68:	e9 ea f8 ff ff       	jmp    80105657 <alltraps>

80105d6d <vector70>:
80105d6d:	6a 00                	push   $0x0
80105d6f:	6a 46                	push   $0x46
80105d71:	e9 e1 f8 ff ff       	jmp    80105657 <alltraps>

80105d76 <vector71>:
80105d76:	6a 00                	push   $0x0
80105d78:	6a 47                	push   $0x47
80105d7a:	e9 d8 f8 ff ff       	jmp    80105657 <alltraps>

80105d7f <vector72>:
80105d7f:	6a 00                	push   $0x0
80105d81:	6a 48                	push   $0x48
80105d83:	e9 cf f8 ff ff       	jmp    80105657 <alltraps>

80105d88 <vector73>:
80105d88:	6a 00                	push   $0x0
80105d8a:	6a 49                	push   $0x49
80105d8c:	e9 c6 f8 ff ff       	jmp    80105657 <alltraps>

80105d91 <vector74>:
80105d91:	6a 00                	push   $0x0
80105d93:	6a 4a                	push   $0x4a
80105d95:	e9 bd f8 ff ff       	jmp    80105657 <alltraps>

80105d9a <vector75>:
80105d9a:	6a 00                	push   $0x0
80105d9c:	6a 4b                	push   $0x4b
80105d9e:	e9 b4 f8 ff ff       	jmp    80105657 <alltraps>

80105da3 <vector76>:
80105da3:	6a 00                	push   $0x0
80105da5:	6a 4c                	push   $0x4c
80105da7:	e9 ab f8 ff ff       	jmp    80105657 <alltraps>

80105dac <vector77>:
80105dac:	6a 00                	push   $0x0
80105dae:	6a 4d                	push   $0x4d
80105db0:	e9 a2 f8 ff ff       	jmp    80105657 <alltraps>

80105db5 <vector78>:
80105db5:	6a 00                	push   $0x0
80105db7:	6a 4e                	push   $0x4e
80105db9:	e9 99 f8 ff ff       	jmp    80105657 <alltraps>

80105dbe <vector79>:
80105dbe:	6a 00                	push   $0x0
80105dc0:	6a 4f                	push   $0x4f
80105dc2:	e9 90 f8 ff ff       	jmp    80105657 <alltraps>

80105dc7 <vector80>:
80105dc7:	6a 00                	push   $0x0
80105dc9:	6a 50                	push   $0x50
80105dcb:	e9 87 f8 ff ff       	jmp    80105657 <alltraps>

80105dd0 <vector81>:
80105dd0:	6a 00                	push   $0x0
80105dd2:	6a 51                	push   $0x51
80105dd4:	e9 7e f8 ff ff       	jmp    80105657 <alltraps>

80105dd9 <vector82>:
80105dd9:	6a 00                	push   $0x0
80105ddb:	6a 52                	push   $0x52
80105ddd:	e9 75 f8 ff ff       	jmp    80105657 <alltraps>

80105de2 <vector83>:
80105de2:	6a 00                	push   $0x0
80105de4:	6a 53                	push   $0x53
80105de6:	e9 6c f8 ff ff       	jmp    80105657 <alltraps>

80105deb <vector84>:
80105deb:	6a 00                	push   $0x0
80105ded:	6a 54                	push   $0x54
80105def:	e9 63 f8 ff ff       	jmp    80105657 <alltraps>

80105df4 <vector85>:
80105df4:	6a 00                	push   $0x0
80105df6:	6a 55                	push   $0x55
80105df8:	e9 5a f8 ff ff       	jmp    80105657 <alltraps>

80105dfd <vector86>:
80105dfd:	6a 00                	push   $0x0
80105dff:	6a 56                	push   $0x56
80105e01:	e9 51 f8 ff ff       	jmp    80105657 <alltraps>

80105e06 <vector87>:
80105e06:	6a 00                	push   $0x0
80105e08:	6a 57                	push   $0x57
80105e0a:	e9 48 f8 ff ff       	jmp    80105657 <alltraps>

80105e0f <vector88>:
80105e0f:	6a 00                	push   $0x0
80105e11:	6a 58                	push   $0x58
80105e13:	e9 3f f8 ff ff       	jmp    80105657 <alltraps>

80105e18 <vector89>:
80105e18:	6a 00                	push   $0x0
80105e1a:	6a 59                	push   $0x59
80105e1c:	e9 36 f8 ff ff       	jmp    80105657 <alltraps>

80105e21 <vector90>:
80105e21:	6a 00                	push   $0x0
80105e23:	6a 5a                	push   $0x5a
80105e25:	e9 2d f8 ff ff       	jmp    80105657 <alltraps>

80105e2a <vector91>:
80105e2a:	6a 00                	push   $0x0
80105e2c:	6a 5b                	push   $0x5b
80105e2e:	e9 24 f8 ff ff       	jmp    80105657 <alltraps>

80105e33 <vector92>:
80105e33:	6a 00                	push   $0x0
80105e35:	6a 5c                	push   $0x5c
80105e37:	e9 1b f8 ff ff       	jmp    80105657 <alltraps>

80105e3c <vector93>:
80105e3c:	6a 00                	push   $0x0
80105e3e:	6a 5d                	push   $0x5d
80105e40:	e9 12 f8 ff ff       	jmp    80105657 <alltraps>

80105e45 <vector94>:
80105e45:	6a 00                	push   $0x0
80105e47:	6a 5e                	push   $0x5e
80105e49:	e9 09 f8 ff ff       	jmp    80105657 <alltraps>

80105e4e <vector95>:
80105e4e:	6a 00                	push   $0x0
80105e50:	6a 5f                	push   $0x5f
80105e52:	e9 00 f8 ff ff       	jmp    80105657 <alltraps>

80105e57 <vector96>:
80105e57:	6a 00                	push   $0x0
80105e59:	6a 60                	push   $0x60
80105e5b:	e9 f7 f7 ff ff       	jmp    80105657 <alltraps>

80105e60 <vector97>:
80105e60:	6a 00                	push   $0x0
80105e62:	6a 61                	push   $0x61
80105e64:	e9 ee f7 ff ff       	jmp    80105657 <alltraps>

80105e69 <vector98>:
80105e69:	6a 00                	push   $0x0
80105e6b:	6a 62                	push   $0x62
80105e6d:	e9 e5 f7 ff ff       	jmp    80105657 <alltraps>

80105e72 <vector99>:
80105e72:	6a 00                	push   $0x0
80105e74:	6a 63                	push   $0x63
80105e76:	e9 dc f7 ff ff       	jmp    80105657 <alltraps>

80105e7b <vector100>:
80105e7b:	6a 00                	push   $0x0
80105e7d:	6a 64                	push   $0x64
80105e7f:	e9 d3 f7 ff ff       	jmp    80105657 <alltraps>

80105e84 <vector101>:
80105e84:	6a 00                	push   $0x0
80105e86:	6a 65                	push   $0x65
80105e88:	e9 ca f7 ff ff       	jmp    80105657 <alltraps>

80105e8d <vector102>:
80105e8d:	6a 00                	push   $0x0
80105e8f:	6a 66                	push   $0x66
80105e91:	e9 c1 f7 ff ff       	jmp    80105657 <alltraps>

80105e96 <vector103>:
80105e96:	6a 00                	push   $0x0
80105e98:	6a 67                	push   $0x67
80105e9a:	e9 b8 f7 ff ff       	jmp    80105657 <alltraps>

80105e9f <vector104>:
80105e9f:	6a 00                	push   $0x0
80105ea1:	6a 68                	push   $0x68
80105ea3:	e9 af f7 ff ff       	jmp    80105657 <alltraps>

80105ea8 <vector105>:
80105ea8:	6a 00                	push   $0x0
80105eaa:	6a 69                	push   $0x69
80105eac:	e9 a6 f7 ff ff       	jmp    80105657 <alltraps>

80105eb1 <vector106>:
80105eb1:	6a 00                	push   $0x0
80105eb3:	6a 6a                	push   $0x6a
80105eb5:	e9 9d f7 ff ff       	jmp    80105657 <alltraps>

80105eba <vector107>:
80105eba:	6a 00                	push   $0x0
80105ebc:	6a 6b                	push   $0x6b
80105ebe:	e9 94 f7 ff ff       	jmp    80105657 <alltraps>

80105ec3 <vector108>:
80105ec3:	6a 00                	push   $0x0
80105ec5:	6a 6c                	push   $0x6c
80105ec7:	e9 8b f7 ff ff       	jmp    80105657 <alltraps>

80105ecc <vector109>:
80105ecc:	6a 00                	push   $0x0
80105ece:	6a 6d                	push   $0x6d
80105ed0:	e9 82 f7 ff ff       	jmp    80105657 <alltraps>

80105ed5 <vector110>:
80105ed5:	6a 00                	push   $0x0
80105ed7:	6a 6e                	push   $0x6e
80105ed9:	e9 79 f7 ff ff       	jmp    80105657 <alltraps>

80105ede <vector111>:
80105ede:	6a 00                	push   $0x0
80105ee0:	6a 6f                	push   $0x6f
80105ee2:	e9 70 f7 ff ff       	jmp    80105657 <alltraps>

80105ee7 <vector112>:
80105ee7:	6a 00                	push   $0x0
80105ee9:	6a 70                	push   $0x70
80105eeb:	e9 67 f7 ff ff       	jmp    80105657 <alltraps>

80105ef0 <vector113>:
80105ef0:	6a 00                	push   $0x0
80105ef2:	6a 71                	push   $0x71
80105ef4:	e9 5e f7 ff ff       	jmp    80105657 <alltraps>

80105ef9 <vector114>:
80105ef9:	6a 00                	push   $0x0
80105efb:	6a 72                	push   $0x72
80105efd:	e9 55 f7 ff ff       	jmp    80105657 <alltraps>

80105f02 <vector115>:
80105f02:	6a 00                	push   $0x0
80105f04:	6a 73                	push   $0x73
80105f06:	e9 4c f7 ff ff       	jmp    80105657 <alltraps>

80105f0b <vector116>:
80105f0b:	6a 00                	push   $0x0
80105f0d:	6a 74                	push   $0x74
80105f0f:	e9 43 f7 ff ff       	jmp    80105657 <alltraps>

80105f14 <vector117>:
80105f14:	6a 00                	push   $0x0
80105f16:	6a 75                	push   $0x75
80105f18:	e9 3a f7 ff ff       	jmp    80105657 <alltraps>

80105f1d <vector118>:
80105f1d:	6a 00                	push   $0x0
80105f1f:	6a 76                	push   $0x76
80105f21:	e9 31 f7 ff ff       	jmp    80105657 <alltraps>

80105f26 <vector119>:
80105f26:	6a 00                	push   $0x0
80105f28:	6a 77                	push   $0x77
80105f2a:	e9 28 f7 ff ff       	jmp    80105657 <alltraps>

80105f2f <vector120>:
80105f2f:	6a 00                	push   $0x0
80105f31:	6a 78                	push   $0x78
80105f33:	e9 1f f7 ff ff       	jmp    80105657 <alltraps>

80105f38 <vector121>:
80105f38:	6a 00                	push   $0x0
80105f3a:	6a 79                	push   $0x79
80105f3c:	e9 16 f7 ff ff       	jmp    80105657 <alltraps>

80105f41 <vector122>:
80105f41:	6a 00                	push   $0x0
80105f43:	6a 7a                	push   $0x7a
80105f45:	e9 0d f7 ff ff       	jmp    80105657 <alltraps>

80105f4a <vector123>:
80105f4a:	6a 00                	push   $0x0
80105f4c:	6a 7b                	push   $0x7b
80105f4e:	e9 04 f7 ff ff       	jmp    80105657 <alltraps>

80105f53 <vector124>:
80105f53:	6a 00                	push   $0x0
80105f55:	6a 7c                	push   $0x7c
80105f57:	e9 fb f6 ff ff       	jmp    80105657 <alltraps>

80105f5c <vector125>:
80105f5c:	6a 00                	push   $0x0
80105f5e:	6a 7d                	push   $0x7d
80105f60:	e9 f2 f6 ff ff       	jmp    80105657 <alltraps>

80105f65 <vector126>:
80105f65:	6a 00                	push   $0x0
80105f67:	6a 7e                	push   $0x7e
80105f69:	e9 e9 f6 ff ff       	jmp    80105657 <alltraps>

80105f6e <vector127>:
80105f6e:	6a 00                	push   $0x0
80105f70:	6a 7f                	push   $0x7f
80105f72:	e9 e0 f6 ff ff       	jmp    80105657 <alltraps>

80105f77 <vector128>:
80105f77:	6a 00                	push   $0x0
80105f79:	68 80 00 00 00       	push   $0x80
80105f7e:	e9 d4 f6 ff ff       	jmp    80105657 <alltraps>

80105f83 <vector129>:
80105f83:	6a 00                	push   $0x0
80105f85:	68 81 00 00 00       	push   $0x81
80105f8a:	e9 c8 f6 ff ff       	jmp    80105657 <alltraps>

80105f8f <vector130>:
80105f8f:	6a 00                	push   $0x0
80105f91:	68 82 00 00 00       	push   $0x82
80105f96:	e9 bc f6 ff ff       	jmp    80105657 <alltraps>

80105f9b <vector131>:
80105f9b:	6a 00                	push   $0x0
80105f9d:	68 83 00 00 00       	push   $0x83
80105fa2:	e9 b0 f6 ff ff       	jmp    80105657 <alltraps>

80105fa7 <vector132>:
80105fa7:	6a 00                	push   $0x0
80105fa9:	68 84 00 00 00       	push   $0x84
80105fae:	e9 a4 f6 ff ff       	jmp    80105657 <alltraps>

80105fb3 <vector133>:
80105fb3:	6a 00                	push   $0x0
80105fb5:	68 85 00 00 00       	push   $0x85
80105fba:	e9 98 f6 ff ff       	jmp    80105657 <alltraps>

80105fbf <vector134>:
80105fbf:	6a 00                	push   $0x0
80105fc1:	68 86 00 00 00       	push   $0x86
80105fc6:	e9 8c f6 ff ff       	jmp    80105657 <alltraps>

80105fcb <vector135>:
80105fcb:	6a 00                	push   $0x0
80105fcd:	68 87 00 00 00       	push   $0x87
80105fd2:	e9 80 f6 ff ff       	jmp    80105657 <alltraps>

80105fd7 <vector136>:
80105fd7:	6a 00                	push   $0x0
80105fd9:	68 88 00 00 00       	push   $0x88
80105fde:	e9 74 f6 ff ff       	jmp    80105657 <alltraps>

80105fe3 <vector137>:
80105fe3:	6a 00                	push   $0x0
80105fe5:	68 89 00 00 00       	push   $0x89
80105fea:	e9 68 f6 ff ff       	jmp    80105657 <alltraps>

80105fef <vector138>:
80105fef:	6a 00                	push   $0x0
80105ff1:	68 8a 00 00 00       	push   $0x8a
80105ff6:	e9 5c f6 ff ff       	jmp    80105657 <alltraps>

80105ffb <vector139>:
80105ffb:	6a 00                	push   $0x0
80105ffd:	68 8b 00 00 00       	push   $0x8b
80106002:	e9 50 f6 ff ff       	jmp    80105657 <alltraps>

80106007 <vector140>:
80106007:	6a 00                	push   $0x0
80106009:	68 8c 00 00 00       	push   $0x8c
8010600e:	e9 44 f6 ff ff       	jmp    80105657 <alltraps>

80106013 <vector141>:
80106013:	6a 00                	push   $0x0
80106015:	68 8d 00 00 00       	push   $0x8d
8010601a:	e9 38 f6 ff ff       	jmp    80105657 <alltraps>

8010601f <vector142>:
8010601f:	6a 00                	push   $0x0
80106021:	68 8e 00 00 00       	push   $0x8e
80106026:	e9 2c f6 ff ff       	jmp    80105657 <alltraps>

8010602b <vector143>:
8010602b:	6a 00                	push   $0x0
8010602d:	68 8f 00 00 00       	push   $0x8f
80106032:	e9 20 f6 ff ff       	jmp    80105657 <alltraps>

80106037 <vector144>:
80106037:	6a 00                	push   $0x0
80106039:	68 90 00 00 00       	push   $0x90
8010603e:	e9 14 f6 ff ff       	jmp    80105657 <alltraps>

80106043 <vector145>:
80106043:	6a 00                	push   $0x0
80106045:	68 91 00 00 00       	push   $0x91
8010604a:	e9 08 f6 ff ff       	jmp    80105657 <alltraps>

8010604f <vector146>:
8010604f:	6a 00                	push   $0x0
80106051:	68 92 00 00 00       	push   $0x92
80106056:	e9 fc f5 ff ff       	jmp    80105657 <alltraps>

8010605b <vector147>:
8010605b:	6a 00                	push   $0x0
8010605d:	68 93 00 00 00       	push   $0x93
80106062:	e9 f0 f5 ff ff       	jmp    80105657 <alltraps>

80106067 <vector148>:
80106067:	6a 00                	push   $0x0
80106069:	68 94 00 00 00       	push   $0x94
8010606e:	e9 e4 f5 ff ff       	jmp    80105657 <alltraps>

80106073 <vector149>:
80106073:	6a 00                	push   $0x0
80106075:	68 95 00 00 00       	push   $0x95
8010607a:	e9 d8 f5 ff ff       	jmp    80105657 <alltraps>

8010607f <vector150>:
8010607f:	6a 00                	push   $0x0
80106081:	68 96 00 00 00       	push   $0x96
80106086:	e9 cc f5 ff ff       	jmp    80105657 <alltraps>

8010608b <vector151>:
8010608b:	6a 00                	push   $0x0
8010608d:	68 97 00 00 00       	push   $0x97
80106092:	e9 c0 f5 ff ff       	jmp    80105657 <alltraps>

80106097 <vector152>:
80106097:	6a 00                	push   $0x0
80106099:	68 98 00 00 00       	push   $0x98
8010609e:	e9 b4 f5 ff ff       	jmp    80105657 <alltraps>

801060a3 <vector153>:
801060a3:	6a 00                	push   $0x0
801060a5:	68 99 00 00 00       	push   $0x99
801060aa:	e9 a8 f5 ff ff       	jmp    80105657 <alltraps>

801060af <vector154>:
801060af:	6a 00                	push   $0x0
801060b1:	68 9a 00 00 00       	push   $0x9a
801060b6:	e9 9c f5 ff ff       	jmp    80105657 <alltraps>

801060bb <vector155>:
801060bb:	6a 00                	push   $0x0
801060bd:	68 9b 00 00 00       	push   $0x9b
801060c2:	e9 90 f5 ff ff       	jmp    80105657 <alltraps>

801060c7 <vector156>:
801060c7:	6a 00                	push   $0x0
801060c9:	68 9c 00 00 00       	push   $0x9c
801060ce:	e9 84 f5 ff ff       	jmp    80105657 <alltraps>

801060d3 <vector157>:
801060d3:	6a 00                	push   $0x0
801060d5:	68 9d 00 00 00       	push   $0x9d
801060da:	e9 78 f5 ff ff       	jmp    80105657 <alltraps>

801060df <vector158>:
801060df:	6a 00                	push   $0x0
801060e1:	68 9e 00 00 00       	push   $0x9e
801060e6:	e9 6c f5 ff ff       	jmp    80105657 <alltraps>

801060eb <vector159>:
801060eb:	6a 00                	push   $0x0
801060ed:	68 9f 00 00 00       	push   $0x9f
801060f2:	e9 60 f5 ff ff       	jmp    80105657 <alltraps>

801060f7 <vector160>:
801060f7:	6a 00                	push   $0x0
801060f9:	68 a0 00 00 00       	push   $0xa0
801060fe:	e9 54 f5 ff ff       	jmp    80105657 <alltraps>

80106103 <vector161>:
80106103:	6a 00                	push   $0x0
80106105:	68 a1 00 00 00       	push   $0xa1
8010610a:	e9 48 f5 ff ff       	jmp    80105657 <alltraps>

8010610f <vector162>:
8010610f:	6a 00                	push   $0x0
80106111:	68 a2 00 00 00       	push   $0xa2
80106116:	e9 3c f5 ff ff       	jmp    80105657 <alltraps>

8010611b <vector163>:
8010611b:	6a 00                	push   $0x0
8010611d:	68 a3 00 00 00       	push   $0xa3
80106122:	e9 30 f5 ff ff       	jmp    80105657 <alltraps>

80106127 <vector164>:
80106127:	6a 00                	push   $0x0
80106129:	68 a4 00 00 00       	push   $0xa4
8010612e:	e9 24 f5 ff ff       	jmp    80105657 <alltraps>

80106133 <vector165>:
80106133:	6a 00                	push   $0x0
80106135:	68 a5 00 00 00       	push   $0xa5
8010613a:	e9 18 f5 ff ff       	jmp    80105657 <alltraps>

8010613f <vector166>:
8010613f:	6a 00                	push   $0x0
80106141:	68 a6 00 00 00       	push   $0xa6
80106146:	e9 0c f5 ff ff       	jmp    80105657 <alltraps>

8010614b <vector167>:
8010614b:	6a 00                	push   $0x0
8010614d:	68 a7 00 00 00       	push   $0xa7
80106152:	e9 00 f5 ff ff       	jmp    80105657 <alltraps>

80106157 <vector168>:
80106157:	6a 00                	push   $0x0
80106159:	68 a8 00 00 00       	push   $0xa8
8010615e:	e9 f4 f4 ff ff       	jmp    80105657 <alltraps>

80106163 <vector169>:
80106163:	6a 00                	push   $0x0
80106165:	68 a9 00 00 00       	push   $0xa9
8010616a:	e9 e8 f4 ff ff       	jmp    80105657 <alltraps>

8010616f <vector170>:
8010616f:	6a 00                	push   $0x0
80106171:	68 aa 00 00 00       	push   $0xaa
80106176:	e9 dc f4 ff ff       	jmp    80105657 <alltraps>

8010617b <vector171>:
8010617b:	6a 00                	push   $0x0
8010617d:	68 ab 00 00 00       	push   $0xab
80106182:	e9 d0 f4 ff ff       	jmp    80105657 <alltraps>

80106187 <vector172>:
80106187:	6a 00                	push   $0x0
80106189:	68 ac 00 00 00       	push   $0xac
8010618e:	e9 c4 f4 ff ff       	jmp    80105657 <alltraps>

80106193 <vector173>:
80106193:	6a 00                	push   $0x0
80106195:	68 ad 00 00 00       	push   $0xad
8010619a:	e9 b8 f4 ff ff       	jmp    80105657 <alltraps>

8010619f <vector174>:
8010619f:	6a 00                	push   $0x0
801061a1:	68 ae 00 00 00       	push   $0xae
801061a6:	e9 ac f4 ff ff       	jmp    80105657 <alltraps>

801061ab <vector175>:
801061ab:	6a 00                	push   $0x0
801061ad:	68 af 00 00 00       	push   $0xaf
801061b2:	e9 a0 f4 ff ff       	jmp    80105657 <alltraps>

801061b7 <vector176>:
801061b7:	6a 00                	push   $0x0
801061b9:	68 b0 00 00 00       	push   $0xb0
801061be:	e9 94 f4 ff ff       	jmp    80105657 <alltraps>

801061c3 <vector177>:
801061c3:	6a 00                	push   $0x0
801061c5:	68 b1 00 00 00       	push   $0xb1
801061ca:	e9 88 f4 ff ff       	jmp    80105657 <alltraps>

801061cf <vector178>:
801061cf:	6a 00                	push   $0x0
801061d1:	68 b2 00 00 00       	push   $0xb2
801061d6:	e9 7c f4 ff ff       	jmp    80105657 <alltraps>

801061db <vector179>:
801061db:	6a 00                	push   $0x0
801061dd:	68 b3 00 00 00       	push   $0xb3
801061e2:	e9 70 f4 ff ff       	jmp    80105657 <alltraps>

801061e7 <vector180>:
801061e7:	6a 00                	push   $0x0
801061e9:	68 b4 00 00 00       	push   $0xb4
801061ee:	e9 64 f4 ff ff       	jmp    80105657 <alltraps>

801061f3 <vector181>:
801061f3:	6a 00                	push   $0x0
801061f5:	68 b5 00 00 00       	push   $0xb5
801061fa:	e9 58 f4 ff ff       	jmp    80105657 <alltraps>

801061ff <vector182>:
801061ff:	6a 00                	push   $0x0
80106201:	68 b6 00 00 00       	push   $0xb6
80106206:	e9 4c f4 ff ff       	jmp    80105657 <alltraps>

8010620b <vector183>:
8010620b:	6a 00                	push   $0x0
8010620d:	68 b7 00 00 00       	push   $0xb7
80106212:	e9 40 f4 ff ff       	jmp    80105657 <alltraps>

80106217 <vector184>:
80106217:	6a 00                	push   $0x0
80106219:	68 b8 00 00 00       	push   $0xb8
8010621e:	e9 34 f4 ff ff       	jmp    80105657 <alltraps>

80106223 <vector185>:
80106223:	6a 00                	push   $0x0
80106225:	68 b9 00 00 00       	push   $0xb9
8010622a:	e9 28 f4 ff ff       	jmp    80105657 <alltraps>

8010622f <vector186>:
8010622f:	6a 00                	push   $0x0
80106231:	68 ba 00 00 00       	push   $0xba
80106236:	e9 1c f4 ff ff       	jmp    80105657 <alltraps>

8010623b <vector187>:
8010623b:	6a 00                	push   $0x0
8010623d:	68 bb 00 00 00       	push   $0xbb
80106242:	e9 10 f4 ff ff       	jmp    80105657 <alltraps>

80106247 <vector188>:
80106247:	6a 00                	push   $0x0
80106249:	68 bc 00 00 00       	push   $0xbc
8010624e:	e9 04 f4 ff ff       	jmp    80105657 <alltraps>

80106253 <vector189>:
80106253:	6a 00                	push   $0x0
80106255:	68 bd 00 00 00       	push   $0xbd
8010625a:	e9 f8 f3 ff ff       	jmp    80105657 <alltraps>

8010625f <vector190>:
8010625f:	6a 00                	push   $0x0
80106261:	68 be 00 00 00       	push   $0xbe
80106266:	e9 ec f3 ff ff       	jmp    80105657 <alltraps>

8010626b <vector191>:
8010626b:	6a 00                	push   $0x0
8010626d:	68 bf 00 00 00       	push   $0xbf
80106272:	e9 e0 f3 ff ff       	jmp    80105657 <alltraps>

80106277 <vector192>:
80106277:	6a 00                	push   $0x0
80106279:	68 c0 00 00 00       	push   $0xc0
8010627e:	e9 d4 f3 ff ff       	jmp    80105657 <alltraps>

80106283 <vector193>:
80106283:	6a 00                	push   $0x0
80106285:	68 c1 00 00 00       	push   $0xc1
8010628a:	e9 c8 f3 ff ff       	jmp    80105657 <alltraps>

8010628f <vector194>:
8010628f:	6a 00                	push   $0x0
80106291:	68 c2 00 00 00       	push   $0xc2
80106296:	e9 bc f3 ff ff       	jmp    80105657 <alltraps>

8010629b <vector195>:
8010629b:	6a 00                	push   $0x0
8010629d:	68 c3 00 00 00       	push   $0xc3
801062a2:	e9 b0 f3 ff ff       	jmp    80105657 <alltraps>

801062a7 <vector196>:
801062a7:	6a 00                	push   $0x0
801062a9:	68 c4 00 00 00       	push   $0xc4
801062ae:	e9 a4 f3 ff ff       	jmp    80105657 <alltraps>

801062b3 <vector197>:
801062b3:	6a 00                	push   $0x0
801062b5:	68 c5 00 00 00       	push   $0xc5
801062ba:	e9 98 f3 ff ff       	jmp    80105657 <alltraps>

801062bf <vector198>:
801062bf:	6a 00                	push   $0x0
801062c1:	68 c6 00 00 00       	push   $0xc6
801062c6:	e9 8c f3 ff ff       	jmp    80105657 <alltraps>

801062cb <vector199>:
801062cb:	6a 00                	push   $0x0
801062cd:	68 c7 00 00 00       	push   $0xc7
801062d2:	e9 80 f3 ff ff       	jmp    80105657 <alltraps>

801062d7 <vector200>:
801062d7:	6a 00                	push   $0x0
801062d9:	68 c8 00 00 00       	push   $0xc8
801062de:	e9 74 f3 ff ff       	jmp    80105657 <alltraps>

801062e3 <vector201>:
801062e3:	6a 00                	push   $0x0
801062e5:	68 c9 00 00 00       	push   $0xc9
801062ea:	e9 68 f3 ff ff       	jmp    80105657 <alltraps>

801062ef <vector202>:
801062ef:	6a 00                	push   $0x0
801062f1:	68 ca 00 00 00       	push   $0xca
801062f6:	e9 5c f3 ff ff       	jmp    80105657 <alltraps>

801062fb <vector203>:
801062fb:	6a 00                	push   $0x0
801062fd:	68 cb 00 00 00       	push   $0xcb
80106302:	e9 50 f3 ff ff       	jmp    80105657 <alltraps>

80106307 <vector204>:
80106307:	6a 00                	push   $0x0
80106309:	68 cc 00 00 00       	push   $0xcc
8010630e:	e9 44 f3 ff ff       	jmp    80105657 <alltraps>

80106313 <vector205>:
80106313:	6a 00                	push   $0x0
80106315:	68 cd 00 00 00       	push   $0xcd
8010631a:	e9 38 f3 ff ff       	jmp    80105657 <alltraps>

8010631f <vector206>:
8010631f:	6a 00                	push   $0x0
80106321:	68 ce 00 00 00       	push   $0xce
80106326:	e9 2c f3 ff ff       	jmp    80105657 <alltraps>

8010632b <vector207>:
8010632b:	6a 00                	push   $0x0
8010632d:	68 cf 00 00 00       	push   $0xcf
80106332:	e9 20 f3 ff ff       	jmp    80105657 <alltraps>

80106337 <vector208>:
80106337:	6a 00                	push   $0x0
80106339:	68 d0 00 00 00       	push   $0xd0
8010633e:	e9 14 f3 ff ff       	jmp    80105657 <alltraps>

80106343 <vector209>:
80106343:	6a 00                	push   $0x0
80106345:	68 d1 00 00 00       	push   $0xd1
8010634a:	e9 08 f3 ff ff       	jmp    80105657 <alltraps>

8010634f <vector210>:
8010634f:	6a 00                	push   $0x0
80106351:	68 d2 00 00 00       	push   $0xd2
80106356:	e9 fc f2 ff ff       	jmp    80105657 <alltraps>

8010635b <vector211>:
8010635b:	6a 00                	push   $0x0
8010635d:	68 d3 00 00 00       	push   $0xd3
80106362:	e9 f0 f2 ff ff       	jmp    80105657 <alltraps>

80106367 <vector212>:
80106367:	6a 00                	push   $0x0
80106369:	68 d4 00 00 00       	push   $0xd4
8010636e:	e9 e4 f2 ff ff       	jmp    80105657 <alltraps>

80106373 <vector213>:
80106373:	6a 00                	push   $0x0
80106375:	68 d5 00 00 00       	push   $0xd5
8010637a:	e9 d8 f2 ff ff       	jmp    80105657 <alltraps>

8010637f <vector214>:
8010637f:	6a 00                	push   $0x0
80106381:	68 d6 00 00 00       	push   $0xd6
80106386:	e9 cc f2 ff ff       	jmp    80105657 <alltraps>

8010638b <vector215>:
8010638b:	6a 00                	push   $0x0
8010638d:	68 d7 00 00 00       	push   $0xd7
80106392:	e9 c0 f2 ff ff       	jmp    80105657 <alltraps>

80106397 <vector216>:
80106397:	6a 00                	push   $0x0
80106399:	68 d8 00 00 00       	push   $0xd8
8010639e:	e9 b4 f2 ff ff       	jmp    80105657 <alltraps>

801063a3 <vector217>:
801063a3:	6a 00                	push   $0x0
801063a5:	68 d9 00 00 00       	push   $0xd9
801063aa:	e9 a8 f2 ff ff       	jmp    80105657 <alltraps>

801063af <vector218>:
801063af:	6a 00                	push   $0x0
801063b1:	68 da 00 00 00       	push   $0xda
801063b6:	e9 9c f2 ff ff       	jmp    80105657 <alltraps>

801063bb <vector219>:
801063bb:	6a 00                	push   $0x0
801063bd:	68 db 00 00 00       	push   $0xdb
801063c2:	e9 90 f2 ff ff       	jmp    80105657 <alltraps>

801063c7 <vector220>:
801063c7:	6a 00                	push   $0x0
801063c9:	68 dc 00 00 00       	push   $0xdc
801063ce:	e9 84 f2 ff ff       	jmp    80105657 <alltraps>

801063d3 <vector221>:
801063d3:	6a 00                	push   $0x0
801063d5:	68 dd 00 00 00       	push   $0xdd
801063da:	e9 78 f2 ff ff       	jmp    80105657 <alltraps>

801063df <vector222>:
801063df:	6a 00                	push   $0x0
801063e1:	68 de 00 00 00       	push   $0xde
801063e6:	e9 6c f2 ff ff       	jmp    80105657 <alltraps>

801063eb <vector223>:
801063eb:	6a 00                	push   $0x0
801063ed:	68 df 00 00 00       	push   $0xdf
801063f2:	e9 60 f2 ff ff       	jmp    80105657 <alltraps>

801063f7 <vector224>:
801063f7:	6a 00                	push   $0x0
801063f9:	68 e0 00 00 00       	push   $0xe0
801063fe:	e9 54 f2 ff ff       	jmp    80105657 <alltraps>

80106403 <vector225>:
80106403:	6a 00                	push   $0x0
80106405:	68 e1 00 00 00       	push   $0xe1
8010640a:	e9 48 f2 ff ff       	jmp    80105657 <alltraps>

8010640f <vector226>:
8010640f:	6a 00                	push   $0x0
80106411:	68 e2 00 00 00       	push   $0xe2
80106416:	e9 3c f2 ff ff       	jmp    80105657 <alltraps>

8010641b <vector227>:
8010641b:	6a 00                	push   $0x0
8010641d:	68 e3 00 00 00       	push   $0xe3
80106422:	e9 30 f2 ff ff       	jmp    80105657 <alltraps>

80106427 <vector228>:
80106427:	6a 00                	push   $0x0
80106429:	68 e4 00 00 00       	push   $0xe4
8010642e:	e9 24 f2 ff ff       	jmp    80105657 <alltraps>

80106433 <vector229>:
80106433:	6a 00                	push   $0x0
80106435:	68 e5 00 00 00       	push   $0xe5
8010643a:	e9 18 f2 ff ff       	jmp    80105657 <alltraps>

8010643f <vector230>:
8010643f:	6a 00                	push   $0x0
80106441:	68 e6 00 00 00       	push   $0xe6
80106446:	e9 0c f2 ff ff       	jmp    80105657 <alltraps>

8010644b <vector231>:
8010644b:	6a 00                	push   $0x0
8010644d:	68 e7 00 00 00       	push   $0xe7
80106452:	e9 00 f2 ff ff       	jmp    80105657 <alltraps>

80106457 <vector232>:
80106457:	6a 00                	push   $0x0
80106459:	68 e8 00 00 00       	push   $0xe8
8010645e:	e9 f4 f1 ff ff       	jmp    80105657 <alltraps>

80106463 <vector233>:
80106463:	6a 00                	push   $0x0
80106465:	68 e9 00 00 00       	push   $0xe9
8010646a:	e9 e8 f1 ff ff       	jmp    80105657 <alltraps>

8010646f <vector234>:
8010646f:	6a 00                	push   $0x0
80106471:	68 ea 00 00 00       	push   $0xea
80106476:	e9 dc f1 ff ff       	jmp    80105657 <alltraps>

8010647b <vector235>:
8010647b:	6a 00                	push   $0x0
8010647d:	68 eb 00 00 00       	push   $0xeb
80106482:	e9 d0 f1 ff ff       	jmp    80105657 <alltraps>

80106487 <vector236>:
80106487:	6a 00                	push   $0x0
80106489:	68 ec 00 00 00       	push   $0xec
8010648e:	e9 c4 f1 ff ff       	jmp    80105657 <alltraps>

80106493 <vector237>:
80106493:	6a 00                	push   $0x0
80106495:	68 ed 00 00 00       	push   $0xed
8010649a:	e9 b8 f1 ff ff       	jmp    80105657 <alltraps>

8010649f <vector238>:
8010649f:	6a 00                	push   $0x0
801064a1:	68 ee 00 00 00       	push   $0xee
801064a6:	e9 ac f1 ff ff       	jmp    80105657 <alltraps>

801064ab <vector239>:
801064ab:	6a 00                	push   $0x0
801064ad:	68 ef 00 00 00       	push   $0xef
801064b2:	e9 a0 f1 ff ff       	jmp    80105657 <alltraps>

801064b7 <vector240>:
801064b7:	6a 00                	push   $0x0
801064b9:	68 f0 00 00 00       	push   $0xf0
801064be:	e9 94 f1 ff ff       	jmp    80105657 <alltraps>

801064c3 <vector241>:
801064c3:	6a 00                	push   $0x0
801064c5:	68 f1 00 00 00       	push   $0xf1
801064ca:	e9 88 f1 ff ff       	jmp    80105657 <alltraps>

801064cf <vector242>:
801064cf:	6a 00                	push   $0x0
801064d1:	68 f2 00 00 00       	push   $0xf2
801064d6:	e9 7c f1 ff ff       	jmp    80105657 <alltraps>

801064db <vector243>:
801064db:	6a 00                	push   $0x0
801064dd:	68 f3 00 00 00       	push   $0xf3
801064e2:	e9 70 f1 ff ff       	jmp    80105657 <alltraps>

801064e7 <vector244>:
801064e7:	6a 00                	push   $0x0
801064e9:	68 f4 00 00 00       	push   $0xf4
801064ee:	e9 64 f1 ff ff       	jmp    80105657 <alltraps>

801064f3 <vector245>:
801064f3:	6a 00                	push   $0x0
801064f5:	68 f5 00 00 00       	push   $0xf5
801064fa:	e9 58 f1 ff ff       	jmp    80105657 <alltraps>

801064ff <vector246>:
801064ff:	6a 00                	push   $0x0
80106501:	68 f6 00 00 00       	push   $0xf6
80106506:	e9 4c f1 ff ff       	jmp    80105657 <alltraps>

8010650b <vector247>:
8010650b:	6a 00                	push   $0x0
8010650d:	68 f7 00 00 00       	push   $0xf7
80106512:	e9 40 f1 ff ff       	jmp    80105657 <alltraps>

80106517 <vector248>:
80106517:	6a 00                	push   $0x0
80106519:	68 f8 00 00 00       	push   $0xf8
8010651e:	e9 34 f1 ff ff       	jmp    80105657 <alltraps>

80106523 <vector249>:
80106523:	6a 00                	push   $0x0
80106525:	68 f9 00 00 00       	push   $0xf9
8010652a:	e9 28 f1 ff ff       	jmp    80105657 <alltraps>

8010652f <vector250>:
8010652f:	6a 00                	push   $0x0
80106531:	68 fa 00 00 00       	push   $0xfa
80106536:	e9 1c f1 ff ff       	jmp    80105657 <alltraps>

8010653b <vector251>:
8010653b:	6a 00                	push   $0x0
8010653d:	68 fb 00 00 00       	push   $0xfb
80106542:	e9 10 f1 ff ff       	jmp    80105657 <alltraps>

80106547 <vector252>:
80106547:	6a 00                	push   $0x0
80106549:	68 fc 00 00 00       	push   $0xfc
8010654e:	e9 04 f1 ff ff       	jmp    80105657 <alltraps>

80106553 <vector253>:
80106553:	6a 00                	push   $0x0
80106555:	68 fd 00 00 00       	push   $0xfd
8010655a:	e9 f8 f0 ff ff       	jmp    80105657 <alltraps>

8010655f <vector254>:
8010655f:	6a 00                	push   $0x0
80106561:	68 fe 00 00 00       	push   $0xfe
80106566:	e9 ec f0 ff ff       	jmp    80105657 <alltraps>

8010656b <vector255>:
8010656b:	6a 00                	push   $0x0
8010656d:	68 ff 00 00 00       	push   $0xff
80106572:	e9 e0 f0 ff ff       	jmp    80105657 <alltraps>
80106577:	66 90                	xchg   %ax,%ax
80106579:	66 90                	xchg   %ax,%ax
8010657b:	66 90                	xchg   %ax,%ax
8010657d:	66 90                	xchg   %ax,%ax
8010657f:	90                   	nop

80106580 <walkpgdir>:
80106580:	55                   	push   %ebp
80106581:	89 e5                	mov    %esp,%ebp
80106583:	57                   	push   %edi
80106584:	56                   	push   %esi
80106585:	89 d6                	mov    %edx,%esi
80106587:	c1 ea 16             	shr    $0x16,%edx
8010658a:	53                   	push   %ebx
8010658b:	8d 3c 90             	lea    (%eax,%edx,4),%edi
8010658e:	83 ec 0c             	sub    $0xc,%esp
80106591:	8b 1f                	mov    (%edi),%ebx
80106593:	f6 c3 01             	test   $0x1,%bl
80106596:	74 28                	je     801065c0 <walkpgdir+0x40>
80106598:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
8010659e:	81 c3 00 00 00 80    	add    $0x80000000,%ebx
801065a4:	89 f0                	mov    %esi,%eax
801065a6:	8d 65 f4             	lea    -0xc(%ebp),%esp
801065a9:	c1 e8 0a             	shr    $0xa,%eax
801065ac:	25 fc 0f 00 00       	and    $0xffc,%eax
801065b1:	01 d8                	add    %ebx,%eax
801065b3:	5b                   	pop    %ebx
801065b4:	5e                   	pop    %esi
801065b5:	5f                   	pop    %edi
801065b6:	5d                   	pop    %ebp
801065b7:	c3                   	ret    
801065b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801065bf:	90                   	nop
801065c0:	85 c9                	test   %ecx,%ecx
801065c2:	74 2c                	je     801065f0 <walkpgdir+0x70>
801065c4:	e8 27 bf ff ff       	call   801024f0 <kalloc>
801065c9:	89 c3                	mov    %eax,%ebx
801065cb:	85 c0                	test   %eax,%eax
801065cd:	74 21                	je     801065f0 <walkpgdir+0x70>
801065cf:	83 ec 04             	sub    $0x4,%esp
801065d2:	68 00 10 00 00       	push   $0x1000
801065d7:	6a 00                	push   $0x0
801065d9:	50                   	push   %eax
801065da:	e8 c1 de ff ff       	call   801044a0 <memset>
801065df:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801065e5:	83 c4 10             	add    $0x10,%esp
801065e8:	83 c8 07             	or     $0x7,%eax
801065eb:	89 07                	mov    %eax,(%edi)
801065ed:	eb b5                	jmp    801065a4 <walkpgdir+0x24>
801065ef:	90                   	nop
801065f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
801065f3:	31 c0                	xor    %eax,%eax
801065f5:	5b                   	pop    %ebx
801065f6:	5e                   	pop    %esi
801065f7:	5f                   	pop    %edi
801065f8:	5d                   	pop    %ebp
801065f9:	c3                   	ret    
801065fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106600 <mappages>:
80106600:	55                   	push   %ebp
80106601:	89 e5                	mov    %esp,%ebp
80106603:	57                   	push   %edi
80106604:	89 c7                	mov    %eax,%edi
80106606:	8d 44 0a ff          	lea    -0x1(%edx,%ecx,1),%eax
8010660a:	56                   	push   %esi
8010660b:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106610:	89 d6                	mov    %edx,%esi
80106612:	53                   	push   %ebx
80106613:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106619:	83 ec 1c             	sub    $0x1c,%esp
8010661c:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010661f:	8b 45 08             	mov    0x8(%ebp),%eax
80106622:	29 f0                	sub    %esi,%eax
80106624:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106627:	eb 1f                	jmp    80106648 <mappages+0x48>
80106629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106630:	f6 00 01             	testb  $0x1,(%eax)
80106633:	75 45                	jne    8010667a <mappages+0x7a>
80106635:	0b 5d 0c             	or     0xc(%ebp),%ebx
80106638:	83 cb 01             	or     $0x1,%ebx
8010663b:	89 18                	mov    %ebx,(%eax)
8010663d:	3b 75 e0             	cmp    -0x20(%ebp),%esi
80106640:	74 2e                	je     80106670 <mappages+0x70>
80106642:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106648:	8b 45 e4             	mov    -0x1c(%ebp),%eax
8010664b:	b9 01 00 00 00       	mov    $0x1,%ecx
80106650:	89 f2                	mov    %esi,%edx
80106652:	8d 1c 06             	lea    (%esi,%eax,1),%ebx
80106655:	89 f8                	mov    %edi,%eax
80106657:	e8 24 ff ff ff       	call   80106580 <walkpgdir>
8010665c:	85 c0                	test   %eax,%eax
8010665e:	75 d0                	jne    80106630 <mappages+0x30>
80106660:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106663:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106668:	5b                   	pop    %ebx
80106669:	5e                   	pop    %esi
8010666a:	5f                   	pop    %edi
8010666b:	5d                   	pop    %ebp
8010666c:	c3                   	ret    
8010666d:	8d 76 00             	lea    0x0(%esi),%esi
80106670:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106673:	31 c0                	xor    %eax,%eax
80106675:	5b                   	pop    %ebx
80106676:	5e                   	pop    %esi
80106677:	5f                   	pop    %edi
80106678:	5d                   	pop    %ebp
80106679:	c3                   	ret    
8010667a:	83 ec 0c             	sub    $0xc,%esp
8010667d:	68 ac 77 10 80       	push   $0x801077ac
80106682:	e8 19 9d ff ff       	call   801003a0 <panic>
80106687:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010668e:	66 90                	xchg   %ax,%ax

80106690 <deallocuvm.part.0>:
80106690:	55                   	push   %ebp
80106691:	89 e5                	mov    %esp,%ebp
80106693:	57                   	push   %edi
80106694:	56                   	push   %esi
80106695:	89 c6                	mov    %eax,%esi
80106697:	53                   	push   %ebx
80106698:	89 d3                	mov    %edx,%ebx
8010669a:	8d 91 ff 0f 00 00    	lea    0xfff(%ecx),%edx
801066a0:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
801066a6:	83 ec 1c             	sub    $0x1c,%esp
801066a9:	89 4d e0             	mov    %ecx,-0x20(%ebp)
801066ac:	39 da                	cmp    %ebx,%edx
801066ae:	73 5b                	jae    8010670b <deallocuvm.part.0+0x7b>
801066b0:	89 5d e4             	mov    %ebx,-0x1c(%ebp)
801066b3:	89 d7                	mov    %edx,%edi
801066b5:	eb 14                	jmp    801066cb <deallocuvm.part.0+0x3b>
801066b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801066be:	66 90                	xchg   %ax,%ax
801066c0:	81 c7 00 10 00 00    	add    $0x1000,%edi
801066c6:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
801066c9:	76 40                	jbe    8010670b <deallocuvm.part.0+0x7b>
801066cb:	31 c9                	xor    %ecx,%ecx
801066cd:	89 fa                	mov    %edi,%edx
801066cf:	89 f0                	mov    %esi,%eax
801066d1:	e8 aa fe ff ff       	call   80106580 <walkpgdir>
801066d6:	89 c3                	mov    %eax,%ebx
801066d8:	85 c0                	test   %eax,%eax
801066da:	74 44                	je     80106720 <deallocuvm.part.0+0x90>
801066dc:	8b 00                	mov    (%eax),%eax
801066de:	a8 01                	test   $0x1,%al
801066e0:	74 de                	je     801066c0 <deallocuvm.part.0+0x30>
801066e2:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801066e7:	74 47                	je     80106730 <deallocuvm.part.0+0xa0>
801066e9:	83 ec 0c             	sub    $0xc,%esp
801066ec:	05 00 00 00 80       	add    $0x80000000,%eax
801066f1:	81 c7 00 10 00 00    	add    $0x1000,%edi
801066f7:	50                   	push   %eax
801066f8:	e8 33 bc ff ff       	call   80102330 <kfree>
801066fd:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80106703:	83 c4 10             	add    $0x10,%esp
80106706:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
80106709:	77 c0                	ja     801066cb <deallocuvm.part.0+0x3b>
8010670b:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010670e:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106711:	5b                   	pop    %ebx
80106712:	5e                   	pop    %esi
80106713:	5f                   	pop    %edi
80106714:	5d                   	pop    %ebp
80106715:	c3                   	ret    
80106716:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010671d:	8d 76 00             	lea    0x0(%esi),%esi
80106720:	89 fa                	mov    %edi,%edx
80106722:	81 e2 00 00 c0 ff    	and    $0xffc00000,%edx
80106728:	8d ba 00 00 40 00    	lea    0x400000(%edx),%edi
8010672e:	eb 96                	jmp    801066c6 <deallocuvm.part.0+0x36>
80106730:	83 ec 0c             	sub    $0xc,%esp
80106733:	68 06 71 10 80       	push   $0x80107106
80106738:	e8 63 9c ff ff       	call   801003a0 <panic>
8010673d:	8d 76 00             	lea    0x0(%esi),%esi

80106740 <seginit>:
80106740:	55                   	push   %ebp
80106741:	89 e5                	mov    %esp,%ebp
80106743:	83 ec 18             	sub    $0x18,%esp
80106746:	e8 a5 d0 ff ff       	call   801037f0 <cpuid>
8010674b:	ba 2f 00 00 00       	mov    $0x2f,%edx
80106750:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80106756:	66 89 55 f2          	mov    %dx,-0xe(%ebp)
8010675a:	c7 80 f8 27 11 80 ff 	movl   $0xffff,-0x7feed808(%eax)
80106761:	ff 00 00 
80106764:	c7 80 fc 27 11 80 00 	movl   $0xcf9a00,-0x7feed804(%eax)
8010676b:	9a cf 00 
8010676e:	c7 80 00 28 11 80 ff 	movl   $0xffff,-0x7feed800(%eax)
80106775:	ff 00 00 
80106778:	c7 80 04 28 11 80 00 	movl   $0xcf9200,-0x7feed7fc(%eax)
8010677f:	92 cf 00 
80106782:	c7 80 08 28 11 80 ff 	movl   $0xffff,-0x7feed7f8(%eax)
80106789:	ff 00 00 
8010678c:	c7 80 0c 28 11 80 00 	movl   $0xcffa00,-0x7feed7f4(%eax)
80106793:	fa cf 00 
80106796:	c7 80 10 28 11 80 ff 	movl   $0xffff,-0x7feed7f0(%eax)
8010679d:	ff 00 00 
801067a0:	c7 80 14 28 11 80 00 	movl   $0xcff200,-0x7feed7ec(%eax)
801067a7:	f2 cf 00 
801067aa:	05 f0 27 11 80       	add    $0x801127f0,%eax
801067af:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
801067b3:	c1 e8 10             	shr    $0x10,%eax
801067b6:	66 89 45 f6          	mov    %ax,-0xa(%ebp)
801067ba:	8d 45 f2             	lea    -0xe(%ebp),%eax
801067bd:	0f 01 10             	lgdtl  (%eax)
801067c0:	c9                   	leave  
801067c1:	c3                   	ret    
801067c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801067c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801067d0 <switchkvm>:
801067d0:	a1 a4 55 11 80       	mov    0x801155a4,%eax
801067d5:	05 00 00 00 80       	add    $0x80000000,%eax
801067da:	0f 22 d8             	mov    %eax,%cr3
801067dd:	c3                   	ret    
801067de:	66 90                	xchg   %ax,%ax

801067e0 <switchuvm>:
801067e0:	55                   	push   %ebp
801067e1:	89 e5                	mov    %esp,%ebp
801067e3:	57                   	push   %edi
801067e4:	56                   	push   %esi
801067e5:	53                   	push   %ebx
801067e6:	83 ec 1c             	sub    $0x1c,%esp
801067e9:	8b 75 08             	mov    0x8(%ebp),%esi
801067ec:	85 f6                	test   %esi,%esi
801067ee:	0f 84 cb 00 00 00    	je     801068bf <switchuvm+0xdf>
801067f4:	8b 46 08             	mov    0x8(%esi),%eax
801067f7:	85 c0                	test   %eax,%eax
801067f9:	0f 84 da 00 00 00    	je     801068d9 <switchuvm+0xf9>
801067ff:	8b 46 04             	mov    0x4(%esi),%eax
80106802:	85 c0                	test   %eax,%eax
80106804:	0f 84 c2 00 00 00    	je     801068cc <switchuvm+0xec>
8010680a:	e8 d1 da ff ff       	call   801042e0 <pushcli>
8010680f:	e8 6c cf ff ff       	call   80103780 <mycpu>
80106814:	89 c3                	mov    %eax,%ebx
80106816:	e8 65 cf ff ff       	call   80103780 <mycpu>
8010681b:	89 c7                	mov    %eax,%edi
8010681d:	e8 5e cf ff ff       	call   80103780 <mycpu>
80106822:	83 c7 08             	add    $0x8,%edi
80106825:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106828:	e8 53 cf ff ff       	call   80103780 <mycpu>
8010682d:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80106830:	ba 67 00 00 00       	mov    $0x67,%edx
80106835:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
8010683c:	83 c0 08             	add    $0x8,%eax
8010683f:	66 89 93 98 00 00 00 	mov    %dx,0x98(%ebx)
80106846:	bf ff ff ff ff       	mov    $0xffffffff,%edi
8010684b:	83 c1 08             	add    $0x8,%ecx
8010684e:	c1 e8 18             	shr    $0x18,%eax
80106851:	c1 e9 10             	shr    $0x10,%ecx
80106854:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
8010685a:	88 8b 9c 00 00 00    	mov    %cl,0x9c(%ebx)
80106860:	b9 99 40 00 00       	mov    $0x4099,%ecx
80106865:	66 89 8b 9d 00 00 00 	mov    %cx,0x9d(%ebx)
8010686c:	bb 10 00 00 00       	mov    $0x10,%ebx
80106871:	e8 0a cf ff ff       	call   80103780 <mycpu>
80106876:	80 a0 9d 00 00 00 ef 	andb   $0xef,0x9d(%eax)
8010687d:	e8 fe ce ff ff       	call   80103780 <mycpu>
80106882:	66 89 58 10          	mov    %bx,0x10(%eax)
80106886:	8b 5e 08             	mov    0x8(%esi),%ebx
80106889:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010688f:	e8 ec ce ff ff       	call   80103780 <mycpu>
80106894:	89 58 0c             	mov    %ebx,0xc(%eax)
80106897:	e8 e4 ce ff ff       	call   80103780 <mycpu>
8010689c:	66 89 78 6e          	mov    %di,0x6e(%eax)
801068a0:	b8 28 00 00 00       	mov    $0x28,%eax
801068a5:	0f 00 d8             	ltr    %ax
801068a8:	8b 46 04             	mov    0x4(%esi),%eax
801068ab:	05 00 00 00 80       	add    $0x80000000,%eax
801068b0:	0f 22 d8             	mov    %eax,%cr3
801068b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
801068b6:	5b                   	pop    %ebx
801068b7:	5e                   	pop    %esi
801068b8:	5f                   	pop    %edi
801068b9:	5d                   	pop    %ebp
801068ba:	e9 31 db ff ff       	jmp    801043f0 <popcli>
801068bf:	83 ec 0c             	sub    $0xc,%esp
801068c2:	68 b2 77 10 80       	push   $0x801077b2
801068c7:	e8 d4 9a ff ff       	call   801003a0 <panic>
801068cc:	83 ec 0c             	sub    $0xc,%esp
801068cf:	68 dd 77 10 80       	push   $0x801077dd
801068d4:	e8 c7 9a ff ff       	call   801003a0 <panic>
801068d9:	83 ec 0c             	sub    $0xc,%esp
801068dc:	68 c8 77 10 80       	push   $0x801077c8
801068e1:	e8 ba 9a ff ff       	call   801003a0 <panic>
801068e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801068ed:	8d 76 00             	lea    0x0(%esi),%esi

801068f0 <inituvm>:
801068f0:	55                   	push   %ebp
801068f1:	89 e5                	mov    %esp,%ebp
801068f3:	57                   	push   %edi
801068f4:	56                   	push   %esi
801068f5:	53                   	push   %ebx
801068f6:	83 ec 1c             	sub    $0x1c,%esp
801068f9:	8b 45 0c             	mov    0xc(%ebp),%eax
801068fc:	8b 75 10             	mov    0x10(%ebp),%esi
801068ff:	8b 7d 08             	mov    0x8(%ebp),%edi
80106902:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106905:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
8010690b:	77 4b                	ja     80106958 <inituvm+0x68>
8010690d:	e8 de bb ff ff       	call   801024f0 <kalloc>
80106912:	83 ec 04             	sub    $0x4,%esp
80106915:	68 00 10 00 00       	push   $0x1000
8010691a:	89 c3                	mov    %eax,%ebx
8010691c:	6a 00                	push   $0x0
8010691e:	50                   	push   %eax
8010691f:	e8 7c db ff ff       	call   801044a0 <memset>
80106924:	58                   	pop    %eax
80106925:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010692b:	5a                   	pop    %edx
8010692c:	6a 06                	push   $0x6
8010692e:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106933:	31 d2                	xor    %edx,%edx
80106935:	50                   	push   %eax
80106936:	89 f8                	mov    %edi,%eax
80106938:	e8 c3 fc ff ff       	call   80106600 <mappages>
8010693d:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106940:	89 75 10             	mov    %esi,0x10(%ebp)
80106943:	83 c4 10             	add    $0x10,%esp
80106946:	89 5d 08             	mov    %ebx,0x8(%ebp)
80106949:	89 45 0c             	mov    %eax,0xc(%ebp)
8010694c:	8d 65 f4             	lea    -0xc(%ebp),%esp
8010694f:	5b                   	pop    %ebx
80106950:	5e                   	pop    %esi
80106951:	5f                   	pop    %edi
80106952:	5d                   	pop    %ebp
80106953:	e9 e8 db ff ff       	jmp    80104540 <memmove>
80106958:	83 ec 0c             	sub    $0xc,%esp
8010695b:	68 f1 77 10 80       	push   $0x801077f1
80106960:	e8 3b 9a ff ff       	call   801003a0 <panic>
80106965:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
8010696c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80106970 <loaduvm>:
80106970:	55                   	push   %ebp
80106971:	89 e5                	mov    %esp,%ebp
80106973:	57                   	push   %edi
80106974:	56                   	push   %esi
80106975:	53                   	push   %ebx
80106976:	83 ec 1c             	sub    $0x1c,%esp
80106979:	8b 45 0c             	mov    0xc(%ebp),%eax
8010697c:	8b 75 18             	mov    0x18(%ebp),%esi
8010697f:	a9 ff 0f 00 00       	test   $0xfff,%eax
80106984:	0f 85 8d 00 00 00    	jne    80106a17 <loaduvm+0xa7>
8010698a:	01 f0                	add    %esi,%eax
8010698c:	89 f3                	mov    %esi,%ebx
8010698e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106991:	8b 45 14             	mov    0x14(%ebp),%eax
80106994:	01 f0                	add    %esi,%eax
80106996:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106999:	85 f6                	test   %esi,%esi
8010699b:	75 11                	jne    801069ae <loaduvm+0x3e>
8010699d:	eb 61                	jmp    80106a00 <loaduvm+0x90>
8010699f:	90                   	nop
801069a0:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
801069a6:	89 f0                	mov    %esi,%eax
801069a8:	29 d8                	sub    %ebx,%eax
801069aa:	39 c6                	cmp    %eax,%esi
801069ac:	76 52                	jbe    80106a00 <loaduvm+0x90>
801069ae:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801069b1:	8b 45 08             	mov    0x8(%ebp),%eax
801069b4:	31 c9                	xor    %ecx,%ecx
801069b6:	29 da                	sub    %ebx,%edx
801069b8:	e8 c3 fb ff ff       	call   80106580 <walkpgdir>
801069bd:	85 c0                	test   %eax,%eax
801069bf:	74 49                	je     80106a0a <loaduvm+0x9a>
801069c1:	8b 00                	mov    (%eax),%eax
801069c3:	8b 4d e0             	mov    -0x20(%ebp),%ecx
801069c6:	bf 00 10 00 00       	mov    $0x1000,%edi
801069cb:	25 00 f0 ff ff       	and    $0xfffff000,%eax
801069d0:	81 fb ff 0f 00 00    	cmp    $0xfff,%ebx
801069d6:	0f 46 fb             	cmovbe %ebx,%edi
801069d9:	29 d9                	sub    %ebx,%ecx
801069db:	05 00 00 00 80       	add    $0x80000000,%eax
801069e0:	57                   	push   %edi
801069e1:	51                   	push   %ecx
801069e2:	50                   	push   %eax
801069e3:	ff 75 10             	pushl  0x10(%ebp)
801069e6:	e8 95 af ff ff       	call   80101980 <readi>
801069eb:	83 c4 10             	add    $0x10,%esp
801069ee:	39 f8                	cmp    %edi,%eax
801069f0:	74 ae                	je     801069a0 <loaduvm+0x30>
801069f2:	8d 65 f4             	lea    -0xc(%ebp),%esp
801069f5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801069fa:	5b                   	pop    %ebx
801069fb:	5e                   	pop    %esi
801069fc:	5f                   	pop    %edi
801069fd:	5d                   	pop    %ebp
801069fe:	c3                   	ret    
801069ff:	90                   	nop
80106a00:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106a03:	31 c0                	xor    %eax,%eax
80106a05:	5b                   	pop    %ebx
80106a06:	5e                   	pop    %esi
80106a07:	5f                   	pop    %edi
80106a08:	5d                   	pop    %ebp
80106a09:	c3                   	ret    
80106a0a:	83 ec 0c             	sub    $0xc,%esp
80106a0d:	68 0b 78 10 80       	push   $0x8010780b
80106a12:	e8 89 99 ff ff       	call   801003a0 <panic>
80106a17:	83 ec 0c             	sub    $0xc,%esp
80106a1a:	68 ac 78 10 80       	push   $0x801078ac
80106a1f:	e8 7c 99 ff ff       	call   801003a0 <panic>
80106a24:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106a2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106a2f:	90                   	nop

80106a30 <allocuvm>:
80106a30:	55                   	push   %ebp
80106a31:	89 e5                	mov    %esp,%ebp
80106a33:	57                   	push   %edi
80106a34:	56                   	push   %esi
80106a35:	53                   	push   %ebx
80106a36:	83 ec 1c             	sub    $0x1c,%esp
80106a39:	8b 45 10             	mov    0x10(%ebp),%eax
80106a3c:	8b 7d 08             	mov    0x8(%ebp),%edi
80106a3f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106a42:	85 c0                	test   %eax,%eax
80106a44:	0f 88 b6 00 00 00    	js     80106b00 <allocuvm+0xd0>
80106a4a:	3b 45 0c             	cmp    0xc(%ebp),%eax
80106a4d:	8b 45 0c             	mov    0xc(%ebp),%eax
80106a50:	0f 82 9a 00 00 00    	jb     80106af0 <allocuvm+0xc0>
80106a56:	8d b0 ff 0f 00 00    	lea    0xfff(%eax),%esi
80106a5c:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
80106a62:	39 75 10             	cmp    %esi,0x10(%ebp)
80106a65:	77 44                	ja     80106aab <allocuvm+0x7b>
80106a67:	e9 87 00 00 00       	jmp    80106af3 <allocuvm+0xc3>
80106a6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106a70:	83 ec 04             	sub    $0x4,%esp
80106a73:	68 00 10 00 00       	push   $0x1000
80106a78:	6a 00                	push   $0x0
80106a7a:	50                   	push   %eax
80106a7b:	e8 20 da ff ff       	call   801044a0 <memset>
80106a80:	58                   	pop    %eax
80106a81:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80106a87:	5a                   	pop    %edx
80106a88:	6a 06                	push   $0x6
80106a8a:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106a8f:	89 f2                	mov    %esi,%edx
80106a91:	50                   	push   %eax
80106a92:	89 f8                	mov    %edi,%eax
80106a94:	e8 67 fb ff ff       	call   80106600 <mappages>
80106a99:	83 c4 10             	add    $0x10,%esp
80106a9c:	85 c0                	test   %eax,%eax
80106a9e:	78 78                	js     80106b18 <allocuvm+0xe8>
80106aa0:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106aa6:	39 75 10             	cmp    %esi,0x10(%ebp)
80106aa9:	76 48                	jbe    80106af3 <allocuvm+0xc3>
80106aab:	e8 40 ba ff ff       	call   801024f0 <kalloc>
80106ab0:	89 c3                	mov    %eax,%ebx
80106ab2:	85 c0                	test   %eax,%eax
80106ab4:	75 ba                	jne    80106a70 <allocuvm+0x40>
80106ab6:	83 ec 0c             	sub    $0xc,%esp
80106ab9:	68 29 78 10 80       	push   $0x80107829
80106abe:	e8 ad 9b ff ff       	call   80100670 <cprintf>
80106ac3:	8b 45 0c             	mov    0xc(%ebp),%eax
80106ac6:	83 c4 10             	add    $0x10,%esp
80106ac9:	39 45 10             	cmp    %eax,0x10(%ebp)
80106acc:	74 32                	je     80106b00 <allocuvm+0xd0>
80106ace:	8b 55 10             	mov    0x10(%ebp),%edx
80106ad1:	89 c1                	mov    %eax,%ecx
80106ad3:	89 f8                	mov    %edi,%eax
80106ad5:	e8 b6 fb ff ff       	call   80106690 <deallocuvm.part.0>
80106ada:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106ae1:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106ae4:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106ae7:	5b                   	pop    %ebx
80106ae8:	5e                   	pop    %esi
80106ae9:	5f                   	pop    %edi
80106aea:	5d                   	pop    %ebp
80106aeb:	c3                   	ret    
80106aec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106af0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106af3:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106af6:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106af9:	5b                   	pop    %ebx
80106afa:	5e                   	pop    %esi
80106afb:	5f                   	pop    %edi
80106afc:	5d                   	pop    %ebp
80106afd:	c3                   	ret    
80106afe:	66 90                	xchg   %ax,%ax
80106b00:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106b07:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106b0a:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106b0d:	5b                   	pop    %ebx
80106b0e:	5e                   	pop    %esi
80106b0f:	5f                   	pop    %edi
80106b10:	5d                   	pop    %ebp
80106b11:	c3                   	ret    
80106b12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80106b18:	83 ec 0c             	sub    $0xc,%esp
80106b1b:	68 41 78 10 80       	push   $0x80107841
80106b20:	e8 4b 9b ff ff       	call   80100670 <cprintf>
80106b25:	8b 45 0c             	mov    0xc(%ebp),%eax
80106b28:	83 c4 10             	add    $0x10,%esp
80106b2b:	39 45 10             	cmp    %eax,0x10(%ebp)
80106b2e:	74 0c                	je     80106b3c <allocuvm+0x10c>
80106b30:	8b 55 10             	mov    0x10(%ebp),%edx
80106b33:	89 c1                	mov    %eax,%ecx
80106b35:	89 f8                	mov    %edi,%eax
80106b37:	e8 54 fb ff ff       	call   80106690 <deallocuvm.part.0>
80106b3c:	83 ec 0c             	sub    $0xc,%esp
80106b3f:	53                   	push   %ebx
80106b40:	e8 eb b7 ff ff       	call   80102330 <kfree>
80106b45:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80106b4c:	83 c4 10             	add    $0x10,%esp
80106b4f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106b52:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106b55:	5b                   	pop    %ebx
80106b56:	5e                   	pop    %esi
80106b57:	5f                   	pop    %edi
80106b58:	5d                   	pop    %ebp
80106b59:	c3                   	ret    
80106b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106b60 <deallocuvm>:
80106b60:	55                   	push   %ebp
80106b61:	89 e5                	mov    %esp,%ebp
80106b63:	8b 55 0c             	mov    0xc(%ebp),%edx
80106b66:	8b 4d 10             	mov    0x10(%ebp),%ecx
80106b69:	8b 45 08             	mov    0x8(%ebp),%eax
80106b6c:	39 d1                	cmp    %edx,%ecx
80106b6e:	73 10                	jae    80106b80 <deallocuvm+0x20>
80106b70:	5d                   	pop    %ebp
80106b71:	e9 1a fb ff ff       	jmp    80106690 <deallocuvm.part.0>
80106b76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106b7d:	8d 76 00             	lea    0x0(%esi),%esi
80106b80:	89 d0                	mov    %edx,%eax
80106b82:	5d                   	pop    %ebp
80106b83:	c3                   	ret    
80106b84:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106b8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106b8f:	90                   	nop

80106b90 <freevm>:
80106b90:	55                   	push   %ebp
80106b91:	89 e5                	mov    %esp,%ebp
80106b93:	57                   	push   %edi
80106b94:	56                   	push   %esi
80106b95:	53                   	push   %ebx
80106b96:	83 ec 0c             	sub    $0xc,%esp
80106b99:	8b 75 08             	mov    0x8(%ebp),%esi
80106b9c:	85 f6                	test   %esi,%esi
80106b9e:	74 59                	je     80106bf9 <freevm+0x69>
80106ba0:	31 c9                	xor    %ecx,%ecx
80106ba2:	ba 00 00 00 80       	mov    $0x80000000,%edx
80106ba7:	89 f0                	mov    %esi,%eax
80106ba9:	89 f3                	mov    %esi,%ebx
80106bab:	e8 e0 fa ff ff       	call   80106690 <deallocuvm.part.0>
80106bb0:	8d be 00 10 00 00    	lea    0x1000(%esi),%edi
80106bb6:	eb 0f                	jmp    80106bc7 <freevm+0x37>
80106bb8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106bbf:	90                   	nop
80106bc0:	83 c3 04             	add    $0x4,%ebx
80106bc3:	39 df                	cmp    %ebx,%edi
80106bc5:	74 23                	je     80106bea <freevm+0x5a>
80106bc7:	8b 03                	mov    (%ebx),%eax
80106bc9:	a8 01                	test   $0x1,%al
80106bcb:	74 f3                	je     80106bc0 <freevm+0x30>
80106bcd:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106bd2:	83 ec 0c             	sub    $0xc,%esp
80106bd5:	83 c3 04             	add    $0x4,%ebx
80106bd8:	05 00 00 00 80       	add    $0x80000000,%eax
80106bdd:	50                   	push   %eax
80106bde:	e8 4d b7 ff ff       	call   80102330 <kfree>
80106be3:	83 c4 10             	add    $0x10,%esp
80106be6:	39 df                	cmp    %ebx,%edi
80106be8:	75 dd                	jne    80106bc7 <freevm+0x37>
80106bea:	89 75 08             	mov    %esi,0x8(%ebp)
80106bed:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106bf0:	5b                   	pop    %ebx
80106bf1:	5e                   	pop    %esi
80106bf2:	5f                   	pop    %edi
80106bf3:	5d                   	pop    %ebp
80106bf4:	e9 37 b7 ff ff       	jmp    80102330 <kfree>
80106bf9:	83 ec 0c             	sub    $0xc,%esp
80106bfc:	68 5d 78 10 80       	push   $0x8010785d
80106c01:	e8 9a 97 ff ff       	call   801003a0 <panic>
80106c06:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106c0d:	8d 76 00             	lea    0x0(%esi),%esi

80106c10 <setupkvm>:
80106c10:	55                   	push   %ebp
80106c11:	89 e5                	mov    %esp,%ebp
80106c13:	56                   	push   %esi
80106c14:	53                   	push   %ebx
80106c15:	e8 d6 b8 ff ff       	call   801024f0 <kalloc>
80106c1a:	89 c6                	mov    %eax,%esi
80106c1c:	85 c0                	test   %eax,%eax
80106c1e:	74 42                	je     80106c62 <setupkvm+0x52>
80106c20:	83 ec 04             	sub    $0x4,%esp
80106c23:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
80106c28:	68 00 10 00 00       	push   $0x1000
80106c2d:	6a 00                	push   $0x0
80106c2f:	50                   	push   %eax
80106c30:	e8 6b d8 ff ff       	call   801044a0 <memset>
80106c35:	83 c4 10             	add    $0x10,%esp
80106c38:	8b 43 04             	mov    0x4(%ebx),%eax
80106c3b:	83 ec 08             	sub    $0x8,%esp
80106c3e:	8b 4b 08             	mov    0x8(%ebx),%ecx
80106c41:	ff 73 0c             	pushl  0xc(%ebx)
80106c44:	8b 13                	mov    (%ebx),%edx
80106c46:	50                   	push   %eax
80106c47:	29 c1                	sub    %eax,%ecx
80106c49:	89 f0                	mov    %esi,%eax
80106c4b:	e8 b0 f9 ff ff       	call   80106600 <mappages>
80106c50:	83 c4 10             	add    $0x10,%esp
80106c53:	85 c0                	test   %eax,%eax
80106c55:	78 19                	js     80106c70 <setupkvm+0x60>
80106c57:	83 c3 10             	add    $0x10,%ebx
80106c5a:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
80106c60:	75 d6                	jne    80106c38 <setupkvm+0x28>
80106c62:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106c65:	89 f0                	mov    %esi,%eax
80106c67:	5b                   	pop    %ebx
80106c68:	5e                   	pop    %esi
80106c69:	5d                   	pop    %ebp
80106c6a:	c3                   	ret    
80106c6b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106c6f:	90                   	nop
80106c70:	83 ec 0c             	sub    $0xc,%esp
80106c73:	56                   	push   %esi
80106c74:	31 f6                	xor    %esi,%esi
80106c76:	e8 15 ff ff ff       	call   80106b90 <freevm>
80106c7b:	83 c4 10             	add    $0x10,%esp
80106c7e:	8d 65 f8             	lea    -0x8(%ebp),%esp
80106c81:	89 f0                	mov    %esi,%eax
80106c83:	5b                   	pop    %ebx
80106c84:	5e                   	pop    %esi
80106c85:	5d                   	pop    %ebp
80106c86:	c3                   	ret    
80106c87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106c8e:	66 90                	xchg   %ax,%ax

80106c90 <kvmalloc>:
80106c90:	55                   	push   %ebp
80106c91:	89 e5                	mov    %esp,%ebp
80106c93:	83 ec 08             	sub    $0x8,%esp
80106c96:	e8 75 ff ff ff       	call   80106c10 <setupkvm>
80106c9b:	a3 a4 55 11 80       	mov    %eax,0x801155a4
80106ca0:	05 00 00 00 80       	add    $0x80000000,%eax
80106ca5:	0f 22 d8             	mov    %eax,%cr3
80106ca8:	c9                   	leave  
80106ca9:	c3                   	ret    
80106caa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106cb0 <clearpteu>:
80106cb0:	55                   	push   %ebp
80106cb1:	31 c9                	xor    %ecx,%ecx
80106cb3:	89 e5                	mov    %esp,%ebp
80106cb5:	83 ec 08             	sub    $0x8,%esp
80106cb8:	8b 55 0c             	mov    0xc(%ebp),%edx
80106cbb:	8b 45 08             	mov    0x8(%ebp),%eax
80106cbe:	e8 bd f8 ff ff       	call   80106580 <walkpgdir>
80106cc3:	85 c0                	test   %eax,%eax
80106cc5:	74 05                	je     80106ccc <clearpteu+0x1c>
80106cc7:	83 20 fb             	andl   $0xfffffffb,(%eax)
80106cca:	c9                   	leave  
80106ccb:	c3                   	ret    
80106ccc:	83 ec 0c             	sub    $0xc,%esp
80106ccf:	68 6e 78 10 80       	push   $0x8010786e
80106cd4:	e8 c7 96 ff ff       	call   801003a0 <panic>
80106cd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106ce0 <copyuvm>:
80106ce0:	55                   	push   %ebp
80106ce1:	89 e5                	mov    %esp,%ebp
80106ce3:	57                   	push   %edi
80106ce4:	56                   	push   %esi
80106ce5:	53                   	push   %ebx
80106ce6:	83 ec 1c             	sub    $0x1c,%esp
80106ce9:	e8 22 ff ff ff       	call   80106c10 <setupkvm>
80106cee:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106cf1:	85 c0                	test   %eax,%eax
80106cf3:	0f 84 a0 00 00 00    	je     80106d99 <copyuvm+0xb9>
80106cf9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80106cfc:	85 c9                	test   %ecx,%ecx
80106cfe:	0f 84 95 00 00 00    	je     80106d99 <copyuvm+0xb9>
80106d04:	31 f6                	xor    %esi,%esi
80106d06:	eb 4e                	jmp    80106d56 <copyuvm+0x76>
80106d08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106d0f:	90                   	nop
80106d10:	83 ec 04             	sub    $0x4,%esp
80106d13:	81 c7 00 00 00 80    	add    $0x80000000,%edi
80106d19:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80106d1c:	68 00 10 00 00       	push   $0x1000
80106d21:	57                   	push   %edi
80106d22:	50                   	push   %eax
80106d23:	e8 18 d8 ff ff       	call   80104540 <memmove>
80106d28:	58                   	pop    %eax
80106d29:	5a                   	pop    %edx
80106d2a:	53                   	push   %ebx
80106d2b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80106d2e:	8b 45 e0             	mov    -0x20(%ebp),%eax
80106d31:	b9 00 10 00 00       	mov    $0x1000,%ecx
80106d36:	81 c2 00 00 00 80    	add    $0x80000000,%edx
80106d3c:	52                   	push   %edx
80106d3d:	89 f2                	mov    %esi,%edx
80106d3f:	e8 bc f8 ff ff       	call   80106600 <mappages>
80106d44:	83 c4 10             	add    $0x10,%esp
80106d47:	85 c0                	test   %eax,%eax
80106d49:	78 39                	js     80106d84 <copyuvm+0xa4>
80106d4b:	81 c6 00 10 00 00    	add    $0x1000,%esi
80106d51:	39 75 0c             	cmp    %esi,0xc(%ebp)
80106d54:	76 43                	jbe    80106d99 <copyuvm+0xb9>
80106d56:	8b 45 08             	mov    0x8(%ebp),%eax
80106d59:	31 c9                	xor    %ecx,%ecx
80106d5b:	89 f2                	mov    %esi,%edx
80106d5d:	e8 1e f8 ff ff       	call   80106580 <walkpgdir>
80106d62:	85 c0                	test   %eax,%eax
80106d64:	74 3e                	je     80106da4 <copyuvm+0xc4>
80106d66:	8b 18                	mov    (%eax),%ebx
80106d68:	f6 c3 01             	test   $0x1,%bl
80106d6b:	74 44                	je     80106db1 <copyuvm+0xd1>
80106d6d:	89 df                	mov    %ebx,%edi
80106d6f:	81 e3 ff 0f 00 00    	and    $0xfff,%ebx
80106d75:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80106d7b:	e8 70 b7 ff ff       	call   801024f0 <kalloc>
80106d80:	85 c0                	test   %eax,%eax
80106d82:	75 8c                	jne    80106d10 <copyuvm+0x30>
80106d84:	83 ec 0c             	sub    $0xc,%esp
80106d87:	ff 75 e0             	pushl  -0x20(%ebp)
80106d8a:	e8 01 fe ff ff       	call   80106b90 <freevm>
80106d8f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
80106d96:	83 c4 10             	add    $0x10,%esp
80106d99:	8b 45 e0             	mov    -0x20(%ebp),%eax
80106d9c:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106d9f:	5b                   	pop    %ebx
80106da0:	5e                   	pop    %esi
80106da1:	5f                   	pop    %edi
80106da2:	5d                   	pop    %ebp
80106da3:	c3                   	ret    
80106da4:	83 ec 0c             	sub    $0xc,%esp
80106da7:	68 78 78 10 80       	push   $0x80107878
80106dac:	e8 ef 95 ff ff       	call   801003a0 <panic>
80106db1:	83 ec 0c             	sub    $0xc,%esp
80106db4:	68 92 78 10 80       	push   $0x80107892
80106db9:	e8 e2 95 ff ff       	call   801003a0 <panic>
80106dbe:	66 90                	xchg   %ax,%ax

80106dc0 <uva2ka>:
80106dc0:	55                   	push   %ebp
80106dc1:	31 c9                	xor    %ecx,%ecx
80106dc3:	89 e5                	mov    %esp,%ebp
80106dc5:	83 ec 08             	sub    $0x8,%esp
80106dc8:	8b 55 0c             	mov    0xc(%ebp),%edx
80106dcb:	8b 45 08             	mov    0x8(%ebp),%eax
80106dce:	e8 ad f7 ff ff       	call   80106580 <walkpgdir>
80106dd3:	8b 00                	mov    (%eax),%eax
80106dd5:	c9                   	leave  
80106dd6:	89 c2                	mov    %eax,%edx
80106dd8:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106ddd:	83 e2 05             	and    $0x5,%edx
80106de0:	05 00 00 00 80       	add    $0x80000000,%eax
80106de5:	83 fa 05             	cmp    $0x5,%edx
80106de8:	ba 00 00 00 00       	mov    $0x0,%edx
80106ded:	0f 45 c2             	cmovne %edx,%eax
80106df0:	c3                   	ret    
80106df1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106df8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106dff:	90                   	nop

80106e00 <copyout>:
80106e00:	55                   	push   %ebp
80106e01:	89 e5                	mov    %esp,%ebp
80106e03:	57                   	push   %edi
80106e04:	56                   	push   %esi
80106e05:	53                   	push   %ebx
80106e06:	83 ec 0c             	sub    $0xc,%esp
80106e09:	8b 75 14             	mov    0x14(%ebp),%esi
80106e0c:	8b 55 0c             	mov    0xc(%ebp),%edx
80106e0f:	85 f6                	test   %esi,%esi
80106e11:	75 38                	jne    80106e4b <copyout+0x4b>
80106e13:	eb 6b                	jmp    80106e80 <copyout+0x80>
80106e15:	8d 76 00             	lea    0x0(%esi),%esi
80106e18:	8b 55 0c             	mov    0xc(%ebp),%edx
80106e1b:	89 fb                	mov    %edi,%ebx
80106e1d:	29 d3                	sub    %edx,%ebx
80106e1f:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106e25:	39 f3                	cmp    %esi,%ebx
80106e27:	0f 47 de             	cmova  %esi,%ebx
80106e2a:	29 fa                	sub    %edi,%edx
80106e2c:	83 ec 04             	sub    $0x4,%esp
80106e2f:	01 c2                	add    %eax,%edx
80106e31:	53                   	push   %ebx
80106e32:	ff 75 10             	pushl  0x10(%ebp)
80106e35:	52                   	push   %edx
80106e36:	e8 05 d7 ff ff       	call   80104540 <memmove>
80106e3b:	01 5d 10             	add    %ebx,0x10(%ebp)
80106e3e:	8d 97 00 10 00 00    	lea    0x1000(%edi),%edx
80106e44:	83 c4 10             	add    $0x10,%esp
80106e47:	29 de                	sub    %ebx,%esi
80106e49:	74 35                	je     80106e80 <copyout+0x80>
80106e4b:	89 d7                	mov    %edx,%edi
80106e4d:	83 ec 08             	sub    $0x8,%esp
80106e50:	89 55 0c             	mov    %edx,0xc(%ebp)
80106e53:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
80106e59:	57                   	push   %edi
80106e5a:	ff 75 08             	pushl  0x8(%ebp)
80106e5d:	e8 5e ff ff ff       	call   80106dc0 <uva2ka>
80106e62:	83 c4 10             	add    $0x10,%esp
80106e65:	85 c0                	test   %eax,%eax
80106e67:	75 af                	jne    80106e18 <copyout+0x18>
80106e69:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106e6c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80106e71:	5b                   	pop    %ebx
80106e72:	5e                   	pop    %esi
80106e73:	5f                   	pop    %edi
80106e74:	5d                   	pop    %ebp
80106e75:	c3                   	ret    
80106e76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106e7d:	8d 76 00             	lea    0x0(%esi),%esi
80106e80:	8d 65 f4             	lea    -0xc(%ebp),%esp
80106e83:	31 c0                	xor    %eax,%eax
80106e85:	5b                   	pop    %ebx
80106e86:	5e                   	pop    %esi
80106e87:	5f                   	pop    %edi
80106e88:	5d                   	pop    %ebp
80106e89:	c3                   	ret    
